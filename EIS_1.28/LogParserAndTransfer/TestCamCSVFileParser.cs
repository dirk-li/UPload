using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

using FileHelpers;
using FileHelpers.Events;
using log4net;
using LogParserAndTransfer.DB;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace LogParserAndTransfer
{
    class TestCamCSVFileParser: ICSVFileParser
    {
        private int LineNumFromScanInfoFile = 0;
        private int LineNumReadout = 0;
        private static TestCamCSVFileParser uniqueInstance;
        private static readonly object locker = new object();
        private FileHelperEngine<TestCamLog> engine;
        private ILog m_log = LogManager.GetLogger("log");
        private string Station = "";
        private string WorkID = "";
        private string Product = "";
        private string PCmac = "";
        private readonly int PASS = 1;
        private readonly int FAIL = 0;
        private int StationIndex = 18;
        private string SNColumnName = "";
        private string CurrEID = "";
        private ScanInfoUpdate uj = new ScanInfoUpdate();
        private Dictionary<string, string> mapSnTime = new Dictionary<string, string>();
        private FileHelperEngine<KineticAccessaryLog1> engine1;
        private bool IsFinalStation = false;
        private char[] TrimedFromWorkID = { '\n', '\r' };
        private bool GladDebug = false;
        private Process PassBat = new Process();
        private Process FailBat = new Process();
        private TestCamCSVFileParser()
        {
            engine = new FileHelperEngine<TestCamLog>();
            PCmac = Tool.GetMacByNetworkInterface();

            GladDebug = uj.GetValue("GladDebug") == "True";
            if(GladDebug)
            {
                InitBatProcess();
            }
        }

        private void InitBatProcess()
        {
            try
            {
                string passBatFile = uj.GetValue("GladTestPassBat");
                if (!string.IsNullOrEmpty(passBatFile))
                {
                    FileInfo file = new FileInfo(passBatFile);
                    PassBat.StartInfo.WorkingDirectory = file.Directory.FullName;
                    PassBat.StartInfo.FileName = passBatFile;
                    PassBat.StartInfo.CreateNoWindow = false;
                }

                string failBatFile = uj.GetValue("GladTestFailBat");
                if (!string.IsNullOrEmpty(failBatFile))
                {
                    FileInfo file = new FileInfo(failBatFile);
                    FailBat.StartInfo.WorkingDirectory = file.Directory.FullName;
                    FailBat.StartInfo.FileName = failBatFile;
                    FailBat.StartInfo.CreateNoWindow = false;
                }
            }
            catch(Exception e)
            {
                m_log.Info(e.ToString());
            }
        }
        /// <summary>
        /// </summary>
        /// <returns></returns>
        public static TestCamCSVFileParser GetInstance()
        {
            lock (locker)
            {
                if (uniqueInstance == null)
                {
                    uniqueInstance = new TestCamCSVFileParser();
                }
            }

            return uniqueInstance;
        }

        public void ReadCSVFile(string fileName)
        {
            int s = fileName.LastIndexOf("\\");
            int e = fileName.LastIndexOf(".");
            String trimFileName = fileName.Substring(s+1,e-s-1);
			//m_log.Info(trimFileName);
            LineNumFromScanInfoFile = uj.ReadLastOperLine(trimFileName);

            /*
            string stationIndexStr = uj.GetValue("Product_Station_Index");
            try
            {
                StationIndex = Int32.Parse(stationIndexStr);
            }
            catch (FormatException)
            {
                m_log.Error($"Unable to parse station index '{stationIndexStr}'");
            }
            */

            this.WorkID = uj.GetValue("Work-ID").TrimEnd(TrimedFromWorkID); 

            string isFinalStationStr = uj.GetValue("IsFinalStation");
            if (isFinalStationStr == "True")
                IsFinalStation = true;

            int precessedRecordsCount = 0;
            try
            {
                engine.BeforeReadRecord += BeforeEvent;
                engine.AfterReadRecord += AfterEvent;
                TestCamLog[] logRecords = GetRecordsEx(fileName, trimFileName);
                if (logRecords == null)
                    return;
                TestCamLog[] filterdLogRecords = Filter(logRecords);
                precessedRecordsCount = Process((TestCamLog[])filterdLogRecords);
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("Here1 "+ex_str);
            }

            //if (precessedRecordsCount > 0)
                //uj.WriteLastOperLine(trimFileName, LineNumReadout);
            uj.WriteLastOperLine(trimFileName, LineNumReadout);
        }

        private TestCamLog[] GetRecordsEx(string csvFileName, string trimedFileName)
        {
            TestCamLog[] logRecords = null;

            try
            {
                string destFile = AppSetting.Default.OutputFolder + trimedFileName + ".csv";
                System.IO.File.Copy(csvFileName, destFile, true);
                FileStream fs = new FileStream(destFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                logRecords = (TestCamLog[])engine.ReadStream(sr);
                sr.Close();

                System.IO.File.Delete(destFile);
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("GetRecordsEx() Exception: " + ex_str);
            }

            return (TestCamLog[])logRecords;
        }


        private TestCamLog[] GetRecords(string csvFileName, string trimedFileName)
        {
            TestCamLog[] logRecords = null;
            try
            {
                FileStream fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                logRecords = (TestCamLog[])engine.ReadStream(sr);

                sr.Close();
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                string key_str = "being used by another process";
                m_log.Error(ex_str);

                int loc = ex_str.IndexOf(key_str);
                if (loc > 0)
                {
                    string destFile = AppSetting.Default.OutputFolder + trimedFileName + ".csv";
                    System.IO.File.Copy(csvFileName, destFile, true);
                    logRecords = (TestCamLog[])engine.ReadFile(destFile); 
                    System.IO.File.Delete(destFile);
                }
            }

            return (TestCamLog[])logRecords;
        }

        private TestCamLog[] GetRecords(string csvFileName)
        {
            TestCamLog[] logRecords = null;
            try
            {
                FileStream fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                logRecords = (TestCamLog[])engine.ReadStream(sr);
                sr.Close();
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("GetRecords() Exception: " + ex_str);
            }

            return (TestCamLog[])logRecords;
        }
        
        private bool isAfterAPPStartTime()
        {

            bool isAfter = false;

            string ts = "12/11/2019 11:40:23 AM";
            DateTime tsc = DateTime.Parse(ts);
            string fls = "23:00:50";
            DateTime tsc1 = DateTime.Parse(fls);

            return isAfter;
        }

        private TestCamLog[] Filter(TestCamLog[] logRecordsPara)
        {
            List<TestCamLog> list = new List<TestCamLog>();
            ScanInfoUpdate uj = new ScanInfoUpdate();
            string strStartTime = uj.GetValue("ServiceStartTime");
            DateTime startTime = DateTime.Parse(strStartTime);

            foreach (TestCamLog record in logRecordsPara)
            {
                if (record.SerialNumber != null && record.SerialNumber != "SerialNumber" && 
                    record.SerialNumber.Length >= AppSetting.Default.TestCamSNLen)
                {
                    bool isAfter = true;
                    try
                    {
                        DateTime testTime = DateTime.Parse(record.Time);
                        if (testTime < startTime)
                            isAfter = false;
                    }
                    catch(Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                    if(isAfter)
                        list.Add(record);
                }
            }

            TestCamLog[] logRecords = list.ToArray();
            return logRecords;
        }

        private string GetWorkId()
        {
            ScanInfoUpdate uj = new ScanInfoUpdate();
            this.WorkID = uj.GetValue("Work-ID");

            return this.WorkID;
        }

        private string GetProductName(String eid)
        {
            try
            {
                //EID column content is the following one
                //D:\Bluemoon_IQ_SZ_MP--20180928WWnew\Bluemoon_IQ_SZ_MP--20180928WWnew\Bluemoon_IQ_SZ_MP002logitech.tst
                int endLoc = eid.LastIndexOf(".tst");
                if (endLoc > 0)
                {
                    int startLoc = eid.LastIndexOf("\\") + 1;
                    if (startLoc > 0)
                    {
                        string fileName = eid.Substring(startLoc, endLoc - startLoc);
                        string[] tokens = fileName.Split('_');
                        if (tokens.Length >= 2)
                        {
                            this.Product = tokens[0];
                        }
                    }
                }
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }

            return this.Product;
        }

        private string[] GetProductInfo(String eid)
        {
            string[] infos = new string[4];

            try
            {
                //EID column content is the following one
                //D:\Bluemoon_IQ_SZ_MP--20180928WWnew\Bluemoon_IQ_SZ_MP--20180928WWnew\Bluemoon_IQ_SZ_MP002logitech.tst
                int endLoc = eid.LastIndexOf(".tst");
                if (endLoc > 0)
                {
                    int startLoc = eid.LastIndexOf("\\") + 1;
                    if (startLoc > 0)
                    {
                        string fileName = eid.Substring(startLoc, endLoc - startLoc);
                        //MaggieHm25_RFT_SZ_autotube02EIS4.tst 
                        //MaggieHm25_IQ_SZ_autotube02EIS5L.tst 
                        string[] tokens = fileName.Split('_');
                        if (tokens.Length > 2)
                        {
                            infos[0] = tokens[0];
                            infos[1] = tokens[1];

                            string stainfo = tokens[3];
                            stainfo = stainfo.Replace("EIS","-");
                            string[] lowerTokens = stainfo.Split('-');
                            string combin = lowerTokens[1];
                            int location = combin.IndexOf('L');
                            if (location > 0)
                            {
                                infos[2] = combin.Substring(0, location);
                                infos[3] = "1";
                            }
                            else
                            {
                                infos[2] = combin;
                                infos[3] = "0";
                            }
                        }
                    }
                }
            }
            catch (Exception e)
            {
                m_log.Error(e.ToString());
            }

            return infos;
        }

        private int Process(TestCamLog[] logRecords)
        {
            int processedRecordsCount = 0;
            List<ProductTestInfo> list = new List<ProductTestInfo>();
            if (logRecords.Any())
            {
                int index = 1;
                foreach (var record in logRecords)
                {
                    string sno = record.SNo;
                    string status = record.Status;
                    string comment = record.Comment;
                    string sn = record.SerialNumber;
                    string message = index + "   " + sno + " " + status + " " + comment + " " + sn;
                    m_log.Info(message);
                    Tool.SetLastUpdatedTime(DateTime.Now);

                    if (GladDebug)
                    {
                        try
                        {
                            if (status == "F")
                            {
                                FailBat.Start();
                            }
                            else if (status == "P")
                            {
                                PassBat.Start();
                            }
                            else
                                m_log.Info("Cannot find reslut from test log for bat file.");
                        }
                        catch(Exception e)
                        {
                            m_log.Error(e.ToString());
                        }
                    }
                       
                    index++;
                    //Convert to DB object
                    ProductTestInfo testInfo = GenerateTestInfo(record);
					list.Add(testInfo);
                }
            }

            if (list.Count() > 0)
            {
                bool isInsertSucc = InsertAllFromOneScan(list);
                if (isInsertSucc)
                {
                    processedRecordsCount = list.Count;
                }
                else
                {
                    if (GladDebug)
                        processedRecordsCount = list.Count;
                }
            }

            return processedRecordsCount;
        }

        public bool InsertAllFromOneScan(List<ProductTestInfo> list)
        {
            bool isInsertSucc1 = true;
            try
            {
                foreach (ProductTestInfo currTinfo in list)
                {
                    string sn = currTinfo.test_index;
                    string product = currTinfo.product;
                    string station = currTinfo.station;
                    // retrieve based on sn,product,station
                    List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, product, station);
                    bool isTotallyNew = IsNewUIDWithNewWorkID(currTinfo, tinfoRetrieved);
                    // precess for one log record    
                    if (isTotallyNew)  // new UID(None is retrieved)
                    {
                        string currTinfoWorkID = currTinfo.work_id;
                        string currSation = currTinfo.station;
                        // new ProductDashboard(); dashboard.work_id = currTinfoWorkID; //
                        ProductDashboard dashboard = DBTool.SelectProductDashboardItem(currTinfoWorkID); 
                        if (dashboard != null)
                        {
                            dashboard.islastStation = this.IsFinalStation;
                            dashboard.to_update_station_index = StationIndex.ToString();
                        }
                            
                        int result = currTinfo.result;
                        if (result == PASS)
                        {
                            if (dashboard == null)
                            {
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                SetStationName(dashboard, currSation);
                                SetInput(dashboard, 1);
                                SetOutput(dashboard, 1);
                                SetRework(dashboard, 0);
                                SetFP(dashboard, 1);
                                DBTool.InsertProductDashboard(dashboard);
                                currTinfo.process = 1;
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if(isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Testcam";
                                    currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }
                            }
                            else
                            {
                                int i = GetInput(dashboard);
                                int o = GetOutput(dashboard);
                                SetInput(dashboard, i + 1);
                                SetOutput(dashboard, o + 1);
                                int fp = GetFp(dashboard);
                                SetFP(dashboard, fp + 1);
                                SetStationName(dashboard, currSation);

                                DBTool.SetInputChange(dashboard, 1);
                                DBTool.SetOutputChange(dashboard, 1);
                                DBTool.SetFPChange(dashboard, 1);
                                if (IsFinalStation)
                                    DBTool.SetAchieveChange(dashboard, 1);
                                currTinfo.process = 1;
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if (isInsertSucc1)
                                {
                                    m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                                    m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (o + 1));
                                    DBTool.UpdateDashboardItem(dashboard);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Testcam";
                                    currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }

                            }
                        }
                        else if (result == FAIL)
                        {
                            if (dashboard == null)
                            {
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                SetStationName(dashboard, currSation);
                                SetInput(dashboard, 1);
                                DBTool.InsertProductDashboard(dashboard);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if (isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Testcam";
                                    currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }
                            }
                            else
                            {
                                int i = GetInput(dashboard);
                                SetInput(dashboard, i + 1);
                                SetStationName(dashboard, currSation);
                                DBTool.SetInputChange(dashboard, 1);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo); // TO DO
                                if (isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                    m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                                    DBTool.UpdateDashboardItem(dashboard);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Testcam";
                                    currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }
                            }
                        }
                        else
                        {
                            m_log.Error("ProductTestInfo item \"result\" field isn't equal 0 or 1.");
                        }
                    }   // End new UID(None is retrieved)

                    else  // the UID exists in Database
                    {
                        ProductTestInfo lastTinfo = tinfoRetrieved[0];// t1
                        if (lastTinfo == null)
                        {
                            m_log.Error("Cannot get last Tinfo from Database");
                            break;
                        }
                        int result = currTinfo.result;
                        string currSation = currTinfo.station;
                        UpdateTestInfoBasedOnDBStatus(currTinfo, lastTinfo);
                        if (result == PASS)
                        {
                            if (lastTinfo == null)
                            {
                                m_log.Error("Cannot get last Tinfo from Database");
                                break;
                            }
                            string lastTinfoWorkID = lastTinfo.work_id;
                            int lastTestResult = lastTinfo.result;
                            int lastRework = lastTinfo.rework;
                            if (lastTestResult == PASS)
                            {
                                //No action for Dashboard
                                currTinfo.process = 1;
                                currTinfo.work_id = lastTinfo.work_id; //t1 P2P workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if (isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Testcam";
                                    currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }
                            }
                            else if (lastTestResult == FAIL)
                            {
                                string currTinfoWorkID = currTinfo.work_id;
                                // new ProductDashboard(); dashboard.work_id = currTinfoWorkID; //
                                ProductDashboard dashboard = DBTool.SelectProductDashboardItem(currTinfoWorkID);
                                if (dashboard != null)
                                {
                                    dashboard.islastStation = this.IsFinalStation;
                                    dashboard.to_update_station_index = StationIndex.ToString();
                                }
                                    
                                if (dashboard != null)
                                {
                                    int output = GetOutput(dashboard);
                                    SetOutput(dashboard, output + 1);
                                    SetStationName(dashboard, currSation);
                                    DBTool.SetOutputChange(dashboard, 1);
                                    currTinfo.process = 1;
                                    currTinfo.failtimes = 0;
                                    currTinfo.rework = lastRework;
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                    if (isInsertSucc1)
                                    {
                                        m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                        m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (output + 1));
                                        DBTool.UpdateDashboardItem(dashboard);
                                    }
                                    else
                                    {
                                        // TO DO F2DB
                                        currTinfo.PlatForm = "Testcam";
                                        currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                        FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                    }
                                }
                                else
                                {
                                    m_log.Error("Cannot find Dashboard from database with work id " + currTinfoWorkID + ",Create a new Dashboard. ");
                                    dashboard = new ProductDashboard();
                                    dashboard.work_id = currTinfoWorkID;
                                    dashboard.time = DBTool.GetMySqlTime();
                                    SetStationName(dashboard, currTinfo.station);
                                    SetInput(dashboard, 1);
                                    SetOutput(dashboard, 1);
                                    SetRework(dashboard, 0);
                                    DBTool.InsertProductDashboard(dashboard);
                                    currTinfo.process = 1;
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                    if (isInsertSucc1)
                                    {
                                        m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                    }
                                    else
                                    {
                                        // TO DO F2DB
                                        currTinfo.PlatForm = "Testcam";
                                        currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                        FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                    }
                                }
                            }
                        }
                        else if (result == FAIL)
                        {
                            string lastWorkID = lastTinfo.work_id;
                            int lastTestResult = lastTinfo.result;
                            if (lastTestResult == PASS)
                            {
                                //last workid output-1
                                // new ProductDashboard(); dashboard.work_id = lastWorkID; //
                                ProductDashboard dashboard = DBTool.SelectProductDashboardItem(lastWorkID);
                                if (dashboard != null)
                                {
                                    dashboard.islastStation = this.IsFinalStation;
                                    dashboard.to_update_station_index = StationIndex.ToString();
                                }
                                    
                                if (dashboard != null)
                                {
                                    int output = GetOutput(dashboard);
                                    if (output > 0)
                                    {
                                        SetOutput(dashboard, output - 1); // TO DO
                                        DBTool.SetOutputChange(dashboard, -1);
                                        if (IsFinalStation)
                                            DBTool.SetAchieveChange(dashboard, -1);
                                        m_log.Info(currTinfo.test_index + " FAIL," + "output-- to " + (output - 1));
                                    }
                                    else
                                        m_log.Error("Output is already 0,canot --Output");
                                    SetStationName(dashboard, currSation);
                                    currTinfo.work_id = lastWorkID; //t1 P2F workid use 1st test's
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                    if (isInsertSucc1)
                                    {
                                        m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                        DBTool.UpdateDashboardItem(dashboard);
                                    }
                                    else
                                    {
                                        // TO DO F2DB
                                        currTinfo.PlatForm = "Testcam";
                                        currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                        FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                    }
                                }
                                else
                                {
                                    m_log.Error("Cannot find Dashboard from database with last work id " + lastWorkID);
                                }
                            }
                            else if (lastTestResult == FAIL)
                            {
                                if (currTinfo.failtimes == 3)
                                {
                                    // dashboard last work id: rework+1
                                    //new ProductDashboard(); dashboard.work_id = lastWorkID; //
                                    ProductDashboard dashboard = DBTool.SelectProductDashboardItem(lastWorkID);
                                    if (dashboard != null)
                                    {
                                        dashboard.islastStation = this.IsFinalStation;
                                        dashboard.to_update_station_index = StationIndex.ToString();
                                    }
                                        
                                    if (dashboard != null)
                                    {
                                        int rework = GetRework(dashboard);
                                        SetRework(dashboard, rework + 1);
                                        SetStationName(dashboard, currSation);
                                        DBTool.SetReworkChange(dashboard, 1);
                                        currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                        isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                        if (isInsertSucc1)
                                        {
                                            m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                            DBTool.UpdateDashboardItem(dashboard);
                                        }
                                        else
                                        {
                                            // TO DO F2DB
                                            currTinfo.PlatForm = "Testcam";
                                            currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                            FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                        }
                                    }
                                    else
                                    {
                                        m_log.Error("Cannot find Dashboard from database with last work id " + lastWorkID);
                                    }
                                }
                                else
                                {
                                    //No action for Dashboard
                                    currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                    if (isInsertSucc1)
                                    {
                                        m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                    }
                                    else
                                    {
                                        // TO DO F2DB
                                        currTinfo.PlatForm = "Testcam";
                                        currTinfo.IsLastStation = IsFinalStation ? "1" : "0";
                                        FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception e)
            {
                m_log.Info(e.ToString());
            }

            return isInsertSucc1;
        }

        public bool IsNewUIDWithNewWorkID(ProductTestInfo currTinfo, List<ProductTestInfo> tinfoRetrieved)
        {
            bool isNewUidAndNewWorkid = true;
            int c = tinfoRetrieved.Count();
            string workid = currTinfo.work_id;
            if (c > 0)
            {
                for(int i=0;i<c;i++)
                {
                    string workidComparedTo = tinfoRetrieved[i].work_id;
                    if (workid == workidComparedTo)
                    {
                        isNewUidAndNewWorkid = false;
                        break;
                    }    
                }
            }

            return isNewUidAndNewWorkid;
        }

        public ProductTestInfo GetLastTinfoWithSNFromRetrieved(ProductTestInfo currTinfo, List<ProductTestInfo> tinfoRetrieved)
        {
            ProductTestInfo tinfo = null;
            int count = tinfoRetrieved.Count();
            string snCompared = currTinfo.test_index;
            for (int i=count-1;i>=0;i--)
            {
                string snComparedTo = tinfoRetrieved[i].test_index;
                if(snCompared== snComparedTo)
                {
                    tinfo = tinfoRetrieved[i];
                    break;
                }
            }
            return tinfo;
        }
        //UID exist in database, retrieve based on sn,product,station
        public void UpdateTestInfoBasedOnDBStatus(ProductTestInfo currTinfo, List<ProductTestInfo> tinfoRetrieved)
        {
            int count = tinfoRetrieved.Count();
            currTinfo.frequency = count + 1;
            //failtimes
            if (currTinfo.result == FAIL)
            {
                ProductTestInfo lastTinfo = GetLastTinfoWithSNFromRetrieved(currTinfo, tinfoRetrieved);
                if(lastTinfo.result == FAIL)
                {
                    int fc = lastTinfo.failtimes;
                    currTinfo.failtimes = fc + 1;
                }
                if (currTinfo.failtimes == 3)
                    currTinfo.rework = 1;
                if(lastTinfo.rework == 1)
                    currTinfo.rework = 1;
            }
            else if (currTinfo.result == PASS)
                currTinfo.failtimes = 0;
        }

        public void UpdateTestInfoBasedOnDBStatus(ProductTestInfo currTinfo, ProductTestInfo lastTinfo)
        {
            currTinfo.frequency = lastTinfo.frequency + 1;
            //failtimes
            if (currTinfo.result == FAIL)
            {
                if (lastTinfo.result == FAIL)
                {
                    int fc = lastTinfo.failtimes;
                    currTinfo.failtimes = fc + 1;
                }
                if (currTinfo.failtimes == 3)
                    currTinfo.rework = 1;
                if (lastTinfo.rework == 1)
                    currTinfo.rework = 1;
            }
            else if (currTinfo.result == PASS)
                currTinfo.failtimes = 0;
        }


        public void SetStationName(ProductDashboard dashboard,string stationInTinfo)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string station = String.Format("s{0}_name", StationIndex);
                if (fieldName.Contains(station))
                {
                    f.SetValue(dashboard, stationInTinfo);
                    break;
                }
            }
        }

        public void SetInput(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = String.Format("s{0}_input", StationIndex);
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }     
            }
        }

        public int GetInput(ProductDashboard dashboard)
        {
            int input = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string inputFieldStr = String.Format("s{0}_input", StationIndex);
                if (fieldName.Contains(inputFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        input = int.Parse(str);
                    }
                    catch(Exception e)
                    {
                        m_log.Error("Here5 "+e.ToString());
                    }
                }
            }

            return input;
        }

        public void SetOutput(ProductDashboard dashboard, int outputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string output = String.Format("s{0}_output", StationIndex);
                if (fieldName.Contains(output))
                {
                    f.SetValue(dashboard, outputPara);
                    break;
                }     
            }

            if (IsFinalStation)
            {
                SetAchieve(dashboard, outputPara);
            }

            Tool.SetOutput(outputPara);
        }

        public int GetOutput(ProductDashboard dashboard)
        {
            int output = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string outputFieldStr = String.Format("s{0}_output", StationIndex);
                if (fieldName.Contains(outputFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        output = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here6 "+ e.ToString());
                    }
                }
            }

            return output;
        }

        public void SetRework(ProductDashboard dashboard, int reworkPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string rework = String.Format("s{0}_rework", StationIndex);
                if (fieldName.Contains(rework))
                {
                    f.SetValue(dashboard, reworkPara);
                    break;
                }  
            }
        }

        public int GetRework(ProductDashboard dashboard)
        {
            int rework = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string reworkFieldStr = String.Format("s{0}_rework", StationIndex);
                if (fieldName.Contains(reworkFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        rework = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here7 "+e.ToString());
                    }
                }
            }

            return rework;
        }

        public void SetFP(ProductDashboard dashboard, int fpPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string fp = String.Format("s{0}_fp", StationIndex);
                if (fieldName.Contains(fp))
                {
                    f.SetValue(dashboard, fpPara);
                    break;
                }
            }
        }

        public int GetFp(ProductDashboard dashboard)
        {
            int fp = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string fpFieldStr = String.Format("s{0}_fp", StationIndex);
                if (fieldName.Contains(fpFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        fp = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here7 " + e.ToString());
                    }
                }
            }

            return fp;
        }

        public void SetAchieve(ProductDashboard dashboard, int achievePara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string achieve = "achieve";
                if (fieldName.Contains(achieve))
                {
                    f.SetValue(dashboard, achievePara);
                    break;
                }
            }
        }

        public int GetAchieve(ProductDashboard dashboard)
        {
            int achieve = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string achieveStr = "achieve";
                if (fieldName.Contains(achieveStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        achieve = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here7 " + e.ToString());
                    }
                }
            }

            return achieve;
        }

        /// <summary>
        /// Adjust frequency if all of the sn,product,station,work_id,result are the same ones.
        /// </summary>
        private List<ProductTestInfo> AdjustFrequency(List<ProductTestInfo> list)
        {
            List<ProductTestInfo> listNew = new List<ProductTestInfo>();

            List<string> snList = new List<string>();
            List<string> productList = new List<string>();
            List<string> stationList = new List<string>();
            List<string> workidList = new List<string>();
            List<string> resList = new List<string>();
            List<string> frequencyList = new List<string>();

            foreach (ProductTestInfo item in list)
            {
                bool isExistSN = Tool.IsSameElement(snList, item.test_index);
                bool isExistProduct = Tool.IsSameElement(productList, item.product);
                bool isExistStation = Tool.IsSameElement(stationList, item.station);
                bool isExistWorkid = Tool.IsSameElement(workidList, item.work_id);
                bool isExistRes = Tool.IsSameElement(resList, Convert.ToString(item.result));

                if (!(isExistSN && isExistProduct && isExistStation && isExistWorkid && isExistRes))
                {
                    listNew.Add(item);

                    snList.Add(item.test_index);
                    productList.Add(item.product);
                    stationList.Add(item.station);
                    workidList.Add(item.work_id);
                    resList.Add(Convert.ToString(item.result));
                }
                else
                {
                    item.frequency++;
                    listNew.Add(item);                 
                }
            }

            return listNew;
        }

        private ProductTestInfo GenerateTestInfo(TestCamLog logObj)
        {
            ProductTestInfo testInfo = new ProductTestInfo();
            
            testInfo.test_index = logObj.SerialNumber;
            testInfo.result = (logObj.Status == "P") ? 1 : 0;
            testInfo.time = Tool.ConvertToTime(logObj);
            testInfo.pcmac = this.PCmac;

            string[] productInfos = GetProductInfo(logObj.EID);

            testInfo.station = productInfos[1];
            testInfo.work_id = this.WorkID;
            Int32.TryParse(productInfos[2], out int j);
            this.StationIndex = j;
            this.IsFinalStation = (productInfos[3] == "1") ? true : false;
            testInfo.product = productInfos[0];
            testInfo.IsLastStation = productInfos[3];
            testInfo.StationIndex = productInfos[2];
            testInfo.frequency = 1;
            testInfo.rework = 0;
            if (testInfo.result == 0)
                testInfo.errorinfo = "error info to be added.";
            else
                testInfo.errorinfo = "";
            testInfo.process = 0;  
            testInfo.failtimes = (logObj.Status == "P") ? 0 : 1;

            return testInfo;
        }

        private void BeforeEvent(EngineBase engine, FileHelpers.Events.BeforeReadEventArgs<TestCamLog> e)
        {
            bool isProductAndStationInfoLine = e.Record.Comment == "script";
            if(e.LineNumber<=LineNumFromScanInfoFile && !isProductAndStationInfoLine)
            {
                e.SkipThisRecord = true;
            }
        }

        private void AfterEvent(EngineBase engine, FileHelpers.Events.AfterReadEventArgs<TestCamLog> e)
        {
            LineNumReadout = e.LineNumber;

            bool isProductAndStationInfoLine = e.Record.Comment == "script"; 
            if (isProductAndStationInfoLine)
            {
                this.CurrEID = e.Record.EID; 
            }

            if (GladDebug)
            {
                if (e.Record.SerialNumber.Length >= AppSetting.Default.TestCamSNLen)
                {
                    if (this.CurrEID != "")
                        e.Record.EID = this.CurrEID;
                }
                else
                {
                    string s1 = "deadmouse_";
                    string t1 = DateTime.Now.ToString();
                    e.Record.SerialNumber = s1 + t1;
                }
            }
            else
            {
                if (e.Record.SerialNumber.Length >= AppSetting.Default.TestCamSNLen)
                {
                    if (this.CurrEID != "")
                        e.Record.EID = this.CurrEID;
                }
            }
        } 
    }
}
