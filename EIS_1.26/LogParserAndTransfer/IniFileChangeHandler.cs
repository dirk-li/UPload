using log4net;
using LogParserAndTransfer.DB;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace LogParserAndTransfer
{
    public class IniFileChangeHandler : IniFileChangeListener
    {
        private static int RecvIniFileUpdateCount = 1;
        private static int TestCount = 1;
        private static int LogFileUpdatedCount = 1;
        private static ILog m_log = LogManager.GetLogger("log");
        private UTSCSVFileParser parser = UTSCSVFileParser.GetInstance();
        private FileINI fileIniObj = new FileINI(@"C:\Crola\EIS_2.0.ini");
        private string section = "EIS_line_Info";
        private string section1 = "EIS_line_Info";
        private string EIS_upload_flag = "EIS_upload_flag";
        private string EIS_END_flag = "EIS_END_flag";
        private string UID = "UID";
        private string Product = "Product";
        private string Station = "Station";
        private string StationNumber = "StationNumber";
        private string EnableAchieve = "EnableAchieve";
        private string Rework_Fun = "Rework_Fun";
        private string EIS_FUN = "EIS_FUN";
        private string platform = "platform";
        private JObject deserialized = null;

        [MethodImpl(MethodImplOptions.Synchronized)]
        private void ReworkProcess(TestCamLog recored)
        {
            bool isUpdateDB = false;
            bool isNeedGetDashboardAgain = false;
            if(TestContext.CurrProductTestInfo.result==1) // curr DUT pass
            {
                if(TestContext.CurrProductTestInfo.rework==0)
                    isUpdateDB = true;
                else if(TestContext.CurrProductTestInfo.rework == 1)
                {
                    if(string.IsNullOrEmpty(TestContext.CurrDUTReworkInfo.reworkid))
                    {
                        isUpdateDB = true;
                        m_log.Info("a DUT with EIS rework=1,but no reworkid in QIS. "+ TestContext.UID+" , "+"Curr test Pass");
                    }
                    else
                    {
                        if (TestContext.CurrDUTReworkInfo.reworkstatus == "2") //already checkout
                            isUpdateDB = true;
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "-1")
                        {
                            isUpdateDB = false;
                            SyncDisplayInputDialog(recored, true);
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "0") // already scan in by pad
                        {
                            isUpdateDB = false;
                            DisplayStatusDialogInThread(TestContext.UID, @"已进入维修系统,未完成维修",
                                    TestContext.CurrDUTReworkInfo.reworkid);
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "3")
                        {
                            isUpdateDB = false;
                            DisplayStatusDialogInThread(TestContext.UID, @"报废",
                                TestContext.CurrDUTReworkInfo.reworkid);
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "1")
                        {
                            isUpdateDB = false;
                            DisplayStatusDialogInThread(TestContext.UID, @"已进入维修系统,正在维修中.",
                                    TestContext.CurrDUTReworkInfo.reworkid);
                        }
                    }
                }
            }  
            else if(TestContext.CurrProductTestInfo.result == 0) // curr DUT fail
            {
               if(TestContext.HistoricProductTestInfo==null)
               {
                    isUpdateDB = true;
               }
               else
               {
                    if (TestContext.HistoricProductTestInfo.failtimes >= 2)
                    {
                        if (TestContext.HistoricProductTestInfo.rework == 0) // EIS rework=0
                        {
                            //need check in rework sys
                            //1.show input dialog 2.insert QIS 3.update EIS rework=1
                            // then 
                            //DisplayInputDialogInThread(recored);
                            SyncDisplayInputDialog(recored);
                            isUpdateDB = true;
                            isNeedGetDashboardAgain = true;
                        }
                        else if (TestContext.HistoricProductTestInfo.rework == 1) // EIS rework=1
                        {
                            if (string.IsNullOrEmpty(TestContext.CurrDUTReworkInfo.reworkid))
                            {
                                isUpdateDB = true;
                                m_log.Info("a DUT with EIS rework=1,but no reworkid in QIS. " + TestContext.UID + " , " + "Curr test Fail");
                            }
                            else
                            {
                                if (TestContext.CurrDUTReworkInfo.reworkstatus == "2") //already checkout
                                {
                                    //need re-check in rework sys
                                    //1.show input dialog 2.insert QIS 3.update EIS rework=1
                                    if ((TestContext.HistoricProductTestInfo.frequency + 1) % 3 == 0)
                                    {
                                        SyncDisplayInputDialog(recored);
                                    }
                                    isUpdateDB = true;
                                    isNeedGetDashboardAgain = true;
                                }
                                else if (TestContext.CurrDUTReworkInfo.reworkstatus == "-1")
                                {
                                    isUpdateDB = false;
                                    SyncDisplayInputDialog(recored, true);
                                }
                                else if (TestContext.CurrDUTReworkInfo.reworkstatus == "0") // still on check in
                                {
                                    isUpdateDB = false;
                                    DisplayStatusDialogInThread(TestContext.UID, @"已进入维修系统,未完成维修",
                                        TestContext.CurrDUTReworkInfo.reworkid);
                                }
                                else if (TestContext.CurrDUTReworkInfo.reworkstatus == "3")
                                {
                                    isUpdateDB = false;
                                    DisplayStatusDialogInThread(TestContext.UID, @"报废",
                                        TestContext.CurrDUTReworkInfo.reworkid);
                                }
                                else if (TestContext.CurrDUTReworkInfo.reworkstatus == "1")
                                {
                                    isUpdateDB = false;
                                    DisplayStatusDialogInThread(TestContext.UID, @"已进入维修系统,正在维修中.",
                                            TestContext.CurrDUTReworkInfo.reworkid);
                                }
                                else if (TestContext.CurrDUTReworkInfo.reworkstatus == "")
                                {
                                    SyncDisplayInputDialog(recored);
                                    isUpdateDB = true;
                                    isNeedGetDashboardAgain = true;
                                }
                            }
                        }
                    }
                    else
                        isUpdateDB = true;
                }
            }
            if(isUpdateDB)
            {
                //if(isNeedGetDashboardAgain)
                {
                    ProductDashboard dashboard = DBTool.SelectProductDashboardItem(TestContext.Workid);
                    if (dashboard!=null)
                    {
                        dashboard.to_update_station_index = TestContext.Stationindex;
                        dashboard.islastStation = TestContext.Islaststation;
                        TestContext.Dashboard = dashboard;
                    }
                       
                }
                parser.UpdateDB(recored, TestContext.HistoricProductTestInfo, TestContext.Dashboard);
            }
            else
                fileIniObj.WriteIni(section, "ForceTestFail", "1");
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private void FillTestContextInfo()
        {
            //EIS,fill Historic TestInfo
            if(TestContext.IsUseEIS)
            {
                string sn = TestContext.UID;
                string product = TestContext.Product;
                string station = TestContext.Stationname;
                //List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, product, product+"@"+station);
                List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, product, station);
                if (tinfoRetrieved != null && tinfoRetrieved.Count > 0)
                    TestContext.HistoricProductTestInfo = tinfoRetrieved[0];
                else
                    TestContext.HistoricProductTestInfo = null;

                m_log.Info("Fill TestContext Info with HistoricProductTestInfo.");
            }

            //QIS, fill rework info
            if (TestContext.IsUseEIS && TestContext.IsUseReworkProcess)
            {
                QueryRework reworkObj = new QueryRework();
                reworkObj.failedstationname = TestContext.Stationname;
                reworkObj.product = TestContext.Product;
                reworkObj.uid = TestContext.UID;
                ReworkStatus reworkInfo = QISHandler.GetRework(reworkObj);
                TestContext.CurrDUTReworkInfo = reworkInfo;
                m_log.Info("Fill Curr DUT ReworkInfo Info.");
            }
        }
        
        [MethodImpl(MethodImplOptions.Synchronized)]
        public void ActionOnIniFileChanged()
        {
            m_log.Info("Changed index "+"No." + RecvIniFileUpdateCount);
            RecvIniFileUpdateCount++;
            JObject jObject = ReadIniToJson();
            m_log.Info(".ini file content:"+jObject.ToString());
            if(IsTestStarting(jObject))
            {
                m_log.Info("Testing index "+"No." +TestCount);
                TestCount++;
                deserialized = jObject;
                ActionForTestStarting(jObject);
            }
            else
            {
                m_log.Info(".ini file is updated not for test starting,ignore this.");
            }
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public JObject ReadIniToJson()
        {
            bool isAlreadyShowMessage = false;
            StringBuilder sb = new StringBuilder();
            sb.Append("{");
            string item = string.Format("\"{0}\":\"{1}\",", EIS_upload_flag, fileIniObj.ReadIni(section, EIS_upload_flag));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", EIS_END_flag, fileIniObj.ReadIni(section, EIS_END_flag));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", UID, fileIniObj.ReadIni(section, UID));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", Product, fileIniObj.ReadIni(section1, Product));
            if(String.IsNullOrEmpty(item))
            {
                isAlreadyShowMessage = true;
                Tool.ShowWarningMessage("Warning", @"测试过程不能得到机种信息，请重新启动UTS 程序。");
            }
                
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", Station, fileIniObj.ReadIni(section1, Station));
            if (String.IsNullOrEmpty(item) && !isAlreadyShowMessage)
                Tool.ShowWarningMessage("Warning", @"测试过程不能得到测试站别名称信息，请重新启动UTS 程序。");
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", StationNumber, fileIniObj.ReadIni(section1, StationNumber));
            if (String.IsNullOrEmpty(item) && !isAlreadyShowMessage)
                Tool.ShowWarningMessage("Warning", @"测试过程不能得到测试站别次序信息，请重新启动UTS 程序。");
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", EnableAchieve, fileIniObj.ReadIni(section1, EnableAchieve));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", Rework_Fun, fileIniObj.ReadIni(section1, Rework_Fun));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", EIS_FUN, fileIniObj.ReadIni(section1, EIS_FUN));
            sb.Append(item);
            item = string.Format("\"{0}\":\"{1}\",", platform, fileIniObj.ReadIni(section1, platform));
            sb.Append(item);
            sb.Append("}");
            JObject jObject = JObject.Parse(sb.ToString());
            return jObject;
    }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private bool IsTestStarting(JObject jObject)
        {
            bool isStart = false;
            if(jObject[EIS_upload_flag].ToString()=="1" &&
                //jObject[EIS_END_flag].ToString() == "0" &&
                 jObject[UID].ToString() != "-")
            {
                isStart = true;
            }
            return isStart;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private void ActionForTestStarting(JObject deserialized)
        {
            string product = "";
            string uid = "";
            string stationname = "";
            string stationindex = "";
            string islaststation = "";
            string platform1 = "";
            TestContext.Product = "";
            TestContext.UID = "";
            TestContext.Stationname = "";
            TestContext.Stationindex = "";
            TestContext.Teststatus = 2;
            string response = "";
            product = deserialized[Product].ToString();
            uid = deserialized[UID].ToString();
            stationname = deserialized[Station].ToString();
            stationindex = deserialized[StationNumber].ToString();
            islaststation = deserialized[EnableAchieve].ToString();
            platform1 = deserialized[platform].ToString();
            if (product != "" && uid != "" && stationname != "" && stationindex != "" && islaststation != "")
            {
                TestContext.Product = product;
                TestContext.UID = uid;
                TestContext.Stationname = stationname;
                TestContext.Stationindex = stationindex;
                TestContext.Islaststation = islaststation == "1";
                TestContext.Teststatus = 1;
                TestContext.DUTTestTime = DateTime.Now;
                TestContext.CurrProductTestInfo = null;
                TestContext.HistoricProductTestInfo = null;
                //TestContext.Dashboard = null;
                TestContext.CurrDUTReworkInfo = null;
                TestContext.Platform = (platform1 != "") ? platform1: TestContext.Platform;
                if(TestContext.UseNetwork)
                {
                    TestContext.IsUseEIS = (deserialized[EIS_FUN].ToString().ToUpper() == "YES") ? true : false;
                    TestContext.IsUseReworkProcess = (deserialized[Rework_Fun].ToString().ToUpper() == "YES") ? true : false;
                }
                response = "OK";
                m_log.Info("TestContext content:" + "Product " + TestContext.Product + ";" +
                    "UID " + TestContext.UID + ";" + "Station name " + TestContext.Stationname + ";" +
                    "Stationindex " + TestContext.Stationindex + ";" + "Islaststation " + TestContext.Islaststation + ";" +
                    "Teststatus " + ((TestContext.Teststatus==1)?"Running": "Idle"));
            }
            else
            {
                response = "Parameter in this .ini file isn't correct";
            }

            FillTestContextInfo();
            /*
            Thread t = new Thread(FillTestContextInfo);
            t.IsBackground = true;
            t.Start();
            */
            
            m_log.Info(response);
            m_log.Info("Set EIS_upload_flag 0");
            fileIniObj.WriteIni(section, EIS_upload_flag, "0");
            fileIniObj.WriteIni(section, "ForceTestFail", "0");
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public void ActionForTestEnd() // log update event triger this
        {
            m_log.Info("Enter ActionForTestEnd()");
            m_log.Info("Log file Updated index " + "No." + LogFileUpdatedCount);
            LogFileUpdatedCount++;
            if(TestContext.Teststatus!=1)
            {
                m_log.Info("Abort this,for TestContext.Teststatus isn't set for test starting");
                return;
            }

            try
            {
                if (!TestContext.IsUseEIS)
                {
                    return;
                }
                //get result from log 
                TestCamLog recored = parser.ReadLastRecorodFromCSVFile(TestContext.LogFile);
                ProductTestInfo currTestInfo = parser.GenerateTestInfo(recored);
                //
                if (TestContext.HistoricProductTestInfo!=null)
                {
                    DateTime lastTestTime = TestContext.HistoricProductTestInfo.time;
                    DateTime now = TestContext.DUTTestTime;
                    TimeSpan dur = now - lastTestTime;
                    if(dur.Seconds<60)
                    {
                        string sn = TestContext.UID;
                        string pro = TestContext.Product;
                        string station = TestContext.Stationname;
                        List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, pro, pro + "@" + station);
                        if (tinfoRetrieved != null && tinfoRetrieved.Count > 0)
                            TestContext.HistoricProductTestInfo = tinfoRetrieved[0];
                    }
                    
                    currTestInfo.rework = TestContext.HistoricProductTestInfo.rework;
                }
                ProductDashboard dashboard = DBTool.SelectProductDashboardItem(TestContext.Workid);
                if (dashboard != null && !String.IsNullOrEmpty(TestContext.Stationindex))
                {
                    dashboard.islastStation = TestContext.Islaststation;
                    dashboard.to_update_station_index = TestContext.Stationindex;
                }
                if(dashboard != null)   
                    TestContext.Dashboard = dashboard;

                string product = "";
                string uid = "";
                string stationname = "";
                if (deserialized == null)
                {
                    m_log.Error("Exception:Stored test starting info is null.");
                    Tool.ShowWarningMessageOnThread("Warning", "Exception:Stored test starting info is null.");
                    return;
                }

                if (currTestInfo == null)
                {
                    m_log.Error("Exception:Read last record from log is null.");
                    Tool.ShowWarningMessageOnThread("Warning", "Exception:Read last record from log is null.");
                    return;
                }
                TestContext.Teststatus = 2;
                //fill TestContext currProductTestInfo
                TestContext.CurrProductTestInfo = currTestInfo;
                product = deserialized[Product].ToString();
                uid = deserialized[UID].ToString();
                stationname = deserialized[Station].ToString();
                if (product != TestContext.Product || uid != TestContext.UID || stationname != TestContext.Stationname)
                {
                    m_log.Error("Exception:Parameters not match between test starting and end..");
                    Tool.ShowWarningMessageOnThread("Warning", "Exception:Parameters not match between test starting and end.");
                    return;
                }

                if (TestContext.CurrProductTestInfo == null)
                {
                    m_log.Error("Exception:TestContext.CurrProductTestInfo is null.");
                    Tool.ShowWarningMessageOnThread("Warning", "Exception:TestContext.CurrProductTestInfo is null.");
                    return;
                }

                if (TestContext.IsUseEIS && !TestContext.IsUseReworkProcess)
                {
                    // usual EIS process
                    parser.UpdateDB(recored, TestContext.HistoricProductTestInfo, TestContext.Dashboard);
                }
                else if (TestContext.IsUseEIS && TestContext.IsUseReworkProcess)
                {
                    if(TestContext.CurrDUTReworkInfo!=null)
                        ReworkProcess(recored);
                    else
                    {
                        parser.UpdateDB(recored, TestContext.HistoricProductTestInfo, TestContext.Dashboard);
                        Tool.ShowWarningMessageOnThread("Warning", "Exception: Cann't get CurrDUTReworkInfo before enter ReworkProcess.");
                    }
                }
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }
            finally
            {
                ResponseAllowToUTS();
            }
        }

        private void ResponseAllowToUTS()
        {
            m_log.Info("Set EIS_END_flag 1");
            fileIniObj.WriteIni(section, EIS_END_flag, "1");
            m_log.Info("Set UID -");
            fileIniObj.WriteIni(section, UID, "-");
        }


        //sync
        private void SyncDisplayInputDialog(TestCamLog recored, bool isVerifyReworkId = false)
        {
            try
            {
                System.Windows.Application.Current.Dispatcher.Invoke(
                    DispatcherPriority.Normal, new DoMywork(DisplayInputDialog), recored, isVerifyReworkId);
            }
            catch (Exception e)
            {
                m_log.Error(e.ToString());
            }
        }

        private void DisplayInputDialog(TestCamLog recored, bool isVerifyReworkId)
        {
            try
            {
                string[] errorElements = GetErrorElements(TestContext.CurrProductTestInfo.errorinfo); //{errorcode,errordescription,failedvalue
                StringBuilder sb = new StringBuilder();
                sb.Append("{");
                string item = string.Format("\"{0}\":\"{1}\",", "errorcode", errorElements[1]);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "errordescription", errorElements[1]);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "failedstationname", TestContext.Stationname);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "failedstationsequence", TestContext.Stationindex);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "failedvalue", errorElements[2]);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "product", TestContext.Product);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "uid", TestContext.UID);
                sb.Append(item);
                item = string.Format("\"{0}\":\"{1}\",", "workid", TestContext.Workid);
                sb.Append(item);
                sb.Append("}");
                JObject jObject = JObject.Parse(sb.ToString());
                ReworkidInputDialog reworkidInputDialog = new ReworkidInputDialog(jObject, recored, isVerifyReworkId);
                System.Windows.Application.Current.Dispatcher.Invoke(System.Windows.Threading.DispatcherPriority.Render,
                    new Action(() => reworkidInputDialog.Focus()));
                reworkidInputDialog.ShowDialog();
            }
            catch(Exception e)
            {
                Tool.ShowWarningMessageOnThread("Warnning", "Exception: During show reworkid input dialog,"+e.ToString());
            }
        }

        private string[] GetErrorElements(string logComments)
        {
            //Read X0_X1_X2=Hand OUT MSE IN RCV OUT->452:161;
            string[] errorElements = new string[3];
            int pos = logComments.LastIndexOf('>');
            try
            {
                string descrip = logComments.Substring(0,pos-1);
                string section2 = logComments.Substring(pos+1);
                string errorec = section2.Split(':')[0];
                string errorval = section2.Split(':')[1];
                errorElements[0] = errorec;
                errorElements[1] = descrip;
                errorElements[2] = errorval;
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }

            return errorElements;
        }
        //async
        private delegate void DoMywork(TestCamLog recored, bool isVerifyReworkId = false);
        private void DisplayInputDialogInThread(TestCamLog recored)
        {
            Thread t = new Thread(() =>
            {
                try
                {
                    System.Windows.Application.Current.Dispatcher.Invoke(
                        DispatcherPriority.Normal, new DoMywork(DisplayInputDialog), recored);
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                }
            });
            t.IsBackground = true;
            t.Start();
        }

        private void DisplayStatusDialog(string uid, string status, string reworkid)
        {
            StatusDialog statusDialog = new StatusDialog(uid, status, reworkid);
            statusDialog.ShowDialog();
        }
        private delegate void DoMywork1(string uid, string status, string reworkid);
        private void DisplayStatusDialogInThread(string uid,string status,string reworkid)
        {
            Thread t = new Thread(() =>
            {
                try
                {
                    System.Windows.Application.Current.Dispatcher.Invoke(
                        DispatcherPriority.Normal, new DoMywork1(DisplayStatusDialog), uid,status,reworkid);
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                }
            });
            t.IsBackground = true;
            t.Start();
        }
    }
}
