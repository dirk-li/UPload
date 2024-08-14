using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    class FileWatcher
    {
        private readonly Timer m_timer;
        private bool m_timerStarted = false;

        public FileWatcher()
        {

        }

        public void WatcherStrat(string path, string filter)
        {
            FileSystemWatcher watcher = new System.IO.FileSystemWatcher();
            watcher.Path = path;

            watcher.Filter = filter;

            watcher.Changed += new FileSystemEventHandler(OnProcess);
            watcher.Created += new FileSystemEventHandler(OnProcess);
            watcher.Deleted += new FileSystemEventHandler(OnProcess);
            watcher.Renamed += new RenamedEventHandler(OnRenamed);

            watcher.EnableRaisingEvents = true;
        }

        private static void OnProcess(object source, FileSystemEventArgs e)
        {
            if (e.ChangeType == WatcherChangeTypes.Created)
            {
                OnCreated(source, e);

            }
            else if (e.ChangeType == WatcherChangeTypes.Changed)
            {
                OnChanged(source, e);

            }
            else if (e.ChangeType == WatcherChangeTypes.Deleted)
            {
                OnDeleted(source, e);

            }
        }

        private static void OnCreated(object source, FileSystemEventArgs e)
        {

            Console.WriteLine("文件新建事件处理逻辑");

        }

        private static void OnChanged(object source, System.IO.FileSystemEventArgs e)
        {
            Console.WriteLine("文件改变事件处理逻辑");

        }

        private static void OnDeleted(object source, FileSystemEventArgs e)
        {

            Console.WriteLine("文件删除事件处理逻辑");
        }

        private static void OnRenamed(object source, RenamedEventArgs e)
        {

            Console.WriteLine("文件重命名事件处理逻辑");
        }
    }
}

