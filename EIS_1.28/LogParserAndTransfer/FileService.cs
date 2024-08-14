using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Security;
using System.Text.RegularExpressions;
using System.Threading;
using log4net;

namespace LogParserAndTransfer
{
    public static class FileService
    {
        private static ILog Logger = log4net.LogManager.GetLogger("log");
        /// <summary>
        /// The sync root object for Lock.
        /// </summary>
        private static object syncRoot = new object();

        static ScanInfoUpdate uj = new ScanInfoUpdate();
        public static string logFolderName = uj.GetValue("TestCamTestLogFolder");

        /// <summary>
        /// Service entry.
        /// </summary>
        public static void StartScanServiceProc()
        {
            bool acquired = false;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");

                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");

                    InternalScanServiceProc();
                }
            }
            catch (Exception ex)
            {
                Logger.Error($"Exception happened during InternalScanServiceProc(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }
        }

        /// <summary>
        /// Internal service process to archive logs.
        /// </summary>
        private static void InternalScanServiceProc()
        {
            // Search for files to zip up if necessary.
            //Logger.Debug("Timer Service Tick :" + DateTime.Now.ToString());
            List<DirectoryInfo> slotDirectories = new List<DirectoryInfo>();
            DirectoryInfo logFolder = null;
            try
            {
                if (string.IsNullOrEmpty(logFolderName))
                {
                    Logger.Error($"Log Folder Name is NULL or BLANK.");
                    return;
                }

                logFolder = new DirectoryInfo(logFolderName);
            }
            catch (Exception ex)
            {
                string logStr = "InternalScanServiceProc : " + "\r" + ex.ToString();
                Logger.Error(logStr);
            }

            List<FileInfo> fileList = new List<FileInfo>();
            string[] fileTypeTokens = AppSetting.Default.ScanFileType.Split(',');
            string includeFileType = fileTypeTokens[0];
            FileInfo[] filesFilterOnType = logFolder.GetFiles(includeFileType, SearchOption.TopDirectoryOnly);
            foreach(FileInfo fi in filesFilterOnType)
            {
                bool isAdd = true;
                string[] excludeFileNameTokens = AppSetting.Default.ExcludeFileName.Split(',');
                foreach(string excludeFileName in excludeFileNameTokens)
                {
                    if (fi.FullName.Contains(excludeFileName))
                    {
                        isAdd = false;
                        break;
                    }
                }
                if (isAdd)
                    fileList.Add(fi);
            }

            if (fileList.Count <= 0 )
            {
                string str = String.Format("No CSV type file in the folde {0}.", logFolderName);
                Logger.Info(str);
                return;
            }

            if(fileList.Count>0)
            {
                FileInfo fi = GetLatestUpdatedFile(fileList);
                //Logger.Info("Scaning File Name " + fi.FullName);
                if (YoungEnoughToArchive(fi))
                    Scaning(fi.FullName);
            }
            
            Thread.Sleep(TimeSpan.FromSeconds(1));
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

        private static bool YoungEnoughToArchive(FileInfo fileInfo)
        {
            bool isYoungEnough = false;
            DateTime fileLastWriteTime = fileInfo.LastWriteTimeUtc;
            if (DateTime.UtcNow.Subtract(fileLastWriteTime).TotalSeconds < AppSetting.Default.YoungEnoughTimeSpan.TotalSeconds)
            {
                isYoungEnough = true;
            }
            //Logger.Info(fileInfo.FullName+" young enough "+isYoungEnough);
            return isYoungEnough;
        }

        private static void Scaning(string fileName)
        {
            //string platform = AppSetting.Default.TestPlatform;
            string platform = TestContext.Platform;
            if (platform == "Kinetic")
            {
                KineticCSVFileParser parser = KineticCSVFileParser.GetInstance();
                parser.ReadCSVFile(fileName);
            }
            else if (platform == "TestCam")
            {
                TestCamCSVFileParser parser = TestCamCSVFileParser.GetInstance();
                parser.ReadCSVFile(fileName);
            }
        }

        public static bool CreateScanInfoFile()
        {
            bool isSucc = true;
            //string scanInfoFileName = AppSetting.Default.OutputFolder + "\\ScannedInfo.json";
            string scanInfoFileName = AppSetting.Default.OutputFolder + AppSetting.Default.ScanInfoFile;
            if (Directory.Exists(AppSetting.Default.OutputFolder))
            {
                try
                {
                    if (!File.Exists(scanInfoFileName))
                    {
                        File.Create(scanInfoFileName);
                    }
                }
                catch(Exception e)
                {
                    Logger.Error("FileService1 "+e.ToString());
                    isSucc = false;
                }
                
            }
            else
            {
                try
                {
                    Directory.CreateDirectory(AppSetting.Default.OutputFolder);
                }
                catch(Exception e)
                {
                    Logger.Error("FileService2 "+e.ToString());
                    isSucc = false;
                }
                if(isSucc)
                {
                    try
                    {
                        File.Create(scanInfoFileName);
                    }
                    catch (Exception e)
                    {
                        Logger.Error("FileService3 "+e.ToString());
                        isSucc = false;
                    }
                }
                
            }
            return isSucc;
        }
    }
}
