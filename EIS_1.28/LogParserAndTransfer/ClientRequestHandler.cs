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

namespace LogParserAndTransfer
{
    public class ClientRequestHandler
    {
        private static ILog m_log = LogManager.GetLogger("log");
        private UTSCSVFileParser parser = UTSCSVFileParser.GetInstance();

        //request --- 1:Send?IsUseReworkProcess==={"UseReworkProcess":"Yes"}
        //request --- 1:Send?TestStarted==={
        //                                  "product":"Heka",
        //                                  "uid":"abcdefghigh",
        //                                  "stationname":"FT",
        //                                  "stationindex":"1",
        //                                  "islaststation":"Yes"
        //}

        //request --- 1:Get?IsAllowTestNextDUTOnCurrCompleted==={
        //                                  "product":"Heka",
        //                                  "uid":"abcdefghigh",
        //                                  "stationname":"FT",
        //}

        [MethodImpl(MethodImplOptions.Synchronized)]
        public string HandleRequest(string request)
        {
            string para = request.Substring(request.LastIndexOf('=') + 1);
            string response = "";
            JObject deserialized = null;
            try
            {
                deserialized = JObject.Parse(para);
            }
            catch (Exception e)
            {
                m_log.Error(e.ToString());
            }
            if(deserialized==null)
            {
                response = "parameter format is wrong.";
                return response;
            }

            if (request.StartsWith("1:Send?IsUseReworkProcess"))
            {
                if (deserialized.ContainsKey("UseReworkProcess"))
                {
                    string val = deserialized["UseReworkProcess"].ToString();
                    if (!string.IsNullOrEmpty(val))
                    {
                        if (val.ToUpper() == "YES")
                            TestContext.IsUseReworkProcess = true;
                        else
                            TestContext.IsUseReworkProcess = false;
                    }
                    else
                        TestContext.IsUseReworkProcess = false;
                    m_log.Info("UseReworkProcess Str:" + val + ";IsUseReworkProcess:" + TestContext.IsUseReworkProcess);
                    response = "OK" + ";IsUseReworkProcess:" + TestContext.IsUseReworkProcess;
                }
                else
                {
                    m_log.Error("Not contain key word of IsUseReworkProcess");
                    response = "Parameter in this command isn't correct";
                }

            }
            else if (request.StartsWith("1:Send?TestStarted"))
            {
                string product = "";
                string uid = "";
                string stationname = "";
                string stationindex = "";
                string islaststation = "";
                string uidColumnNameInLog = "";
                TestContext.Product = "";
                TestContext.UID = "";
                TestContext.Stationname = "";
                TestContext.Stationindex = "";
                TestContext.Teststatus = 2;

                if (deserialized.ContainsKey("product"))
                {
                    product = deserialized["product"].ToString();
                }
                if (deserialized.ContainsKey("uid"))
                {
                    uid = deserialized["uid"].ToString();
                }
                if (deserialized.ContainsKey("stationname"))
                {
                    stationname = deserialized["stationname"].ToString();
                }
                if (deserialized.ContainsKey("stationindex"))
                {
                    stationindex = deserialized["stationindex"].ToString();
                }
                if (deserialized.ContainsKey("islaststation"))
                {
                    islaststation = deserialized["islaststation"].ToString();
                }
                if (deserialized.ContainsKey("uid_column_name_in_log"))
                {
                    uidColumnNameInLog = deserialized["uid_column_name_in_log"].ToString();
                }
                if (product != "" && uid != "" && stationname != "" && stationindex != "" && islaststation != "")
                {
                    TestContext.Product = product;
                    TestContext.UID = uid;
                    TestContext.Stationname = stationname;
                    TestContext.Stationindex = stationindex;
                    TestContext.Islaststation = islaststation.ToUpper() == "YES";
                    TestContext.Teststatus = 1;
                    TestContext.DUTTestTime = DateTime.Now;
                    TestContext.CurrProductTestInfo = null;
                    TestContext.HistoricProductTestInfo = null;
                    TestContext.Dashboard = null;
                    TestContext.CurrDUTReworkInfo = null;
                    response = "OK";
                    m_log.Info("TestContext content:"+"Product "+ TestContext.Product+";" +
                        "UID "+ TestContext.UID+";"+ "Stationname "+ TestContext.Stationname + ";"+
                        "Stationindex " + TestContext.Stationindex + ";"+ "Islaststation "+ TestContext.Islaststation+";"+
                        "Teststatus "+ ((TestContext.Teststatus == 1) ? "Running" : "Idle"));
                }
                else
                {
                    response = "Parameter in this command isn't correct";
                }
                Thread t = new Thread(FillTestContextInfo);
                t.IsBackground = true;
                t.Start();
            }
            else if(request.StartsWith("1:Get?IsAllowTestNextDUTOnCurrCompleted"))
            {
                string product = "";
                string uid = "";
                string stationname = "";
                if (deserialized.ContainsKey("product"))
                {
                    product = deserialized["product"].ToString();
                }
                if (deserialized.ContainsKey("uid"))
                {
                    uid = deserialized["uid"].ToString();
                }
                if (deserialized.ContainsKey("stationname"))
                {
                    stationname = deserialized["stationname"].ToString();
                }
                if (product == TestContext.Product && uid == TestContext.UID && stationname == TestContext.Stationname)
                {
                    TestContext.Teststatus = 2;
                    //get result from log 
                    TestCamLog recored = parser.ReadLastRecorodFromCSVFile(TestContext.LogFile);
                    ProductTestInfo currTestInfo = parser.GenerateTestInfo(recored);
                    //fill TestContext currProductTestInfo
                    TestContext.CurrProductTestInfo = currTestInfo;
                    bool isUpdateDBHere = true;
                    if (TestContext.CurrProductTestInfo != null)
                    {
                        if (IsAllowTestNextDut())
                        {
                            response = "Allow";
                        }
                        else
                        {
                            response = "NotAllow";
                        }
                    }
                    else
                    {
                        response = "NotAllow;No Current Test Info in TestContext.";
                    }
                }
                else
                {
                    response = "NotAllow;Parameters not match between test starting and end.";
                }

            }
            else
                response = "Undefined Command.";

            m_log.Info("response is:"+ response);
            return response;
        }

        private bool IsAllowTestNextDut()
        {
            bool isAllow = false;
            if(TestContext.CurrProductTestInfo.result==1) // curr DUT pass
            {
                if(TestContext.CurrProductTestInfo.rework==0)
                    isAllow = true;
                else if(TestContext.CurrProductTestInfo.rework == 1)
                {
                    if(TestContext.CurrDUTReworkInfo.reworkstatus=="2") //already checkout
                        isAllow = true;
                    else if(TestContext.CurrDUTReworkInfo.reworkstatus == "0") // still on check in
                    {
                        isAllow = true;
                        Tool.ShowWarningMessageOnThread("Info", "The DUT is on Check-in status.");
                    }
                    else if(TestContext.CurrDUTReworkInfo.reworkstatus == "3")
                    {
                        isAllow = true;
                        Tool.ShowWarningMessageOnThread("Info", "The DUT is on Scan-in status.");
                    }
                    else if (TestContext.CurrDUTReworkInfo.reworkstatus == "-1")
                    {
                        isAllow = true;
                        Tool.ShowWarningMessageOnThread("Info", "No rework status for this DUT.");
                    }

                }
            }  
            else if(TestContext.CurrProductTestInfo.result == 0) // curr DUT fail
            {
               if(TestContext.HistoricProductTestInfo.failtimes>=2)
                {
                    if(TestContext.HistoricProductTestInfo.rework==0) // EIS rework=0
                    {
                        //need check in rework sys
                        //1.show input dialog 2.insert QIS 3.update EIS rework=1
                        // then 
                        isAllow = true;
                    }
                    else if(TestContext.HistoricProductTestInfo.rework == 1) // EIS rework=1
                    {
                        if (TestContext.CurrDUTReworkInfo.reworkstatus == "2") //already checkout
                        {
                            //need check in rework sys
                            //1.show input dialog 2.insert QIS 3.update EIS rework=1
                            // then 
                            isAllow = true;
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "0") // still on check in
                        {
                            isAllow = true;
                            Tool.ShowWarningMessageOnThread("Info", "The DUT is on Check-in status.");
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "3")
                        {
                            isAllow = true;
                            Tool.ShowWarningMessageOnThread("Info", "The DUT is on Scan-in status.");
                        }
                        else if (TestContext.CurrDUTReworkInfo.reworkstatus == "-1")
                        {
                            isAllow = true;
                            Tool.ShowWarningMessageOnThread("Info", "No rework status for this DUT.");
                        }
                    }
                }
            }

            return isAllow;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private static void FillTestContextInfo()
        {
            //EIS,fill Historic TestInfo and Dashboard
            string sn = TestContext.UID;
            string product = TestContext.Product;
            string station = TestContext.Stationname;
            List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo(sn, product, station);
            if (tinfoRetrieved.Count > 0)
                TestContext.HistoricProductTestInfo = tinfoRetrieved[0];
            else
                TestContext.HistoricProductTestInfo = null;

            ProductDashboard dashboard = DBTool.SelectProductDashboardItem(TestContext.Workid);
            TestContext.Dashboard = dashboard;
            m_log.Info("Fill TestContext Info.");

            //QIS, fill rework info
            QueryRework reworkObj = new QueryRework();
            reworkObj.failedstationname = TestContext.Stationname;
            reworkObj.product = TestContext.Product;
            reworkObj.uid = TestContext.UID;
            ReworkStatus reworkInfo = QISHandler.GetRework(reworkObj);
            TestContext.CurrDUTReworkInfo = reworkInfo;
            m_log.Info("Fill Curr DUT ReworkInfo Info.");
        }
    }
}
