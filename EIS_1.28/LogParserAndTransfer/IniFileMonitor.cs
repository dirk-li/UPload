using log4net;
using LogParserAndTransfer.DB;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;


namespace LogParserAndTransfer
{

    public class IniFileMonitor : IDirectoryMonitor
    {
        private readonly FileSystemWatcher m_fileSystemWatcher = new FileSystemWatcher();
        private readonly Dictionary<string, DateTime> m_pendingEvents = new Dictionary<string, DateTime>();
        private readonly Timer m_timer;
        private bool m_timerStarted = false;
        private ILog m_log = LogManager.GetLogger("log");
        private KineticCSVFileParser parser = KineticCSVFileParser.GetInstance();
        private IniFileChangeListener ChangeListener;
        private readonly TimeSpan eventInteral = new TimeSpan(0,0,2);
        private DateTime lastEventTime = DateTime.MinValue;

        public IniFileMonitor(string dirPath,string filter, IniFileChangeListener changeListener)
        {
            m_fileSystemWatcher.Path = dirPath;
            m_fileSystemWatcher.Filter = filter;
            m_fileSystemWatcher.IncludeSubdirectories = false;
            m_fileSystemWatcher.Changed += new FileSystemEventHandler(OnChange);
            m_timer = new Timer(OnTimeout, null, Timeout.Infinite, Timeout.Infinite);
            this.ChangeListener = changeListener; 
        }
        public event FileSystemEvent Change;
        public void Start()
        {
            m_fileSystemWatcher.EnableRaisingEvents = true;
        }
        public void Stop()
        {
            m_fileSystemWatcher.EnableRaisingEvents = false;
        }
        private void OnChange(object sender, FileSystemEventArgs e)
        {
            WatcherChangeTypes fType = e.ChangeType;
            string fTypeStr = fType.ToString();
            if (fTypeStr == "Deleted")
            {
                return;
            }
            IniFileChanged();
            return;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private void IniFileChanged()
        {
            ChangeListener.ActionOnIniFileChanged();
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
    }
}
/*
 if (lastEventTime == DateTime.MinValue)
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
                    m_timer.Change(0, 1000);
                    m_timerStarted = true;
                    Thread.Sleep(3000);
                    IniFileChanged();
                }
            }
*/
