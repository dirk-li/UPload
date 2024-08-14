using log4net;
using LogParserAndTransfer.DB;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;


namespace LogParserAndTransfer
{
    public delegate void FileSystemEvent(String path);

    public interface IDirectoryMonitor
    {
        event FileSystemEvent Change;
        void Start();
    }

    public class DirectoryMonitor : IDirectoryMonitor
    {
        private readonly FileSystemWatcher m_fileSystemWatcher = new FileSystemWatcher();
        private readonly Dictionary<string, DateTime> m_pendingEvents = new Dictionary<string, DateTime>();
        private readonly Timer m_timer;
        private bool m_timerStarted = false;
        private ILog m_log = LogManager.GetLogger("log");
        private KineticCSVFileParser parser = KineticCSVFileParser.GetInstance();
        private ProductTestInfo lastReadOne = null;
        private ObservedObj objective;
        private readonly string title;
        private readonly TimeSpan eventInteral = new TimeSpan(0, 0, 2);
        private DateTime lastEventTime = DateTime.MinValue;
        private ConcurrentQueue<ProductTestInfo> queue = new ConcurrentQueue<ProductTestInfo>();
        public ConcurrentQueue<String> UIDQueue = new ConcurrentQueue<String>();

        public DirectoryMonitor(string dirPath,string filter, ObservedObj objective,string title)
        {
            m_fileSystemWatcher.Path = dirPath;
            m_fileSystemWatcher.Filter = filter;
            m_fileSystemWatcher.IncludeSubdirectories = false;
            m_fileSystemWatcher.Created += new FileSystemEventHandler(OnChange);
            m_fileSystemWatcher.Changed += new FileSystemEventHandler(OnChange);

            m_timer = new Timer(OnTimeout, null, Timeout.Infinite, Timeout.Infinite);
            this.objective = objective;
            this.title = title;     
        }

        public event FileSystemEvent Change;

        public void Start()
        {
            m_fileSystemWatcher.EnableRaisingEvents = true;
        }

        public void Stop()
        {
            m_fileSystemWatcher.EnableRaisingEvents = false;
            UploadBufferedOne();
        }

        private void OnChange(object sender, FileSystemEventArgs e)
        {
            WatcherChangeTypes fType = e.ChangeType;
            string fTypeStr = fType.ToString();
            m_log.Info("OnChange FileSystemEventArgs type:" + fTypeStr);
            if (fTypeStr == "Deleted" || fTypeStr == "Created")
            {
                if(fTypeStr == "Created")
                {
                    string platformName = (Tool.IsExeRunning("UTS")) ? "UTS" : title;
                    m_log.Info(platformName);
                    m_log.Info("e.FullPath " + e.FullPath);
                    m_log.Info("TestContext.LogFile " + TestContext.LogFile);
                    if (!String.IsNullOrEmpty(platformName) && platformName.Contains("TestCam"))
                    {
                        if(!String.IsNullOrEmpty(TestContext.LogFile) &&
                            !String.IsNullOrEmpty(e.FullPath) &&
                            TestContext.LogFile == e.FullPath)
                        {
                            try
                            {
                                m_log.Info("Current TestCam log file is re-created");
                                ScanInfoUpdate uj = new ScanInfoUpdate();
                                String workid = uj.GetValue("Work-ID");
                                File.Copy(@"C:\Crola\ScannedInfo_bak.json", @"C:\Crola\ScannedInfo.json", true);
                                uj.WriteValue("ServiceStartTime", DateTime.Now.ToString());
                                uj.WriteValue("Work-ID", workid);
                            }
                            catch(Exception ea)
                            {
                                m_log.Error(ea.ToString());
                            }

                        }
                        
                    }
                }
                return;
            }

            if(lastEventTime == DateTime.MinValue)
            {
                lastEventTime = DateTime.Now;
            }
            else
            {
                if ((DateTime.Now - lastEventTime) < eventInteral)
                {
                    lastEventTime = DateTime.Now;
                    return;
                }
                lastEventTime = DateTime.Now;
            }

            // Don't want other threads messing with the pending events right now
            lock (m_pendingEvents)
            {
                // Save a timestamp for the most recent event for this path
                m_pendingEvents[e.FullPath] = DateTime.Now;

                // Start a timer if not already started
                if (!m_timerStarted)
                {
                    m_timer.Change(2000, 2000);
                    m_timerStarted = true;

                    string str = (objective.IsRunning()) ? "Running" : "Idle";
                    string platformName = (Tool.IsExeRunning("UTS")) ? "UTS" : title;
                    m_log.Info(platformName + " Platform " + str);

                    TestContext.LogFile = e.FullPath;
                    m_log.Info("Changed file:" + TestContext.LogFile);

                    objective.SetPlatformStr(title);

                    if (!objective.IsRunning()) // this require start EIS firstly
                    {
                        //if (!Tool.IsExeRunning("UTS")) // UTS not running(it means testcam or kinetic,and remind start EIS)
                        Tool.ShowWarningMessage("Warning", "Please click start button of EIS App before test.");
                        return;
                    }

                    if (title == "TestCam")  //Not used for TestCam and TestCam/UTS has the same log folder
                    {
                        if(!Tool.IsExeRunning("UTS"))
                        {
                            TestContext.Platform = "TestCam";
                            objective.StartScan();
                        }
                        else
                        {
                            TestContext.Platform = "UTS";
                            if (fTypeStr == "Changed")
                                objective.StartScan();  //TODO
                        }
                        return;
                    }
                    else if(title == "Kinetic")
                    {
                        // kinetic TEST_STATUS.txt is updated
                        m_log.Info("kinetic TEST_STATUS.txt is updated");
                        TestContext.Platform = "Kinetic";
                        if (fTypeStr == "Changed")
                        {
                            string sourceFile = "C:\\tstplan\\TEST_STATUS.txt"; 
                            string destinationFile = "C:\\tstplan\\TEST_STATUS_BAK.txt"; ;
                            try
                            {
                                File.Copy(sourceFile, destinationFile, true);
                            }
                            catch (IOException iox)
                            {
                                m_log.Error(iox.Message);
                            }
                            objective.StartScan();
                        }
                              
                        return;
                    }

                    // old kinetic routine
                    m_log.Error("It is error to enter old Kinetic EIS routine.");
                    Thread.Sleep(3000);
                    ProductTestInfo currReadOne = parser.ReadAccessayTxtFile();

                    if (currReadOne == null)
                    {
                        m_log.Info("No line is read out in the calling EIS_Control.txt");
                        return;
                    }

                    bool isValid = IsValidRecord(currReadOne);
                    if (!isValid)
                    {
                        m_log.Error("Read out a invalid line.");
                        return;
                    }

                    Tool.SetLastUpdatedTime(DateTime.Now);

                    m_log.Info("Current read out: "+ currReadOne.test_index+" "+ currReadOne.result+" "+ currReadOne.time.ToString());

                    int maxDuplicatedUIDCount = 20;
                    if(UIDQueue.IsEmpty)
                    {
                        if(!String.IsNullOrEmpty(currReadOne.test_index))
                            UIDQueue.Enqueue(currReadOne.test_index);
                    }
                    else
                    {
                        String uid = "";
                        UIDQueue.TryPeek(out uid);
                        if(!String.IsNullOrEmpty(uid) && !String.IsNullOrEmpty(currReadOne.test_index))
                        {
                            if (uid == currReadOne.test_index)
                            {
                                int count = UIDQueue.Count;
                                if(count== maxDuplicatedUIDCount)
                                {
                                    // clear queue
                                    String uidTemp;
                                    while (UIDQueue.TryDequeue(out uidTemp)) ;
                                    Tool.ShowWarningMessage("Warning", @"测试过程不能生成正确的UID，请重新启动Kinetic或者电脑。");
        
                                }
                                else
                                {
                                    UIDQueue.Enqueue(currReadOne.test_index);
                                }
                            }
                            else // read out uid != uid in queue
                            {
                                // clear queue
                                String uidTemp;
                                while (UIDQueue.TryDequeue(out uidTemp)) ;
                                // add a new one
                                UIDQueue.Enqueue(currReadOne.test_index);
                            }
                        }
                    }

                    if (lastReadOne == null)
                    {
                        lastReadOne = currReadOne;
                    }
                    else
                    {
                        if (currReadOne.result == 0)
                        {
                            //if (DateTime.Compare(lastReadOne.tTime, currReadOne.tTime) != 0)
                            if(!IsSameRecord(currReadOne, lastReadOne))
                            {
                                bool isSucc = parser.InsertAllFromOneScan(lastReadOne);
                                ActionForNetworkDown(isSucc, lastReadOne);
                                lastReadOne = currReadOne;
                            }
                            else
                                m_log.Error("Event: update file with the same time.");
                        }
                        else if(currReadOne.result == 1)
                        {
                            if (!IsSameRecord(currReadOne, lastReadOne))
                            {
                                bool isSucc = parser.InsertAllFromOneScan(currReadOne);
                                ActionForNetworkDown(isSucc, currReadOne);
                                lastReadOne = null;
                            }
                        }
                    }
                    lastEventTime = DateTime.Now;
                }
            }
        }

        private bool IsSameRecord(ProductTestInfo currReadOne, ProductTestInfo lastOne)
        {
            bool f = false;
            if (currReadOne == null || lastOne == null)
                return f;
            if (currReadOne.time == DateTime.Now || lastOne.time == DateTime.Now)
                return f;
            if (currReadOne.test_index == lastOne.test_index && currReadOne.result == lastOne.result && currReadOne.time == lastOne.time)
                f = true;

            return f;
        }

        public void PassWorkID(string workid)
        {
            parser.SetWorkID(workid);
        }

        public void UploadBufferedOne()
        {
            if(lastReadOne != null)
            {
                bool isSucc = parser.InsertAllFromOneScan(lastReadOne);
                ActionForNetworkDown(isSucc, lastReadOne);
                lastReadOne = null;
            }
                
        }

        private bool IsValidRecord(ProductTestInfo record)
        {
            bool isValid = true;

            string sn = record.test_index;
            if (string.IsNullOrEmpty(sn) || sn.Contains('-') || sn.Contains('~')) // TO DO
                isValid = false;

            return isValid;
        }
        private void OnTimeout(object state)
        {
            List<string> paths;

            // Don't want other threads messing with the pending events right now
            lock (m_pendingEvents)
            {
                // Get a list of all paths that should have events thrown
                paths = FindReadyPaths(m_pendingEvents);

                // Remove paths that are going to be used now
                paths.ForEach(delegate (string path)
                {
                    m_pendingEvents.Remove(path);
                });

                // Stop the timer if there are no more events pending
                if (m_pendingEvents.Count == 0)
                {
                    m_timer.Change(Timeout.Infinite, Timeout.Infinite);
                    m_timerStarted = false;
                }
            }

            // Fire an event for each path that has changed
            paths.ForEach(delegate (string path)
            {
                FireEvent(path);
            });
        }

        private List<string> FindReadyPaths(Dictionary<string, DateTime> events)
        {
            List<string> results = new List<string>();
            DateTime now = DateTime.Now;

            foreach (KeyValuePair<string, DateTime> entry in events)
            {
                // If the path has not received a new event in the last 75ms
                // an event for the path should be fired
                double diff = now.Subtract(entry.Value).TotalMilliseconds;
                if (diff >= 75)
                {
                    results.Add(entry.Key);
                }
            }

            return results;
        }

        private void FireEvent(string path)
        {
            FileSystemEvent evt = Change;
            if (evt != null)
            {
                evt(path);
            }
        }

        private void ActionForNetworkDown(bool isSucc, ProductTestInfo para)
        {
            m_log.Info("ActionForNetworkDown() Para: "+ isSucc+ "," + para.test_index);
            if (isSucc)
            {
                int count = queue.Count;
                m_log.Info("Queue count "+count);
                if (count > 0)
                {
                    for (int i = 0; i < count; i++)
                    {
                        ProductTestInfo bufferedOne = null;
                        queue.TryDequeue(out bufferedOne);
                        bool flag = parser.InsertAllFromOneScan(bufferedOne);

                        m_log.Info("Queue count after out " + queue.Count);
                        if (!flag)
                        {
                            m_log.Info("Buffered One Fail to insert DB,UID is " + bufferedOne.test_index);
                            //m_log.Info("Buffered One Fail to insert DB, Enter queue " + bufferedOne.test_index);
                            //queue.Enqueue(bufferedOne);
                            //m_log.Info("Queue count after in " + queue.Count);
                        }  
                        else
                        {
                            m_log.Info("BufferedOne Succ to insert DB," + bufferedOne.test_index);
                        }
                    }

                }
            }
            else
            {
                m_log.Info("Enter queue " + para.test_index);
                para.time = DateTime.Now;
                queue.Enqueue(para);
                m_log.Info("Queue count after in " + queue.Count);
            }
                
        }
    }
}
