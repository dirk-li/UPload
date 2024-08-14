using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
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
    class KineticCSVFileParser : ICSVFileParser
    {
        private int LineNumFromScanInfoFile = 0;
        private int LineNumReadout = 0;
        private string Station = "";
        private string WorkID = "";
        private string Product = "";
        private static KineticCSVFileParser uniqueInstance;
        private static readonly object locker = new object();
        private FileHelperEngine<KineticLog> engine;
        private FileHelperEngine<KineticAccessaryLog1> engine1;
        private FileHelperEngine<KineticAccessaryTxtLog> engine2;
        private ILog m_log = LogManager.GetLogger("log");
        private string PCmac = "";
        private Dictionary<string, string> mapSnTime = new Dictionary<string, string>();
        private readonly int PASS = 1;
        private readonly int FAIL = 0;
        private int StationIndex = 0;
        private string SNColumnName = "";
        private ScanInfoUpdate uj = new ScanInfoUpdate();
        private bool IsFinalStation = false;
        private bool IsAlreadyReadWorkID = false;
        private char[] TrimedFromWorkID = { '\n', '\r' };
        private readonly int TxtLogLineCount = 8;
        private KineticCSVFileParser()
        {
            engine = new FileHelperEngine<KineticLog>();
            engine1 = new FileHelperEngine<KineticAccessaryLog1>();
            engine2 = new FileHelperEngine<KineticAccessaryTxtLog>();
            Init();
        }

        /// <summary>
        /// </summary>
        /// <returns></returns>
        public static KineticCSVFileParser GetInstance()
        {
            lock (locker)
            {
                if (uniqueInstance == null)
                {
                    uniqueInstance = new KineticCSVFileParser();
                }
            }

            return uniqueInstance;
        }
        private void Init()
        {
            PCmac = Tool.GetMacByNetworkInterface();
            string stationIndexStr = uj.GetValue("Product_Station_Index");
            try
            {
                StationIndex = Int32.Parse(stationIndexStr);
            }
            catch (FormatException)
            {
                //m_log.Error($"Unable to parse station index '{stationIndexStr}'");
            }
            this.WorkID = uj.GetValue("Work-ID");
            string isFinalStationStr = uj.GetValue("IsFinalStation");
            if (isFinalStationStr == "True")
                IsFinalStation = true;
        }

        public void SetWorkID(string workiPara)
        {
            this.WorkID = workiPara;
        }
        public void ReadCSVFile(string fileName)
        {
            int s = fileName.LastIndexOf("\\");
            int e = fileName.LastIndexOf(".");
            String trimFileName = fileName.Substring(s + 1, e - s - 1);
            m_log.Info("new dll x1");
            //m_log.Info(trimFileName);

            LineNumFromScanInfoFile = uj.ReadLastOperLine(trimFileName);
            string stationIndexStr = uj.GetValue("Product_Station_Index");
            try
            {
                StationIndex = Int32.Parse(stationIndexStr);
            }
            catch (FormatException)
            {
                //m_log.Error($"Unable to parse station index '{stationIndexStr}'");
            }

            this.WorkID = uj.GetValue("Work-ID").TrimEnd(TrimedFromWorkID);
            string isFinalStationStr = uj.GetValue("IsFinalStation");
            if (isFinalStationStr == "True")
                IsFinalStation = true;

            int precessedRecordsCount = 0;
            try
            {
                SetWorkstationAndProductNameAndTimeDicAndSNColumnName(fileName);
                engine.BeforeReadRecord += BeforeEvent;
                engine.AfterReadRecord += AfterEvent;
                KineticLog[] logRecords = GetRecords(fileName, trimFileName);
                if (logRecords == null)
                    return;
                KineticLog[] filterdLogRecords = Filter(logRecords);
                precessedRecordsCount = Process((KineticLog[])filterdLogRecords);
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("Here1 "+ex_str);
            }

            if (precessedRecordsCount > 0)
            {
                uj.WriteLastOperLine(trimFileName, LineNumReadout);
            }
        }

        public KineticLog[] ReadCSVFileForRework(string fileName)
        {
            int s = fileName.LastIndexOf("\\");
            int e = fileName.LastIndexOf(".");
            String trimFileName = fileName.Substring(s + 1, e - s - 1);
            KineticLog[] filterdLogRecords = null;
            try
            {
                engine.BeforeReadRecord += BeforeEvent;
                engine.AfterReadRecord += AfterEvent;
                KineticLog[] logRecords = GetRecords(fileName, trimFileName);
                if (logRecords == null)
                    return null;
                filterdLogRecords = FilterForRework(logRecords);
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("ReadCSVFileForRework Exception " + ex_str);
            }

            return filterdLogRecords;
        }

        private KineticLog[] GetRecords(string csvFileName,string trimedFileName)
        {
            KineticLog[] logRecords = null;
            try
            {
                FileStream fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                
                logRecords = (KineticLog[])engine.ReadStream(sr);
                sr.Close();
            }
            catch(Exception ex)
            {
                string ex_str = ex.ToString();
                string key_str = "being used by another process";
                m_log.Error("Here2 "+ex_str);

                int loc = ex_str.IndexOf(key_str);
                if (loc > 0)
                {
                    string destFile = AppSetting.Default.OutputFolder + trimedFileName + ".csv";
                    System.IO.File.Copy(csvFileName, destFile, true);
                    logRecords = (KineticLog[])engine.ReadFile(destFile); ;
                    System.IO.File.Delete(destFile);
                }
            }

            return (KineticLog[])logRecords;
        }

        private KineticLog[] GetRecords(string csvFileName)
        {
            KineticLog[] logRecords = null;
            try
            {
                FileStream fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                logRecords = (KineticLog[])engine.ReadStream(sr);
            }
            catch (Exception ex)
            {
                string ex_str = ex.ToString();
                m_log.Error("GetRecords() Exception: " + ex_str);
            }

            return (KineticLog[])logRecords;
        }

        private KineticLog[] Filter(KineticLog[] logRecordsPara)
        {
            List<KineticLog> list = new List<KineticLog>();
            ScanInfoUpdate uj = new ScanInfoUpdate();
            string strStartTime = uj.GetValue("ServiceStartTime");
            DateTime startTime = DateTime.Parse(strStartTime);

            foreach (KineticLog record in logRecordsPara)
            {
                if (record.Status.Length > 1)
                    continue;
                if (record.sn != null && record.sn.Length >= AppSetting.Default.KineticSNLen)
                {
                    bool isAfter = true;
                    try
                    {
                        if(AppSetting.Default.IsGetTestTimeFromAccessaryFile)
                        {
                            string value = "";
                            bool f = mapSnTime.TryGetValue(record.sn, out value);
                            if(f)
                            {
                                DateTime testTime = DateTime.Parse(value);
                                record.Test_Start_Time = value;
                                if (testTime < startTime)
                                    isAfter = false;
                            }
                            else
                            {
                                isAfter = false;
                                m_log.Error(record.sn+" Cannot get SN time from accessary log.");
                            }
                            
                        }
                        else
                        {
                            string s = record.Test_Start_Time; //2019 / 12 / 20 / 23:59:42
                            string s1 = s.Trim();
                            int i = s1.LastIndexOf('/');
                            string s2 = s.Substring(0, i) + " " + s.Substring(i + 1);
                            DateTime testTime = DateTime.Parse(s2);
                            if (testTime < startTime)
                                isAfter = false;
                        }
                        
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here3 "+e.ToString());
                    }
                    if(isAfter)
                        list.Add(record);
                }
            }

            KineticLog[] logRecords = list.ToArray();
            return logRecords;
        }

        private KineticLog[] FilterForRework(KineticLog[] logRecordsPara)
        {
            List<KineticLog> list = new List<KineticLog>();
            ScanInfoUpdate uj = new ScanInfoUpdate();
            string strStartTime = uj.GetValue("ServiceStartTime");
            DateTime startTime = DateTime.Parse(strStartTime);

            foreach (KineticLog record in logRecordsPara)
            {
                if (record.Status.Length > 1)
                    continue;
                if (record.Status == "P" || record.Status=="F")
                {
                   list.Add(record);
                }
            }

            KineticLog[] logRecords = list.ToArray();
            return logRecords;
        }

        private string SetWorkId()
        {
            ScanInfoUpdate uj = new ScanInfoUpdate();
            this.WorkID = uj.GetValue("Work-ID");

            return this.WorkID;
        }

        public ProductTestInfo ReadAccessayFile()
        {
            ProductTestInfo readOne = null;

            try
            {
                string logFolder = uj.GetValue("KineticTestLogFolder");
                string accessaryLogName = uj.GetValue("WatchFileName");
                string fileName = Path.Combine(logFolder, accessaryLogName);
                FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                KineticAccessaryLog1[] logRecords = (KineticAccessaryLog1[])engine1.ReadStream(sr);
                if(logRecords.Length>0)
                {
                    KineticAccessaryLog1 theOnlyLine = logRecords[0];
                    ProductTestInfo pinfo = GenerateTestInfo(theOnlyLine);
                    readOne = pinfo;
                }
            }
            catch (Exception ex)
            {
                m_log.Error("Here41 " + ex.ToString());
            }

            return readOne;
        }

        public ProductTestInfo ReadAccessayTxtFile()
        {
            ProductTestInfo readOne = null;

            try
            {
                string logFolder = uj.GetValue("KineticTestLogFolder");
                string accessaryLogName = uj.GetValue("WatchFileName");
                string fileName = Path.Combine(logFolder, accessaryLogName);
                FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                KineticAccessaryTxtLog[] logRecords = (KineticAccessaryTxtLog[])engine2.ReadStream(sr);
                sr.Close();
                if (logRecords.Length == TxtLogLineCount)
                {
                    ProductTestInfo pinfo = GenerateTestInfo(logRecords);
                    readOne = pinfo;

                    TestContext.IsUseReworkProcess = true;
                }
                else
                {
                    m_log.Error("EIS_Control.txt Lines count error,it should be "+ TxtLogLineCount);
                    bool flag = IsCheckedInLineInsideExist(logRecords);
                    if (!flag)
                    {
                        m_log.Error("NO CheckedIn=0 in EIS_Control.txt,turn off the Rework function");
                        TestContext.IsUseReworkProcess = false;
                    }
                        
                    ProductTestInfo pinfo = GenerateTestInfo(logRecords);
                    readOne = pinfo;
                }
            }
            catch (Exception ex)
            {
                m_log.Error("Read EIS_Control.txt file exception " + ex.ToString());
            }

            return readOne;
        }

        // if "CheckedIn=0" exist,return true
        private bool IsCheckedInLineInsideExist(KineticAccessaryTxtLog[] logRecords)
        {
            if (logRecords == null || logRecords.Length == 0)
                return true;

            bool CheckedInLineInsideExist = false;
            for (int i = 0; i < logRecords.Length; i++)
            {
                String line = logRecords[i].ColumnContent;
                if (line.Contains("CheckedIn"))
                {
                    CheckedInLineInsideExist = true;
                    break;
                }
            }
            
            return CheckedInLineInsideExist;
        }

        private void SetWorkstationAndProductNameAndTimeDicAndSNColumnName(string logFileName)
        {
            KineticAccessaryLog1[] logRecords = null;
            try
            {
                string logFolder = uj.GetValue("KineticTestLogFolder");
                string accessaryLogName = uj.GetValue("WatchFileName");
                string fileName = Path.Combine(logFolder, accessaryLogName);
                FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                StreamReader sr = new StreamReader(fs);
                logRecords = (KineticAccessaryLog1[])engine1.ReadStream(sr);
            }
            catch (Exception ex)
            {
                m_log.Error("Here43 "+ex.ToString());
            }

            if (logRecords == null)
                m_log.Error("Not find Kinetic Accessary Log");
            else
            {
                mapSnTime.Clear();
                KineticAccessaryLog1 a = logRecords[logRecords.Length-1];
                this.Station = a.Station;
                this.Product = a.ProductName;
                foreach (KineticAccessaryLog1 log in logRecords)
                {
                    if (mapSnTime.ContainsKey(log.SN))
                        mapSnTime[log.SN] = log.TestTime;
                    else
                        mapSnTime.Add(log.SN,log.TestTime);
                }

                //auto search sn 
                string sn = a.SN;
                KineticLog[] logs = GetRecords(logFileName);
                bool isFind = false;
                for(int i= logs.Length-1; i>=0;i--)
                {
                    KineticLog logLine = logs[i];
                    Type type = logLine.GetType();
                    PropertyInfo[] fieldInfos = type.GetProperties();
                    foreach (var f in fieldInfos)
                    {
                        string fieldName = f.Name;
                        string filedNameVal = f.GetValue(logLine).ToString();
                        if(filedNameVal == sn)
                        {
                            SNColumnName = fieldName;
                            uj.WriteValue("SN_Column_Name", fieldName);
                            isFind = true;
                            break;
                        }
                        if (isFind)
                            break;
                    }
                }
                if(logs.Length>0)
                {
                    if (!isFind)
                        m_log.Error("Cannot find SN column.");
                }
            }
        }

        private int Process(KineticLog[] logRecords)
        {
            int processedRecordsCount = 0;
            List<ProductTestInfo> list = new List<ProductTestInfo>();
            //SetWorkId();

            if (logRecords.Any())
            {
                int index = 1;
                foreach (var record in logRecords)
                {
                    string sno = record.SeqNum;
                    string status = record.Status;
                    string comment = record.Comment;
                    string sn = record.sn;
                    m_log.Info("Print "+index + "   " + sno + " " + status + " " + comment + " " + sn);
                    index++;

                    //Convert to DB object
                    ProductTestInfo testInfo = GenerateTestInfo(record);
                    list.Add(testInfo);
                }
            }
            
            //insert to DB
            if (list.Count() > 0)
            {
                bool isInsertSucc = InsertAllFromOneScan(list);
                if (isInsertSucc)
                {
                    processedRecordsCount = list.Count;
                }
            }
            return processedRecordsCount;
        }

        public bool InsertAllFromOneScan(ProductTestInfo tinfo)
        {
            List<ProductTestInfo> list = new List<ProductTestInfo>();
            list.Add(tinfo);
            bool f = InsertAllFromOneScan(list);
            return f;
        }
        public bool InsertAllFromOneScan(List<ProductTestInfo> list)
        {
            bool isInsertSucc1 = true;
            foreach (ProductTestInfo currTinfo in list)
            {
                string sn = currTinfo.test_index;
                string product = currTinfo.product;
                string station = currTinfo.station;
                // retrieve based on sn,product,station
                List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, product, station);
                bool isTotallyNew = true;
                if(tinfoRetrieved != null)
                {
                    if (tinfoRetrieved.Count > 0)
                        isTotallyNew = false;
                }
                // precess for one log record    
                if (isTotallyNew)  // new UID(None is retrieved)
                {
                    string currTinfoWorkID = currTinfo.work_id;
                    string currSation = currTinfo.station;
                    //new ProductDashboard(); dashboard.work_id = currTinfoWorkID; //
                    ProductDashboard dashboard =  DBTool.SelectProductDashboardItem(currTinfoWorkID);
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

                            m_log.Info("Dashboard Inset" + currTinfo.test_index + "," +"both input,output set 1");
                            isInsertSucc1 = DBTool.InsertProductDashboard(dashboard);

                            currTinfo.process = 1;
                            m_log.Info("ProductTestInfo Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        }
                        else
                        {
                            int i = GetInput(dashboard);
                            int o = GetOutput(dashboard);
                            SetInput(dashboard, i + 1);
                            SetOutput(dashboard, o + 1);
                            SetStationName(dashboard, currSation);
                            int fp = GetFp(dashboard);
                            SetFP(dashboard, fp + 1);

                            DBTool.SetInputChange(dashboard,1);
                            DBTool.SetOutputChange(dashboard,1);
                            DBTool.SetFPChange(dashboard, 1);
                            if (IsFinalStation)
                                DBTool.SetAchieveChange(dashboard, 1);

                            m_log.Info("Dashboard Update " + currTinfo.test_index + "," + "both input,output ++1 to "+(i+1)+","+(o +1));
                            isInsertSucc1 = DBTool.UpdateDashboardItem(dashboard);

                            currTinfo.process = 1;
                            m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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
                            m_log.Info("Dashboard Inset" + currTinfo.test_index + "," + "input set 1");
                            isInsertSucc1 = DBTool.InsertProductDashboard(dashboard);
                            m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        }
                        else
                        {
                            int i = GetInput(dashboard);
                            SetInput(dashboard, i + 1);
                            m_log.Info("Dashboard Update " + currTinfo.test_index + "," + "input ++1 to "+(i+1));
                            SetStationName(dashboard, currSation);

                            DBTool.SetInputChange(dashboard, 1);

                            isInsertSucc1 = DBTool.UpdateDashboardItem(dashboard);
                            m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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
                    string currSation = currTinfo.station;
                    int result = currTinfo.result;
                    UpdateTestInfoBasedOnDBStatus(currTinfo, lastTinfo); //update frequcency,rework failtimes
                    if (result == PASS)
                    {
                        string lastTinfoWorkID = lastTinfo.work_id;
                        int lastTestResult = lastTinfo.result;
                        int lastRework = lastTinfo.rework;
                        if (lastTestResult == PASS)
                        {
                            //No action for Dashboard
                            m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            currTinfo.process = 1;
                            currTinfo.work_id = lastTinfo.work_id; //t1 P2P workid use 1st test's
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string currTinfoWorkID = currTinfo.work_id;
                            // new ProductDashboard(); dashboard.work_id = currTinfoWorkID;//
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
                                m_log.Info("Dashboard Update " + currTinfo.test_index + "," + "output ++1 to "+(output+1));
                                SetStationName(dashboard, currSation);

                                DBTool.SetOutputChange(dashboard, 1);
                                if (IsFinalStation)
                                    DBTool.SetAchieveChange(dashboard, 1);

                                isInsertSucc1 = DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (output + 1));

                                currTinfo.process = 1;
                                currTinfo.failtimes = 0;
                                currTinfo.rework = lastRework;
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                            else
                            {
                                m_log.Error("Cannot find Dashboard from database with work id " + currTinfoWorkID);
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                SetStationName(dashboard, currTinfo.station);
                                SetInput(dashboard, 1);
                                SetOutput(dashboard, 1);
                                SetRework(dashboard, 0);
                                m_log.Info("Dashboard Inset" + currTinfo.test_index + "," + "both input,output set 1");
                                isInsertSucc1 = DBTool.InsertProductDashboard(dashboard);

                                currTinfo.process = 1;
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                        }
                    }
                    else if (result == FAIL)
                    {
                        if (lastTinfo == null)
                        {
                            m_log.Error("Cannot get last Tinfo from Database");
                            break;
                        }
                        int lastTestResult = lastTinfo.result;
                        if (lastTestResult == PASS)
                        {
                            //last workid output-1
                            string lastWorkID = lastTinfo.work_id;
                            // new ProductDashboard(); //
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
                                    if(!IsF2POnRetestOnOtherTester(currTinfo, lastTinfo)) //t2
                                    {
                                        SetOutput(dashboard, output - 1); // TO DO
                                        DBTool.SetOutputChange(dashboard, -1);
                                        if (IsFinalStation)
                                            DBTool.SetAchieveChange(dashboard, -1);
                                        m_log.Info(currTinfo.test_index + " FAIL," + "output-- to " + (output - 1));
                                    }
                                }
                                else
                                    m_log.Error("Output is already 0,canot --Output");
                                SetStationName(dashboard, currSation);

                                isInsertSucc1 = DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                currTinfo.work_id = lastWorkID; //t1 P2F workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                            else
                            {
                                m_log.Error("Cannot find Dashboard from database with last work id " + lastWorkID);
                            }
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string lastWorkID = lastTinfo.work_id;
                            if (currTinfo.failtimes == 3)
                            {
                                // dashboard last work id: rework+1
                                // new ProductDashboard(); dashboard.work_id = lastWorkID; //
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
                                    DBTool.SetReworkChange(dashboard, 1);
                                    SetStationName(dashboard, currSation);

                                    m_log.Info("Dashboard Update " + currTinfo.test_index + "," + "rework ++1 to "+(rework + 1));
                                    isInsertSucc1 = DBTool.UpdateDashboardItem(dashboard);
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                    currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                }
                                else
                                {
                                    m_log.Error("Cannot find Dashboard from database with last work id " + lastWorkID);
                                }
                            }
                            else
                            {
                                //No action for Dashboard
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                        }
                    }
                }
            }

            return isInsertSucc1;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public bool UpdateDB(ProductTestInfo currTinfo, ProductTestInfo lastTinfo, ProductDashboard dashboard)
        {
            bool isInsertSucc1 = true;
            try
            {
                string sn = currTinfo.test_index;
                string product = currTinfo.product;
                string station = currTinfo.station;
                currTinfo.time = DBTool.GetMySqlTime();
                bool isTotallyNew = false;
                if (lastTinfo == null) isTotallyNew = true;
                else if (lastTinfo.work_id != currTinfo.work_id) isTotallyNew = true;
                // precess for one log record    
                if (isTotallyNew)  // new UID(None is retrieved)
                {
                    string currTinfoWorkID = currTinfo.work_id;
                    string currSation = currTinfo.station;
                    int result = currTinfo.result;
                    if (result == PASS)
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
                        m_log.Info("Insert new test_index " + "uid:" + currTinfo.test_index + "," + "result:" +
                           currTinfo.result + "," + "frequency:" + currTinfo.frequency+ "to product_test_info");
                        bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                        if(dbInsertSucc)
                        {
                            DBTool.UpdateDashboardItem(dashboard);
                            m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                            m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                            m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (o + 1));
                        }
                        else
                        {
                            // TO DO F2DB
                            currTinfo.PlatForm = "Kinetic";
                            FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                        }
                        
                    }
                    else if (result == FAIL)
                    {
                        int i = GetInput(dashboard);
                        SetInput(dashboard, i + 1);
                        SetStationName(dashboard, currSation);

                        DBTool.SetInputChange(dashboard, 1);

                        bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                        if(dbInsertSucc)
                        {
                            DBTool.UpdateDashboardItem(dashboard);
                            m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                            m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                        }
                        else
                        {
                            // TO DO F2DB
                            currTinfo.PlatForm = "Kinetic";
                            FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                        }
                        
                    }
                    else
                    {
                        m_log.Error("ProductTestInfo item \"result\" field isn't equal 0 or 1.");
                    }
                }   // End new UID(None is retrieved)
                else  // the UID exists in Database
                {
                    m_log.Info("the UID:" + currTinfo.test_index + " exists in Database");
                    int result = currTinfo.result;
                    string currSation = currTinfo.station;
                    UpdateTestInfoBasedOnDBStatus(currTinfo, lastTinfo);
                    if (result == PASS)
                    {
                        string lastTinfoWorkID = lastTinfo.work_id;
                        int lastTestResult = lastTinfo.result;
                        int lastRework = lastTinfo.rework;
                        if (lastTestResult == PASS)
                        {
                            //No action for Dashboard
                            m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                            currTinfo.process = 1;
                            currTinfo.work_id = lastTinfo.work_id; //t1 P2P workid use 1st test's
                            bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                            if(dbInsertSucc)
                            {
                                // TO DO F2DB
                            }
                            else
                            {
                                currTinfo.PlatForm = "Kinetic";
                                FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                            }
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string currTinfoWorkID = currTinfo.work_id;
                            if (dashboard != null)
                            {
                                int output = GetOutput(dashboard);
                                SetOutput(dashboard, output + 1);
                                SetStationName(dashboard, currSation);
                                DBTool.SetOutputChange(dashboard, 1);
                                currTinfo.process = 1;
                                currTinfo.failtimes = 0;
                                currTinfo.rework = lastRework;
                                bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                                if(dbInsertSucc)
                                {
                                    DBTool.UpdateDashboardItem(dashboard);
                                    m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                    m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (output + 1));
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Kinetic";
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
                                currTinfo.process = 1;
                                DBTool.InsertProductDashboard(dashboard);
                                bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                                if(dbInsertSucc)
                                {
                                    m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Kinetic";
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
                                bool dbInertSucc = DBTool.InsertProductTestInfo(currTinfo);
                                if(dbInertSucc)
                                {
                                    DBTool.UpdateDashboardItem(dashboard);
                                    m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Kinetic";
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
                                if (dashboard != null)
                                {
                                    int rework = GetRework(dashboard);
                                    SetRework(dashboard, rework + 1);
                                    SetStationName(dashboard, currSation);
                                    DBTool.SetReworkChange(dashboard, 1);
                                    currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                    bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                                    if(dbInsertSucc)
                                    {
                                        DBTool.UpdateDashboardItem(dashboard);
                                        m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                    }
                                    else
                                    {
                                        // TO DO F2DB
                                        currTinfo.PlatForm = "Kinetic";
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
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                bool dbInsertSucc = DBTool.InsertProductTestInfo(currTinfo);
                                if(dbInsertSucc)
                                {
                                    // TO DO F2DB
                                }
                                else
                                {
                                    // TO DO F2DB
                                    currTinfo.PlatForm = "Kinetic";
                                    FRS2DB.WriteTestInfoToCSVFile(currTinfo);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception e)
            {
                isInsertSucc1 = false;
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
                for (int i = 0; i < c; i++)
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

        private ProductTestInfo GenerateTestInfo(KineticLog logObj)
        {
            ProductTestInfo testInfo = new ProductTestInfo();
            testInfo.test_index = logObj.sn;
            //SetWorkstationAndProductName(testInfo.test_index);

            testInfo.result = (logObj.Status == "P")?1:0;
            testInfo.time = Tool.ConvertToTime(logObj.Test_Start_Time);
            testInfo.time = DBTool.GetMySqlTime();
            testInfo.pcmac = this.PCmac;
            testInfo.station = this.Station;
            testInfo.work_id = this.WorkID; 
            testInfo.product = this.Product;

            testInfo.frequency = 1;
            testInfo.rework = 0;  
            if(testInfo.result==0)
                testInfo.errorinfo = "error info to be added.";
            testInfo.process = 0;
            testInfo.failtimes = (logObj.Status == "P") ? 0 : 1;

            return testInfo;
        }

        private ProductTestInfo GenerateTestInfo(KineticAccessaryTxtLog[] logRecords)
        {
            ProductTestInfo testInfo = new ProductTestInfo();
            testInfo.CheckedIn = "2";
            try
            {
                if (!IsAlreadyReadWorkID)
                {
                    this.WorkID = uj.GetValue("Work-ID");
                    IsAlreadyReadWorkID = true;
                }

                string line1 = logRecords[0].ColumnContent;
                testInfo.test_index = line1.Substring(line1.IndexOf('=') + 1).Trim();

                string line2 = logRecords[1].ColumnContent;
                bool isHasDot = line2.Contains('.');
                if (isHasDot)
                {
                    string timeStr = line2.Substring(line2.IndexOf('=') + 1, (line2.IndexOf('.') - (line2.IndexOf('=') + 1)));
                    testInfo.time = Tool.ConvertToTime(timeStr.Trim());
                }
                else
                {
                    string timeStr = line2.Substring(line2.IndexOf('=') + 1);
                    testInfo.time = Tool.ConvertToTime(timeStr.Trim());
                }

                string line3 = logRecords[2].ColumnContent;
                string resStr = line3.Substring(line3.IndexOf('=') + 1);
                testInfo.result = (resStr.ToUpper().Contains("FAIL")) ? 0 : 1;

                string stationIndexline = logRecords[3].ColumnContent;
                string indexStr = stationIndexline.Substring(stationIndexline.IndexOf('=') + 1);
                testInfo.StationIndex = indexStr.Trim();
                Int32.TryParse(indexStr, out int j);
                this.StationIndex = j;

                string lastStationline = logRecords[4].ColumnContent;
                string lastStationStr = lastStationline.Substring(lastStationline.IndexOf('=') + 1);
                testInfo.IsLastStation = lastStationStr.Trim();
                this.IsFinalStation = (lastStationStr.Contains("1")) ? true : false;

                string line6 = logRecords[6].ColumnContent;
                testInfo.product = line6.Substring(line6.IndexOf('=') + 1).Trim();

                string line5 = logRecords[5].ColumnContent;
                //testInfo.station = testInfo.product + "@" + line5.Substring(line5.IndexOf('=') + 1).Trim();
                testInfo.station = line5.Substring(line5.IndexOf('=') + 1).Trim();

                if (logRecords.Length == TxtLogLineCount)
                {
                    string line7 = logRecords[7].ColumnContent;
                    if(line7.Contains("CheckedIn"))
                        testInfo.CheckedIn = line7.Substring(line7.IndexOf('=') + 1).Trim();
                }

                testInfo.work_id = this.WorkID;

                testInfo.pcmac = this.PCmac;
                testInfo.frequency = 1;
                testInfo.rework = 0;
                if (testInfo.result == 0)
                    testInfo.errorinfo = "";
                else
                    testInfo.errorinfo = "";
                testInfo.process = 0;
                //testInfo.failtimes = (resStr.ToUpper().Contains("FAIL")) ? 1 : 0;
                testInfo.failtimes = 0;  // cannot set value here
                testInfo.time = DBTool.GetMySqlTime();

                m_log.Info("Generated ProductTestInfo: ");
                m_log.Info("UID " + testInfo.test_index);
                m_log.Info("StationIndex " + testInfo.StationIndex);
                m_log.Info("StationName " + testInfo.station);
                m_log.Info("IsLastStation " + testInfo.IsLastStation);
                m_log.Info("Product " + testInfo.product);
                m_log.Info("CheckedIn " + testInfo.CheckedIn);
            }
            catch(Exception e)
            {
                testInfo = null;
                m_log.Error(e.ToString());
            }

            
            return testInfo;

        }
        //return true - not changed output
        //return false - changed output
        private bool IsF2POnRetestOnOtherTester(ProductTestInfo toInsertOne, ProductTestInfo lastOne)
        {
            bool flag = false;
            if (toInsertOne == null || lastOne == null)
                return flag;

            string uid1 = toInsertOne.test_index;
            string uid2 = lastOne.test_index;
            string mac1 = toInsertOne.pcmac;
            string mac2 = lastOne.pcmac;
            DateTime t1 = toInsertOne.time;
            DateTime t2 = lastOne.time;
            int comare = DateTime.Compare(t2,t1);
            if (comare > 0 && uid1 == uid2 && mac1 != mac2)  
                flag = true;
            return flag;
        }


        private ProductTestInfo GenerateTestInfo(KineticAccessaryLog1 logObj)
        {
            ProductTestInfo testInfo = new ProductTestInfo();
            if(!IsAlreadyReadWorkID)
            {
                this.WorkID = uj.GetValue("Work-ID");
                IsAlreadyReadWorkID = true;
            }
            
            testInfo.test_index = logObj.SN;
            testInfo.result = (logObj.Result == "PASS") ? 1 : 0;
            testInfo.time = Tool.ConvertToTime(logObj.TestTime);
            testInfo.pcmac = this.PCmac;
            testInfo.station = logObj.Station;
            testInfo.work_id = this.WorkID;
            testInfo.product = logObj.ProductName;

            testInfo.frequency = 1;
            testInfo.rework = 0;
            if (testInfo.result == 0)
                testInfo.errorinfo = "error info to be added.";
            else
                testInfo.errorinfo = "";
            testInfo.process = 0;
            testInfo.failtimes = (logObj.Result == "PASS") ? 0 : 1;
            testInfo.time = DBTool.GetMySqlTime();
            return testInfo;
        }

        private void BeforeEvent(EngineBase engine, BeforeReadEventArgs<KineticLog> e)
        {
            
        }

        private void AfterEvent(EngineBase engine, FileHelpers.Events.AfterReadEventArgs<KineticLog> e)
        {
            if (e.Record.Status.ToUpper() != "P" && e.Record.Status != "F")
                e.SkipThisRecord = true;
            /*
            this.LineNumReadout = e.LineNumber;
            if (AppSetting.Default.IsGetSNColumnNameFromJson &&  SNColumnName !="" )
            {
                string sn = "";
                Type type = e.Record.GetType();
                PropertyInfo[] fieldInfos = type.GetProperties();
                foreach (var f in fieldInfos)
                {
                    string fieldName = f.Name;
                    if (fieldName == SNColumnName)
                    {
                        sn = f.GetValue(e.Record).ToString();
                        break;
                    }
                }
                if (sn != "")
                    e.Record.sn = sn;
            }  
            */
        }
    }
}
