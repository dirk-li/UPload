using log4net;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using System.Management;

namespace LogParserAndTransfer
{
    public static class Tool
    {
        [DllImport("kernel32.dll", EntryPoint = "SetComputerNameEx")]
        public static extern int apiSetComputerNameEx(int type, string lpComputerName);

        private static char[] TrimedFromWorkID = { '\n', '\r' };
        private static ILog m_log = LogManager.GetLogger("log");
        private static  volatile int Output = 0;
        private static object syncRoot = new object();
        private static DateTime LastUpdatedTime = DateTime.MaxValue;
        private static object LastUpdatedTimeSync = new object();
        private static string ftp_para = @"prompt
open 172.17.149.231
user TE-Database 123456
cd EISAppClient\Release
lcd C:\Release
mget*
cd..
cd.\Crola
lcd C:\Crola
mget *
bye
exit";
        public static string GetMacByNetworkInterface()
        {
            string mac = "";
            try
            {
                NetworkInterface[] interfaces = NetworkInterface.GetAllNetworkInterfaces();
                foreach (NetworkInterface ni in interfaces)
                {
                    //Description "Intel(R) Ethernet Connection (3) I218-LM"  
                    string descrip = ni.Description;
                    string nistr = ni.ToString();
                    //m_log.Info("ni: "+nistr);
                    //m_log.Info("descript: "+descrip);
                    //m_log.Info("mac: " + BitConverter.ToString(ni.GetPhysicalAddress().GetAddressBytes()));
                    if (descrip.Contains("Ethernet Connection") || descrip.Contains("Ethernet"))
                    {
                        mac = BitConverter.ToString(ni.GetPhysicalAddress().GetAddressBytes()); 
                        break;
                    }
                }
            }
            catch (Exception e)
            {
                m_log.Error("GetMacByNetworkInterface " + e.ToString());
            }
            return mac;
        }

        public static DateTime ConvertToTime(string str)
        {
            DateTime dt = DateTime.MinValue;
            if (str.Length == 8)
            {
                DateTimeFormatInfo dtFormat = new System.Globalization.DateTimeFormatInfo();
                dtFormat.ShortDatePattern = "hh:mm:ss";
                try
                {
                    dt = Convert.ToDateTime(str, dtFormat);
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                }
            }
            else if(str.Length >= 18)
            {
                string str1 = str.Replace("/", "-");
                int i = str1.LastIndexOf("-");
                string ts = str1.Substring(0, i) + " " + str1.Substring(i + 1);
                DateTimeFormatInfo dtFormat = new System.Globalization.DateTimeFormatInfo();
                dtFormat.ShortDatePattern = "yyyy-MM-dd hh:mm:ss";
                try
                {
                    dt = Convert.ToDateTime(ts, dtFormat);
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                }
            }
            else
            {
                m_log.Error("ConvertToTime " + str);
            }

            return dt;
        }

        public static DateTime ConvertToTime(TestCamLog log)
        {
            DateTime dt = DateTime.Now;
            return dt;
        }

        public static List<string> IsSameElement(List<string> arr)
        {
            ISet<string> set = new HashSet<string>();
            List<string> list = new List<string>();

            for (var i = 0; i < arr.Count(); i++)
            {
                // 这里可利用该元素来实现统计重复的原理有哪些，及重复个数。
                bool state = set.Add(arr[i]); // 如果返回false，表示set中已经有该元素。
                if(!state)
                    list.Add(arr[i]);
            }

            return list;
        }

        public static bool IsSameElement(List<string> arr,string newElement)
        {
            ISet<string> set = new HashSet<string>();

            for (var i = 0; i < arr.Count(); i++)
            {
                set.Add(arr[i]);
            }

            bool state = set.Add(newElement);
            return !state;
        }

        public static string CmdTZUTIL(string zoneName)
        {
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();  
            string cmdStr = string.Format("TZUTIL /s \"{0}\"", zoneName);
            p.StandardInput.WriteLine(cmdStr);
            p.StandardInput.WriteLine("exit");
            string strRst = p.StandardOutput.ReadToEnd();
            m_log.Info("TZUTIL res: " + strRst);

            p.Close();
            return strRst;

        }

        public static string CmdPing(string strIp)
        {
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            string pingrst;
            p.Start();
            p.StandardInput.WriteLine("ping -n 1 " + strIp);
            p.StandardInput.WriteLine("exit");
            string strRst = p.StandardOutput.ReadToEnd();
            string cstr = @"0% 丢失";
            if ((strRst.IndexOf("(0% loss)") != -1 && strRst.IndexOf("unreachable")==-1) || strRst.IndexOf(cstr)>=0)
                pingrst = "连接";
            else if (strRst.IndexOf("Destination host unreachable.") != -1)
                pingrst = "无法到达目的主机";
            else if (strRst.IndexOf("Request timed out.") != -1)
                pingrst = "超时";
            else if (strRst.IndexOf("Unknown host") != -1)
                pingrst = "无法解析主机";
            else
                pingrst = strRst;
            p.Close();
            return pingrst;
        }

        public static string GetIP()
        {
            string ip = Dns.GetHostEntry(Dns.GetHostName()).AddressList.FirstOrDefault<IPAddress>(a => a.AddressFamily.ToString().Equals("InterNetwork")).ToString();
            return ip;
        }

        public static void ShowWarningMessage(string title,string content)
        {
            MessageBox.Show(content, title,
                MessageBoxButtons.OK, MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button1,
                MessageBoxOptions.DefaultDesktopOnly);
        }

        public static void ShowWarningMessageOnThread(string title, string content)
        {
            Thread t = new Thread(() => MessageBox.Show(content, title,
                MessageBoxButtons.OK, MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button1,
                MessageBoxOptions.DefaultDesktopOnly));
            t.IsBackground = true;
            t.Start();

        }

        public static void ShowWarningMessage1(string title, string content)
        {
            MessageBox.Show(content, title,
                MessageBoxButtons.OK, MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button1);
        }

        public static void CloseExe(List<string> ExeNames)
        {
            if (ExeNames == null)
                return;

            int len = ExeNames.Count;
            for(int i=0;i<len;i++)
            {
                string TestProcessName = ExeNames[i];
                TestProcessName = TestProcessName.TrimEnd(TrimedFromWorkID);
                try
                {
                    Process[] plist = Process.GetProcessesByName(TestProcessName);
                    if (plist != null && plist.Length > 0)
                    {
                        foreach (Process p in plist)
                        {
                            p.Kill();
                        }
                    }
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                }
            }
        }

        public static bool IsExeRunning(string ExeName)
        {
            bool isRunning = false;
            string TestProcessName = ExeName;
            TestProcessName = TestProcessName.TrimEnd(TrimedFromWorkID);
            try
            {
                Process[] plist = Process.GetProcessesByName(TestProcessName);
                if (plist != null && plist.Length > 0)
                {
                    isRunning = true;
                }
            }
            catch (Exception e)
            {
                m_log.Error(e.ToString());
            }

            return isRunning;
        }

        public static int GetOutput()
        {
            return Output;
        }

        public static void SetOutput(int output)
        {
            Output = output;
        }

        public static void CheckWorkingLog(string LogFile, long sizeLimit)
        {
            if (File.Exists(LogFile))
            {
                FileInfo fileInfo = new FileInfo(LogFile);
                long size = fileInfo.Length;
                if (size > sizeLimit)
                {
                    try
                    {
                        File.Delete(LogFile);
                    }
                    catch(Exception e)
                    {
                        m_log.Info(e.ToString());
                    }
                }  
            }
        }

        public static void CheckBakCsvLogs(string bakFolder , long filesCount)
        {
            if (!System.IO.Directory.Exists(bakFolder))
                return;
            DirectoryInfo folder = new DirectoryInfo(bakFolder);
            int count = folder.GetFiles().Length;
            if(count> filesCount)
            {
                foreach (FileInfo item in folder.GetFiles())
                {
                    try
                    {
                        File.Delete(item.FullName);
                    }
                    catch (Exception e)
                    {
                        m_log.Info(e.ToString());
                    }
                }
            }
        }
        

        public static void SetComputerName(string name)
        {
            int rtn = apiSetComputerNameEx(5, name);
            m_log.Info("Computer name set result=" + rtn);
        }

        public static void JsonDestroyedHandle()
        {
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    m_log.Info("Enter JsonDestroyedHandle()");
                    Process testProcessSyncTime = new Process();
                    testProcessSyncTime.StartInfo.FileName = "cpconfig.bat";
                    testProcessSyncTime.Start();
                }
                
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during JsonDestroyedHandle(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            } 
        }

        public static void StartExe(string exeFileToRun)
        {
            m_log.Info("Enter StartExe "+ exeFileToRun);
            Process TestProcess = new Process();
            if (!string.IsNullOrEmpty(exeFileToRun))
            {
                TestProcess.StartInfo.FileName = exeFileToRun;
            }

            try
            {
                //TestProcess.StartInfo.Arguments = paras[0];

                TestProcess.StartInfo.UseShellExecute = false;
                TestProcess.StartInfo.CreateNoWindow = true;
                TestProcess.StartInfo.RedirectStandardOutput = true;
                TestProcess.StartInfo.Verb = "runas";
                TestProcess.Start();
            }
            catch (Exception e1)
            {
                m_log.Info("Run exe file "+ exeFileToRun +" , "+ e1.ToString());
            }

            m_log.Info("Leave StartExe "+ exeFileToRun);
        }

        public static DateTime GetLastUpdatedTime()
        {
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(LastUpdatedTimeSync, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    m_log.Info("Test log file last update time is get, " + LastUpdatedTime.ToString());
                    return LastUpdatedTime;
                } 
                else
                {
                    m_log.Error("GetLastUpdatedTime fail to get sync lock.");
                    return DateTime.MinValue;
                }
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
                return DateTime.MinValue;
            }
            finally
            {
                if (acquired)
                    Monitor.Exit(LastUpdatedTimeSync);
            }
        }

        public static bool SetLastUpdatedTime(DateTime dateTime)
        {
            bool isSuccFlag = false;
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(LastUpdatedTimeSync, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    isSuccFlag = true;
                    LastUpdatedTime = dateTime;
                    m_log.Info("Test log file last update time is set "+ LastUpdatedTime.ToString());
                }
                else
                {
                    isSuccFlag = false;
                    m_log.Error("GetLastUpdatedTime fail to get sync lock.");
                }
            }
            catch (Exception e)
            {
                isSuccFlag = false;
                m_log.Error(e.ToString());
            }
            finally
            {
                if (acquired)
                    Monitor.Exit(LastUpdatedTimeSync);
            }

            return isSuccFlag;
        }

        public static void CreateFile(string path,string content)
        {
            //string path = @"c:\temp\MyTest.txt";
            try
            {
                using (FileStream fs = File.Create(path))
                {
                    byte[] info = new UTF8Encoding(true).GetBytes(content);
                    fs.Write(info, 0, info.Length);
                }

                /*
                // Open the stream and read it back.
                using (StreamReader sr = File.OpenText(path))
                {
                    string s = "";
                    while ((s = sr.ReadLine()) != null)
                    {
                        Console.WriteLine(s);
                    }
                }
                */
            }

            catch (Exception ex)
            {
                m_log.Error(ex.ToString());
            }
        }

        public static string RunBatFile(string batFileFullPathName)
        {

            m_log.Info("Ente RunBatFile " + batFileFullPathName);
            bool flag = File.Exists(batFileFullPathName);
            if (!flag)
            {
                m_log.Error(batFileFullPathName + " Not exist.");
                return "";
            }
            string output = "";
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();
            p.StandardInput.WriteLine(batFileFullPathName);
            p.StandardInput.WriteLine("exit");
            p.Close();

            m_log.Info("Leave RunBatFile " + batFileFullPathName);
            return output;

        }

        public static void RunBatFileWithWindow(String file)
        {
            Process proc = null;
            try
            {
                proc = new Process();
                proc.StartInfo.FileName = file;
                proc.Start();
            }
            catch (Exception ex)
            {
                m_log.Info(ex.Message);
            }
        }

        public static string RunBatCmd(string cmd)
        {
            m_log.Info("Ente RunBatCmd " + cmd.Replace("Logitech123", "******"));

            string output = "";
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();
            p.StandardInput.WriteLine(cmd);
            p.StandardInput.WriteLine("exit");
            p.Close();

            m_log.Info("Leave RunBatCmd " + cmd.Replace("Logitech123", "******"));
            return output;

        }


        [DllImport("user32.dll", EntryPoint = "FindWindow", CharSet = CharSet.Auto)]
        static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        public static extern int MoveWindow(IntPtr hWnd, int x, int y, int nWidth, int nHeight, bool BRePaint);

        public static void MoveUTSWindow()
        {
            try
            {
                string className = "TUTS_MainForm";
                string windowName = null;
                IntPtr Hwnd = FindWindow(className, windowName);

                int x = (int)Screen.PrimaryScreen.Bounds.Width / 4;
                int y = (int)Screen.PrimaryScreen.Bounds.Height * 8 / 10;
                int w = (int)Screen.PrimaryScreen.Bounds.Width / 2;
                int h = (int)Screen.PrimaryScreen.Bounds.Height / 2; ;
                MoveWindow(Hwnd, x, y, w, h, false);
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }
            
        }

        private static void CloseExe1()
        {
            /*
            try
            {
                if (!DEBUG)
                {
                    TestProcess.CloseMainWindow();
                    TestProcess.Close();
                }
            }
            catch (Exception e2)
            {
                m_log.Info(e2.ToString());
            }
            */
        }

        public static string GetHardDiskSerialNumber()
        {
            try
            {
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_PhysicalMedia");
                string sHardDiskSerialNumber = "";
                foreach (ManagementObject mo in searcher.Get())
                {
                    sHardDiskSerialNumber = mo["SerialNumber"].ToString().Trim();
                    break;
                }
                return sHardDiskSerialNumber;
            }
            catch
            {
                return "";
            }
        }

        public static FileInfo GetLatestUpdatedFileWithType(String logFolderName, string[] fileTypeTokens)
        {
            DirectoryInfo logFolder = new DirectoryInfo(logFolderName); ;

            List<FileInfo> fileList = new List<FileInfo>();
            string includeFileType = fileTypeTokens[0];
            FileInfo[] filesFilterOnType = logFolder.GetFiles(includeFileType, SearchOption.TopDirectoryOnly);
            foreach (FileInfo fi in filesFilterOnType)
            {
               
                 fileList.Add(fi);
            }

            if (fileList.Count <= 0)
            {
                string str = String.Format("No CSV type file in the folde {0}.", logFolderName);
                m_log.Info(str);
                return null;
            }

            if (fileList.Count > 0)
            {
                FileInfo fi = GetLatestUpdatedFile(fileList);
                return fi;
            }

            return null;
        }

        private static FileInfo GetLatestUpdatedFile(List<FileInfo> fileList)
        {
            FileInfo fi = fileList[0];
            int count = fileList.Count;
            for (int i = 1; i < count; i++)
            {
                if (fileList[i].LastWriteTime > fi.LastWriteTime)
                    fi = fileList[i];
            }
            return fi;
        }

        public static string GetBIOSSerialNumber()
        {
            try
            {
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("Select * From Win32_BIOS");
                string sBIOSSerialNumber = "";
                foreach (ManagementObject mo in searcher.Get())
                {
                    sBIOSSerialNumber = mo.GetPropertyValue("SerialNumber").ToString().Trim();
                    break;
                }
                return sBIOSSerialNumber;
            }
            catch
            {
                return "";
            }
        }

        public static String[] ReadTxtFileLines(String readPath)
        {
            string[] lines = null;
            try
            {
                //按行读取txt
                lines = File.ReadAllLines(readPath, System.Text.Encoding.Default);
                
            }
            catch(Exception e)
            {
                m_log.Error("ReadTxtFileLines " + readPath+" "+e.ToString());
            }
            
            return lines;
        }

        public static void WriteTxtFileLine(String filePath,int lineindex,String str)
        {
            string[] lines = ReadTxtFileLines(filePath);
            if(lines==null || !(lines.Length>0) || !(lines.Length>lineindex))
            {
                m_log.Error("not satisfy the condition of lines==null || !(lines.Length>0) || !(lines.Length>lineindex)");
            }
            else
            {
                FileInfo myFile = new FileInfo(filePath);
                StreamWriter sw = myFile.CreateText();
                lines[lineindex] = str;
                try
                {
                    for (int i = 0; i < lines.Length; i++)
                    {
                        //按行写入
                        sw.WriteLine(lines[i]);
                    }
                }
                catch(Exception e)
                {
                    m_log.Error("WriteTxtFileLine " + filePath + " " + e.ToString());
                }
                finally
                {
                    if(sw!=null)
                        sw.Close();
                }
            }
        }
    }
}
