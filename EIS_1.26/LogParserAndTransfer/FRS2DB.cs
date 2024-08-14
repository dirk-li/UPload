using FileHelpers;
using FileHelpers.Events;
using log4net;
using LogParserAndTransfer.DB;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    public static class FRS2DB
    {
        private static readonly int PASS = 1;
        private static readonly int FAIL = 0;
        private static ILog m_log = LogManager.GetLogger("log");
        private static DirectoryInfo csvFolder = new DirectoryInfo(@"c:\Crola\");
        private static object syncRoot = new object();
        public static bool WriteTestInfoToCSVFile(ProductTestInfo currTinfo)
        {
            bool flag = true;
            currTinfo.time = DateTime.Now;
            try
            {
                string includeFileType = currTinfo.work_id + "_F2DBRS.csv"; 
                FileInfo[] csvFiles = csvFolder.GetFiles(includeFileType, SearchOption.TopDirectoryOnly);
                if(csvFiles.Length>0)
                {
                    AppendFRSFile(csvFiles[0].FullName, currTinfo);
                }
                else
                {
                    List<ProductTestInfo> list = new List<ProductTestInfo>();
                    list.Add(currTinfo);
                    CreateFRSFile(@"c:\Crola\"+ includeFileType,list);
                }
            }
            catch(Exception e)
            {
                flag = false;
                m_log.Error(e.Message);
            }

            return flag;
        }
        
        public static void AppendFRSFile(String fileName, ProductTestInfo rs)
        {
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    try
                    {
                        var engine = new FileHelperEngine<ProductTestInfo>();
                        engine.AppendToFile(fileName, rs);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.Message);
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during AppendFRSFile(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
        }
        
        public static void CreateFRSFile(String fileName,List<ProductTestInfo> rs)
        {
            if (rs == null)
                rs = new List<ProductTestInfo>();

            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    try
                    {
                        var engine = new FileHelperEngine<ProductTestInfo>();
                        using (var fs = File.Create(fileName))
                        using (var sw = new StreamWriter(fs))
                        {
                            engine.HeaderText = engine.GetFileHeader();
                            engine.WriteStream(sw, rs);
                            sw.Flush();
                            sw.Close();
                        }
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.Message);
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during AppendFRSFile(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
        }

        private static void BeforeEvent(EngineBase engine, BeforeReadEventArgs<ProductTestInfo> e)
        {
            if (e.LineNumber == 1)
            {
                e.SkipThisRecord = true;
            }
        }
        
        public static void UpdateFRSFile(String fileName, List<ProductTestInfo> res)
        {
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    try
                    {
                        var engine = new FileHelperEngine<ProductTestInfo>();
                        string header = engine.GetFileHeader();
                        engine.BeforeReadRecord += BeforeEvent;
                        engine.HeaderText = header;
                        engine.WriteFile(fileName, res);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.Message);
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during AppendFRSFile(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
        }
        
        public static List<ProductTestInfo> ReadFRSFile(String csvFileName)
        {
            List<ProductTestInfo> list = null;
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(1));
                if (acquired)
                {
                    try
                    {
                        var engine = new FileHelperEngine<ProductTestInfo>();
                        string header = engine.GetFileHeader();
                        engine.BeforeReadRecord += BeforeEvent;
                        list = engine.ReadFileAsList(csvFileName);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.Message);
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during AppendFRSFile(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }

            return list;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static void UploadTestInfoFromCSVFile(String csvFileName)
        {
            List<ProductTestInfo> list = ReadFRSFile(csvFileName);
            if (list == null)
                return;
            foreach(ProductTestInfo tinfo in list)
            {
                if (tinfo.DoneWithDB.Contains("1"))
                    continue;
                else
                {
                    bool flag = UploadTestInfo(tinfo);
                    if (flag)
                        tinfo.DoneWithDB = "1";
                }
                
            }
            UpdateFRSFile(csvFileName,list);
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private static bool UploadTestInfo(ProductTestInfo currTinfo)
        {
            bool isSucc = false;
            if (String.IsNullOrEmpty(currTinfo.test_index) ||
                String.IsNullOrEmpty(currTinfo.product) || String.IsNullOrEmpty(currTinfo.station))
                return false;

            List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(currTinfo.test_index,
                currTinfo.product, currTinfo.station);
            ProductTestInfo historicProductTestInfo = null;
            if (tinfoRetrieved != null && tinfoRetrieved.Count > 0)
                historicProductTestInfo = tinfoRetrieved[0];
            // frequency
            /*** skip by dirk
            if(historicProductTestInfo!=null)
            {
                List<ProductTestInfo> tinfoRetrievedSameWorkid =  DBTool.SelectProductTestInfoByWorkID(currTinfo.work_id, currTinfo.test_index,
                currTinfo.product, currTinfo.station);
                if (tinfoRetrievedSameWorkid != null && tinfoRetrievedSameWorkid.Count > 0)
                    historicProductTestInfo.frequency = tinfoRetrievedSameWorkid[0].frequency;
            }
            
            ***/
            if (historicProductTestInfo != null)
            {
                List<ProductTestInfo> tinfoRetrievedSameWorkid = DBTool.SelectProductTestInfo(currTinfo.work_id, currTinfo.test_index,
                currTinfo.product, currTinfo.station);
                if (tinfoRetrievedSameWorkid != null && tinfoRetrievedSameWorkid.Count > 0)
                    historicProductTestInfo.frequency = tinfoRetrievedSameWorkid[0].frequency;
            }

            ProductDashboard dashboard = DBTool.SelectProductDashboardItem(currTinfo.work_id);
            if (dashboard == null)
                return false;
            dashboard.to_update_station_index = currTinfo.StationIndex; 
            if (currTinfo.PlatForm.Contains("Kinetic"))
            {
                isSucc = UpdateDB_K(currTinfo, historicProductTestInfo, dashboard);
            }
            else if(currTinfo.PlatForm.Contains("Testcam"))
            {
                currTinfo.time = DateTime.Now;
                isSucc = UpdateDB_C(currTinfo, historicProductTestInfo);
            }
            else if (currTinfo.PlatForm.Contains("UTS"))
            {
                isSucc = UpdateDB_U(currTinfo, historicProductTestInfo, dashboard);
            }

            return isSucc;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static bool UpdateDB_K(ProductTestInfo currTinfo, ProductTestInfo lastTinfo, ProductDashboard dashboard)
        {
            bool isInsertSucc1 = true;
            try
            {
                string sn = currTinfo.test_index;
                string product = currTinfo.product;
                string station = currTinfo.station;
                String stationIndex = currTinfo.StationIndex;
                bool IsFinalStation = (currTinfo.IsLastStation.Contains("1")) ? true : false; ;
                currTinfo.time = DBTool.GetMySqlTime();
                bool isTotallyNew = false;
                if (lastTinfo == null) isTotallyNew = true;
                // precess for one log record    
                if (isTotallyNew)  // new UID(None is retrieved)
                {
                    string currTinfoWorkID = currTinfo.work_id;
                    string currSation = currTinfo.station;
                    int result = currTinfo.result;
                    if (result == PASS)
                    {
                        int i = DBTool.GetInput(dashboard, stationIndex); 
                        int o = DBTool.GetOutput(dashboard, stationIndex);
                        DBTool.SetInput(dashboard, i + 1, stationIndex);
                        DBTool.SetOutput(dashboard, o + 1, stationIndex);
                        int fp = DBTool.GetFp(dashboard, stationIndex);
                        DBTool.SetFP(dashboard, fp + 1, stationIndex);
                        DBTool.SetStationName(dashboard, currSation, stationIndex);

                        DBTool.SetInputChange(dashboard, 1);
                        DBTool.SetOutputChange(dashboard, 1);
                        DBTool.SetFPChange(dashboard, 1);
                        if (IsFinalStation)
                            DBTool.SetAchieveChange(dashboard, 1);

                        DBTool.UpdateDashboardItem(dashboard);

                        currTinfo.process = 1;
                        m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                        isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                        m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (o + 1));
                    }
                    else if (result == FAIL)
                    {
                        int i = DBTool.GetInput(dashboard, stationIndex);
                        DBTool.SetInput(dashboard, i + 1, stationIndex);
                        DBTool.SetStationName(dashboard, currSation, stationIndex);

                        DBTool.SetInputChange(dashboard, 1);

                        DBTool.UpdateDashboardItem(dashboard);
                        m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                        isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                    }
                    else
                    {
                        m_log.Error("ProductTestInfo item \"result\" field isn't equal 0 or 1.");
                    }
                }   // End new UID(None is retrieved)
                else  // the UID exists in Database
                {
                    int result = currTinfo.result;
                    string currSation = currTinfo.station;
                    UpdateTestInfoBasedOnDBStatus_K(currTinfo, lastTinfo);
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
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string currTinfoWorkID = currTinfo.work_id;
                            if (dashboard != null)
                            {
                                int output = DBTool.GetOutput(dashboard, stationIndex);
                                DBTool.SetOutput(dashboard, output + 1, stationIndex);
                                DBTool.SetStationName(dashboard, currSation, stationIndex);

                                DBTool.SetOutputChange(dashboard, 1);

                                DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (output + 1));

                                currTinfo.process = 1;
                                currTinfo.failtimes = 0;
                                currTinfo.rework = lastRework;
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                            else
                            {
                                m_log.Error("Cannot find Dashboard from database with work id " + currTinfoWorkID + ",Create a new Dashboard. ");
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                DBTool.SetStationName(dashboard, currTinfo.station, stationIndex);
                                DBTool.SetInput(dashboard, 1, stationIndex);
                                DBTool.SetOutput(dashboard, 1, stationIndex);
                                DBTool.SetRework(dashboard, 0, stationIndex);
                                DBTool.InsertProductDashboard(dashboard);

                                currTinfo.process = 1;
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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
                                int output = DBTool.GetOutput(dashboard, stationIndex);
                                if (output > 0)
                                {
                                    DBTool.SetOutput(dashboard, output - 1, stationIndex); // TO DO

                                    DBTool.SetOutputChange(dashboard, -1);
                                    if (IsFinalStation)
                                        DBTool.SetAchieveChange(dashboard, -1);

                                    m_log.Info(currTinfo.test_index + " FAIL," + "output-- to " + (output - 1));
                                }
                                else
                                    m_log.Error("Output is already 0,canot --Output");
                                DBTool.SetStationName(dashboard, currSation, stationIndex);
                                DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
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
                            if (currTinfo.failtimes == 3)
                            {
                                // dashboard last work id: rework+1
                                if (dashboard != null)
                                {
                                    int rework = DBTool.GetRework(dashboard, stationIndex);
                                    DBTool.SetRework(dashboard, rework + 1, stationIndex);
                                    DBTool.SetStationName(dashboard, currSation, stationIndex);

                                    DBTool.SetReworkChange(dashboard, 1);

                                    DBTool.UpdateDashboardItem(dashboard);
                                    m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
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
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static bool UpdateDB_U(ProductTestInfo currTinfo, ProductTestInfo lastTinfo, ProductDashboard dashboard)
        {
            bool isInsertSucc1 = true;
            try
            {
                string sn = currTinfo.test_index;
                string product = currTinfo.product;
                string station = currTinfo.station;
                String stationIndex = currTinfo.StationIndex;
                bool IsFinalStation = currTinfo.IsLastStation.Contains("1") ? true : false;
                dashboard.islastStation = IsFinalStation;
                currTinfo.time = DBTool.GetMySqlTime();
                bool isTotallyNew = false;
                if (lastTinfo == null) isTotallyNew = true;
                // precess for one log record    
                if (isTotallyNew)  // new UID(None is retrieved)
                {
                    string currTinfoWorkID = currTinfo.work_id;
                    string currSation = currTinfo.station;
                    int result = currTinfo.result;
                    if (result == PASS)
                    {
                        int i = DBTool.GetInput(dashboard, stationIndex);
                        int o = DBTool.GetOutput(dashboard, stationIndex);
                        DBTool.SetInput(dashboard, i + 1, stationIndex);
                        DBTool.SetOutput(dashboard, o + 1, stationIndex);
                        int fp = DBTool.GetFp(dashboard, stationIndex);
                        DBTool.SetFP(dashboard, fp + 1, stationIndex);
                        DBTool.SetStationName(dashboard, currSation, stationIndex);

                        DBTool.SetInputChange(dashboard, 1);
                        DBTool.SetOutputChange(dashboard, 1);
                        DBTool.SetFPChange(dashboard, 1);
                        if (IsFinalStation)
                            DBTool.SetAchieveChange(dashboard, 1);

                        DBTool.UpdateDashboardItem(dashboard);

                        currTinfo.process = 1;
                        m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                        isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                        m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (o + 1));
                    }
                    else if (result == FAIL)
                    {
                        int i = DBTool.GetInput(dashboard, stationIndex);
                        DBTool.SetInput(dashboard, i + 1, stationIndex);
                        DBTool.SetStationName(dashboard, currSation, stationIndex);

                        DBTool.SetInputChange(dashboard, 1);

                        DBTool.UpdateDashboardItem(dashboard);
                        m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                        isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                    }
                    else
                    {
                        m_log.Error("ProductTestInfo item \"result\" field isn't equal 0 or 1.");
                    }
                }   // End new UID(None is retrieved)
                else  // the UID exists in Database
                {
                    int result = currTinfo.result;
                    string currSation = currTinfo.station;
                    UpdateTestInfoBasedOnDBStatus_U(currTinfo, lastTinfo);
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
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string currTinfoWorkID = currTinfo.work_id;
                            if (dashboard != null)
                            {
                                int output = DBTool.GetOutput(dashboard, stationIndex);
                                DBTool.SetOutput(dashboard, output + 1, stationIndex);
                                DBTool.SetStationName(dashboard, currSation, stationIndex);

                                DBTool.SetOutputChange(dashboard, 1);

                                DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info(currTinfo.test_index + " PASS," + "output++ to " + (output + 1));

                                currTinfo.process = 1;
                                currTinfo.failtimes = 0;
                                currTinfo.rework = lastRework;
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                                currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            }
                            else
                            {
                                m_log.Error("Cannot find Dashboard from database with work id " + currTinfoWorkID + ",Create a new Dashboard. ");
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                DBTool.SetStationName(dashboard, currTinfo.station, stationIndex);
                                DBTool.SetInput(dashboard, 1, stationIndex);
                                DBTool.SetOutput(dashboard, 1, stationIndex);
                                DBTool.SetRework(dashboard, 0, stationIndex);
                                DBTool.InsertProductDashboard(dashboard);

                                currTinfo.process = 1;
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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
                                int output = DBTool.GetOutput(dashboard, stationIndex);
                                if (output > 0)
                                {
                                    DBTool.SetOutput(dashboard, output - 1, stationIndex); // TO DO

                                    DBTool.SetOutputChange(dashboard, -1);
                                    if (IsFinalStation)
                                        DBTool.SetAchieveChange(dashboard, -1);

                                    m_log.Info(currTinfo.test_index + " FAIL," + "output-- to " + (output - 1));
                                }
                                else
                                    m_log.Error("Output is already 0,canot --Output");
                                DBTool.SetStationName(dashboard, currSation, stationIndex);
                                DBTool.UpdateDashboardItem(dashboard);
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
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
                            if (currTinfo.failtimes == 3)
                            {
                                // dashboard last work id: rework+1
                                if (dashboard != null)
                                {
                                    int rework = DBTool.GetRework(dashboard, stationIndex);
                                    DBTool.SetRework(dashboard, rework + 1, stationIndex);
                                    DBTool.SetStationName(dashboard, currSation, stationIndex);

                                    DBTool.SetReworkChange(dashboard, 1);

                                    DBTool.UpdateDashboardItem(dashboard);
                                    m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                            currTinfo.result + "," + "frequency:" + currTinfo.frequency);
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
                                m_log.Info("Insert " + "uid:" + currTinfo.test_index + "," + "result:" +
                                    currTinfo.result + "," + "frequency:" + currTinfo.frequency);
                                currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
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

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static bool UpdateDB_C(ProductTestInfo currTinfo, ProductTestInfo lastTinfo)
        {
            bool isInsertSucc1 = true;
            try
            {
                string sn = currTinfo.test_index;
                string product = currTinfo.product;
                string station = currTinfo.station;
                bool IsFinalStation = currTinfo.IsLastStation == "1" ? true : false;
                String StationIndex = currTinfo.StationIndex;
                bool isTotallyNew = false;
                if (lastTinfo == null) isTotallyNew = true;
                // precess for one log record    
                if (isTotallyNew)  // new UID(None is retrieved)
                {
                    string currTinfoWorkID = currTinfo.work_id;
                    string currSation = currTinfo.station;
                    // new ProductDashboard(); dashboard.work_id = currTinfoWorkID; //
                    ProductDashboard dashboard = DBTool.SelectProductDashboardItem(currTinfoWorkID);
                    if (dashboard != null)
                    {
                        dashboard.islastStation = IsFinalStation;
                        dashboard.to_update_station_index = StationIndex;
                    }

                    int result = currTinfo.result;
                    if (result == PASS)
                    {
                        if (dashboard == null)
                        {
                            dashboard = new ProductDashboard();
                            dashboard.work_id = currTinfoWorkID;
                            dashboard.time = DBTool.GetMySqlTime();
                            DBTool.SetStationName(dashboard, currSation,StationIndex);
                            DBTool.SetInput(dashboard, 1, StationIndex);
                            DBTool.SetOutput(dashboard, 1, StationIndex);
                            DBTool.SetRework(dashboard, 0, StationIndex);
                            DBTool.SetFP(dashboard, 1, StationIndex);
                            DBTool.InsertProductDashboard(dashboard);
                            currTinfo.process = 1;
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            if (isInsertSucc1)
                            {
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            }
                            
                        }
                        else
                        {
                            int i = DBTool.GetInput(dashboard, StationIndex);
                            int o = DBTool.GetOutput(dashboard, StationIndex);
                            DBTool.SetInput(dashboard, i + 1, StationIndex);
                            DBTool.SetOutput(dashboard, o + 1, StationIndex);
                            int fp = DBTool.GetFp(dashboard, StationIndex);
                            DBTool.SetFP(dashboard, fp + 1, StationIndex);
                            DBTool.SetStationName(dashboard, currSation, StationIndex);

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
                            
                        }
                    }
                    else if (result == FAIL)
                    {
                        if (dashboard == null)
                        {
                            dashboard = new ProductDashboard();
                            dashboard.work_id = currTinfoWorkID;
                            dashboard.time = DBTool.GetMySqlTime();
                            DBTool.SetStationName(dashboard, currSation, StationIndex);
                            DBTool.SetInput(dashboard, 1, StationIndex);
                            DBTool.InsertProductDashboard(dashboard);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                            if (isInsertSucc1)
                            {
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                            }
                            
                        }
                        else
                        {
                            int i = DBTool.GetInput(dashboard, StationIndex);
                            DBTool.SetInput(dashboard, i + 1, StationIndex);
                            DBTool.SetStationName(dashboard, currSation, StationIndex);
                            DBTool.SetInputChange(dashboard, 1);
                            isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo); // TO DO
                            if (isInsertSucc1)
                            {
                                m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                m_log.Info(currTinfo.test_index + " ,input++ to " + (i + 1));
                                DBTool.UpdateDashboardItem(dashboard);
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
                    if (lastTinfo == null)
                    {
                        m_log.Error("Cannot get last Tinfo from Database");
                        return false;
                    }
                    int result = currTinfo.result;
                    string currSation = currTinfo.station;
                    UpdateTestInfoBasedOnDBStatus_C(currTinfo, lastTinfo);
                    if (result == PASS)
                    {
                        if (lastTinfo == null)
                        {
                            m_log.Error("Cannot get last Tinfo from Database");
                            return false;
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
                            
                        }
                        else if (lastTestResult == FAIL)
                        {
                            string currTinfoWorkID = currTinfo.work_id;
                            // new ProductDashboard(); dashboard.work_id = currTinfoWorkID; //
                            ProductDashboard dashboard = DBTool.SelectProductDashboardItem(currTinfoWorkID);
                            if (dashboard != null)
                            {
                                dashboard.islastStation = IsFinalStation;
                                dashboard.to_update_station_index = StationIndex;
                            }

                            if (dashboard != null)
                            {
                                int output = DBTool.GetOutput(dashboard, StationIndex);
                                DBTool.SetOutput(dashboard, output + 1, StationIndex);
                                DBTool.SetStationName(dashboard, currSation, StationIndex);
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
                                
                            }
                            else
                            {
                                m_log.Error("Cannot find Dashboard from database with work id " + currTinfoWorkID + ",Create a new Dashboard. ");
                                dashboard = new ProductDashboard();
                                dashboard.work_id = currTinfoWorkID;
                                dashboard.time = DBTool.GetMySqlTime();
                                DBTool.SetStationName(dashboard, currTinfo.station, StationIndex);
                                DBTool.SetInput(dashboard, 1, StationIndex);
                                DBTool.SetOutput(dashboard, 1, StationIndex);
                                DBTool.SetRework(dashboard, 0, StationIndex);
                                DBTool.InsertProductDashboard(dashboard);
                                currTinfo.process = 1;
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if (isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
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
                                dashboard.islastStation = IsFinalStation;
                                dashboard.to_update_station_index = StationIndex;
                            }

                            if (dashboard != null)
                            {
                                int output = DBTool.GetOutput(dashboard, StationIndex);
                                if (output > 0)
                                {
                                    DBTool.SetOutput(dashboard, output - 1, StationIndex); // TO DO
                                    DBTool.SetOutputChange(dashboard, -1);
                                    if (IsFinalStation)
                                        DBTool.SetAchieveChange(dashboard, -1);
                                    m_log.Info(currTinfo.test_index + " FAIL," + "output-- to " + (output - 1));
                                }
                                else
                                    m_log.Error("Output is already 0,canot --Output");
                                DBTool.SetStationName(dashboard, currSation, StationIndex);
                                currTinfo.work_id = lastWorkID; //t1 P2F workid use 1st test's
                                isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                if (isInsertSucc1)
                                {
                                    m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                    DBTool.UpdateDashboardItem(dashboard);
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
                                    dashboard.islastStation = IsFinalStation;
                                    dashboard.to_update_station_index = StationIndex;
                                }

                                if (dashboard != null)
                                {
                                    int rework = DBTool.GetRework(dashboard, StationIndex);
                                    DBTool.SetRework(dashboard, rework + 1, StationIndex);
                                    DBTool.SetStationName(dashboard, currSation, StationIndex);
                                    DBTool.SetReworkChange(dashboard, 1);
                                    currTinfo.work_id = lastWorkID; //t1 F2F workid use 1st test's
                                    isInsertSucc1 = DBTool.InsertProductTestInfo(currTinfo);
                                    if (isInsertSucc1)
                                    {
                                        m_log.Info("Insert " + currTinfo.test_index + "," + currTinfo.result + "," + currTinfo.frequency);
                                        DBTool.UpdateDashboardItem(dashboard);
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

        private static void UpdateTestInfoBasedOnDBStatus_C(ProductTestInfo currTinfo, ProductTestInfo lastTinfo)
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

        private static void UpdateTestInfoBasedOnDBStatus_U(ProductTestInfo currTinfo, ProductTestInfo lastTinfo)
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

        private static void UpdateTestInfoBasedOnDBStatus_K(ProductTestInfo currTinfo, ProductTestInfo lastTinfo)
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

    }




}
