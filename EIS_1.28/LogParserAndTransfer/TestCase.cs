using LogParserAndTransfer.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Runtime.InteropServices;
using System.Windows;
using System.Collections.Concurrent;
using log4net;
using System.IO;
using System.Reflection;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace LogParserAndTransfer
{
    class TestCase
    {
        //FileService.StartScanServiceProc();
        //DBTool.QueryProductTestInfo();
        //List<ProductTestInfo> list = DBTool.GetTestProductTestInfoData();
        //DBTool.InsertProductTestInfo(list);
        //Tool.GetMacByNetworkInterface();

        /*
        m_log.Info("start select log at " + DateTime.Now.ToString());
        DBTool.SelectProductTestInfo("100100047", "ENHA100047", "MURA100047");
        m_log.Info("End select log at " + DateTime.Now.ToString());
        return;

        List<ProductTestInfo> list = DBTool.GetTestProductTestInfoData();
        foreach(ProductTestInfo tinfo in list)
        {
            DBTool.InsertProductTestInfo(tinfo);
        }
        return;

        foreach (ProductTestInfo tinfo in listNew)
        {
            string sn = tinfo.test_index;
            string pro = tinfo.product;
            string station = tinfo.station;
            string workid = tinfo.work_id;
            int res = tinfo.result;

            bool f1 = sn == item.test_index;
            bool f2 = pro == item.product;
            bool f3 = station == item.station;
            bool f4 = workid == item.work_id;
            bool f5 = res == item.result;
            if ( f1 && f2 && f3 && f4 && f5)
            {
                item.frequency++;

            }
        }
        */

        /*
        List<ProductDashboard> list = new List<ProductDashboard>();
        ProductDashboard a = new ProductDashboard();
        a.work_id = "abc";
        ProductDashboard b = new ProductDashboard();
        b.work_id = "efg";
        list.Add(a);
        list.Add(b);
        DBTool.InsertProductDashboard(list);

        List<ProductDashboard> list = DBTool.SelectProductDashboardItem(null, 1,"rft",DateTime.Today,DateTime.Today);

        List<ProductDashboard> list = DBTool.SelectProductDashboardItem(null, 1, "rft", DateTime.MinValue, DateTime.Today);
        ProductDashboard i = list[0];
        i.achieve = 10;
        DBTool.UpdateDashboardItem(i);
        return;
        */

        [DllImport("user32.dll", EntryPoint = "FindWindow", CharSet = CharSet.Auto)]
        static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        [DllImport("user32.dll", EntryPoint = "FindWindowEx", CharSet = CharSet.Auto)]
        extern static IntPtr FindWindowEx(IntPtr hwndParent, IntPtr hwndChildAfter, string lpszClass, string lpszWindow);
        [DllImport("user32.dll", EntryPoint = "SendMessage")]
        public static extern int SendMessage(IntPtr hwnd, int wMsg, int wParam, string lParam);
        [DllImport("user32.dll", EntryPoint = "SendMessage")]
        public static extern int SendMessage(IntPtr hwnd, int wMsg, int wParam, int lParam);

        [DllImport("user32.dll")]
        public static extern int GetWindowRect(IntPtr hWnd, out Rect lpRect);
        [DllImport("user32.dll")]
        private static extern int mouse_event(int dwFlags, int dx, int dy, int cButtons, int dwExtraInfo);
        const int MOUSEEVENTF_MOVE = 0x0001;
        const int MOUSEEVENTF_LEFTDOWN = 0x0002;
        const int MOUSEEVENTF_LEFTUP = 0x0004;
        [DllImport("user32.dll")]
        private static extern bool SetCursorPos(int x, int y);
        private ConcurrentQueue<string> queue = new ConcurrentQueue<string>();
        private static ILog m_log = LogManager.GetLogger("log");

        public static void Sendenter(string str1, string str2, string str3, string str4)
        {
            IntPtr csmhwid = FindWindow(null, str1);
            if (csmhwid.ToString() != "0")
            {
                Console.WriteLine(csmhwid.ToString());
                IntPtr childHwnd = FindWindowEx(csmhwid, IntPtr.Zero, null, str2);
                Console.WriteLine(childHwnd.ToString());
                if (childHwnd.ToString() != "0")
                {
                    const int VK_RETURN = 0xD;
                    const int WM_KEYDOWN = 0x100;
                    SendMessage(childHwnd, WM_KEYDOWN, 0, VK_RETURN);
                    Rect rw = new Rect();
                    GetWindowRect(childHwnd, out rw);
                    SetCursorPos((int)rw.Left + Convert.ToInt32(str3), (int)rw.Top + Convert.ToInt32(str4));
                    mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                }
            }

        }

        public void Test()
        {
            ProductTestInfo infos = new ProductTestInfo();
            infos.test_index = "0x0ee8c04d";
            infos.product = "046D";
            infos.work_id = "work id? ";
            infos.station = "NA";
            infos.result = 1;
            infos.frequency = 1;
            infos.pcmac = "ae:ts";
            infos.rework = 666661;
            infos.errorinfo = "errors uuu";
            //DBTool.UpdateProductTestInfo(infos);
            ProductTestInfo info = DBTool.SelectProductTestInfo(infos.test_index, infos.product, infos.station, infos.work_id, infos.result, infos.frequency);

        }

        public void Test1()
        {
            FactoryComputersInfo c = new FactoryComputersInfo();
            c.MacAddress = "E4-54-E8-9C-F8-D5";
            c.ComputerName = "E454E89CF8D5";
            c.IPAddress = "172.23.36.183";

            DBTool.InsertFactoryComputersInfo(c);
        }

        public void TestSelectComputerInfo(string mac)
        {
            FactoryComputersInfo c = DBTool.SelectFactoryComputerInfo(mac);

        }

        public void InsertTestInfo(String workid)
        {
            // FACTORY B#2020-09-17#B7-4#HEKA#960-001194#A#8L#BD#72857@275#
            ProductTestInfo tinfoPara = new ProductTestInfo();
            tinfoPara.work_id = "FACTORY B#2020-07-01#B7-4#HEKA#960-001194#A#8L#BD#72857@275#";
            tinfoPara.work_id = workid;
            tinfoPara.product = "Heka";
            tinfoPara.station = "FT";
            tinfoPara.test_index = DateTime.Now.ToLongTimeString();
            tinfoPara.time = DateTime.Now;
            tinfoPara.result = 1;
            tinfoPara.failtimes = 0;
            tinfoPara.frequency = 1;
            tinfoPara.pcmac = "12-23-56-78";
            tinfoPara.errorinfo = "---";
            DBTool.InsertProductTestInfo(tinfoPara);
        }

        public void TestSelectWorkidInfo()
        {
            WorkidInfo info = DBTool.SelectWorkidInfo("Factory B#2020-01-19#B8-1-2#Roc6665#839-000540#A#8L#BD#72857@80", "E4-54-E8-9C-F8-D6");
        }

        public void TestSelectWorkidInfo1()
        {
            List<WorkidInfo> list = DBTool.SelectWorkidInfo("Factory B#2020-01-19#B8-1-2#Roc6665#839-000540#A#8L#BD#72857@80");
            int count = list.Count;
        }

        public void ActionForNetworkDown(bool isSucc, string para, bool insideDBRes)
        {
            m_log.Info("ActionForNetworkDown() Para: " + isSucc + "," + para);
            if (isSucc)
            {
                int count = queue.Count;
                m_log.Info("Queue count " + count);
                if (count > 0)
                {
                    for (int i = 0; i < count; i++)
                    {
                        string bufferedOne = null;
                        queue.TryDequeue(out bufferedOne);
                        bool flag = insideDBRes;

                        m_log.Info("Queue count after out " + queue.Count);
                        if (!flag)
                        {
                            m_log.Info("BufferedOne Fail to insert DB, Enter queue " + bufferedOne);
                            queue.Enqueue(bufferedOne);
                            m_log.Info("Queue count after in " + queue.Count);
                        }
                        else
                        {
                            m_log.Info("BufferedOne Succ to insert DB," + bufferedOne);
                        }
                    }

                }
            }
            else
            {
                m_log.Info("Enter queue " + para);
                queue.Enqueue(para);
                m_log.Info("Queue count after in " + queue.Count);
            }
        }

        public List<ProductDashboard> Statistic(string product, DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = DBTool.SelectProductDashboardItemEx(product, startTime, endTime);
            return list;
        }

        public void Summary()
        {
            int len1 = 31;
            string[] products = { "#Bolide#", };
            /*
            string[] products = { "Babylon", "#Speedy AF#","#Speedy AF B2B#",
            "Maggie","TURBOT",@"#BELUTO/BELUOT SILENT#",
            "PICCOLO","BLOWTORCH","KARAX","#Bolide Table HUB#",
            "MONGOOSE HERO","PADANA","C2 CAM","Sisley",
            "BELUGA","KARAX- RAINBOW","MENDOCINO",
            "CLAYMORE","BLOWTORCH","#Bolide TV HUB#",
            "PALAU","RECOIL","FLORES","LENGO","#Bolide Microphone#",
            "STALKER","HYJAL","NARA PLUTO ONE","HERZOG",
            "TALISE CR","HONEYBADGER HERO","Scorpio BP",
            "Maggie","LOMBOK","Marge","#Bolide Webcam#",
            "CLAYMORE","Manet","FOOTLOOSE","CAMILLE",
            "KARAX- RAINBOW","CALA","Gladwell","Miro","#Bolide#",
            "Fireball","Dali","YETI","Blue Moon","HAWK HERO",
            "Gladwell","RINCA","Orbit Ali","KARAX- RAINBOW",
            };
            */
            DateTime[] dates = new DateTime[len1];
            DateTime firstDay = new DateTime(2020, 4, 30, 23, 59, 59); // { new DateTime(2020, 5, 18, 23, 59, 59) };
            for (int i=0;i< len1; i++)
            {
                dates[i] = firstDay;
                firstDay = firstDay.Add(TimeSpan.FromDays(1));
            }

            int len = products.Length;

            for(int i=0;i<len;i++)
            {
                string product = products[i].Replace("/", " ").Replace("#", "");
                string fullFileName = @"C:\Statics\" + product + ".txt";
                if (File.Exists(fullFileName))
                    File.Delete(fullFileName);
                bool isAlreadyWriteColumnHead = false;
                for (int j=0;j<len1;j++)
                {
                    
                    DateTime startTime = dates[j];
                    DateTime endTime = startTime.Add(TimeSpan.FromDays(1));
                    List<ProductDashboard> list = Statistic(products[i], startTime, endTime);
                    if (list.Count < 1)
                        continue;
                    if(!isAlreadyWriteColumnHead)
                    {
                        ProductDashboard dashboard = list[0];
                        WriteColumnHeadToFile(fullFileName, list);
                        isAlreadyWriteColumnHead = true;
                    }
                    WriteRowsToFile(fullFileName, list, endTime);
                }
            }
        }

        public void WriteRowsToFile(string fullFileName, List<ProductDashboard> list, DateTime date)
        {
            FileStream fs = null;
            try
            {
                fs = File.OpenWrite(fullFileName);
                //设定书写的开始位置为文件的末尾  
                fs.Position = fs.Length;
                //将待写入内容追加到文件末尾  

                string row = date.ToString("yyyy-MM-dd")+ "\t";
                row = row + "xxx"+ "\t";
                List<string> validIndexList = GetValidStationIndexs(list);
                //
                double finalOutput = 0;
                string finalStationIndex = validIndexList.Last();

                double firstInput = 0;
                string firstStationIndex = validIndexList[0];

                double allFailures = 0;

                //
                foreach (string stationIndex in validIndexList)
                {
                    double input = 0;
                    double output = 0;
                    double fp = 0;
                    double rw = 0;
                    foreach (ProductDashboard dashboard in list)
                    {
                        input = input + GetInput(dashboard, stationIndex);
                        output = output + GetOutput(dashboard, stationIndex);
                        fp = fp + GetFp(dashboard, stationIndex);
                        rw = rw + GetRework(dashboard, stationIndex);
                    }
                    if (finalStationIndex == stationIndex)
                        finalOutput = finalOutput + output;
                    if (firstStationIndex == stationIndex)
                        firstInput = firstInput + input;
                    allFailures = allFailures + rw;
                    //double per = output / input * 100.0;
                    //string perStr = per.ToString("N2");
                    //string inputStr = input.ToString();
                    //string outputStr = output.ToString();
                    //string cellStr = outputStr + "/" + inputStr + "="+perStr+"%";

                    double per = fp / input * 100.0;
                    string perStr = per.ToString("N2");
                    string fpStr = fp.ToString();
                    string inputStr = input.ToString();
                    //string firstPassYield = fpStr + "/" + inputStr + "=" + perStr + "%";
                    string firstPassYield = perStr + "%";
                    string cellStr = firstPassYield;
                    row = row + cellStr + "\t";
                }

                //
                double finalYield1 = finalOutput / firstInput * 100.0;
                string finalYield1Str = finalYield1.ToString("N2");
                //string frontCell1 = finalOutput.ToString() + "/" + firstInput.ToString() + "=" + finalYield1Str + "%"+"\t";
                string frontCell1 = finalYield1Str + "%" + "\t";

                double fanda = finalOutput + allFailures;
                double finalYield2 = finalOutput / fanda * 100.0;
                string finalYield2Str = finalYield2.ToString("N2");
                //string frontCell2 = finalOutput.ToString() + "/" + fanda.ToString() + "=" + finalYield2Str + "%";
                string frontCell2 =  finalYield2Str + "%";
                string front = frontCell1 + frontCell2;

                row = row.Replace("xxx",front);
                //
                Encoding encoder = Encoding.UTF8;
                row = row + "\n";
                byte[] bytes = encoder.GetBytes(row);
                fs.Write(bytes, 0, bytes.Length);

            }
            catch (Exception ex)
            {
                m_log.Error(String.Format("文件打开失败{0}", ex.ToString()));

            }
            finally
            {
                fs.Close();
            }
        }
        
        public void WriteColumnHeadToFile(string fullFileName, List<ProductDashboard> dashboardList)
        {
            List<string> list = new List<string>();

            List<string> validIndexList = GetValidStationIndexs(dashboardList);

            ProductDashboard dashboard = GetMaxStationDashboard(dashboardList);
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();

            foreach (string stationIndex in validIndexList)
            {
                foreach (var f in fieldInfos)
                {
                    string fieldName = f.Name;
                    string station = String.Format("s{0}_name", stationIndex);
                    if (fieldName == station)
                    {
                        string str = f.GetValue(dashboard).ToString();
                        if (!string.IsNullOrEmpty(str) && str.Length>1)
                        {
                            list.Add(str);
                            break;
                        }
                    }
                }
            }


            //
            string row = "\t";
            row = row + "FinalPassYield 1" + "\t";
            row = row + "FinalPassYield 2" + "\t";
            foreach (string stationName in list)
            {
                row =row + stationName + "\t";
            }

            if (fullFileName.Contains("PICCOLO"))
            {
                row = row + "ut/ft" + "\t";
            }
            
            if (fullFileName.Contains("Bolide Table HUB"))
            {
                //BON 	Network 	DFU 
                row = "FinalPassYield 1" + "\t" + "FinalPassYield 2" + "\t"+"BON" + "\t"+ "Network" + "\t" + "HDMI" + "\t" + "DFU" + "\t";
            }

            if (fullFileName.Contains("Scorpio BP"))
            {
                row = row + "IQ" + "\t";
            }
            

            row = row + "\n";
            //
            FileStream fs = null;
            try
            {
                fs = File.OpenWrite(fullFileName);
                //设定书写的开始位置为文件的末尾  
                fs.Position = fs.Length;
                //将待写入内容追加到文件末尾  

                Encoding encoder = Encoding.UTF8;
                byte[] bytes = encoder.GetBytes(row);
                fs.Write(bytes, 0, bytes.Length);
            }
            catch (Exception ex)
            {
                m_log.Error(String.Format("文件打开失败{0}", ex.ToString()));

            }
            finally
            {
                fs.Close();
            }

        }

        public List<string> GetValidStationIndexs(List<ProductDashboard> dashboardlist)
        {
            List<string> listNext = new List<string>();

            foreach (ProductDashboard dashboard in dashboardlist)
            {
                List<string> list = new List<string>();
                Type type = dashboard.GetType();
                PropertyInfo[] fieldInfos = type.GetProperties();

                for (int i = 1; i < 21; i++)
                {
                    int StationIndex = i;
                    foreach (var f in fieldInfos)
                    {
                        string fieldName = f.Name;
                        string station = String.Format("s{0}_name", StationIndex);
                        if (fieldName == station)
                        {
                            string str = f.GetValue(dashboard).ToString();
                            if (!string.IsNullOrEmpty(str) && str.Length > 1)
                            {
                                list.Add(StationIndex.ToString());
                                break;
                            }
                        }
                    }
                }

                if (list.Count > listNext.Count)
                    listNext = list;
            }

            return listNext;
        }

        public ProductDashboard GetMaxStationDashboard(List<ProductDashboard> dashboardlist)
        {
            ProductDashboard max_ashboard = null;

            List<string> listNext = new List<string>();

            foreach (ProductDashboard dashboard in dashboardlist)
            {
                List<string> list = new List<string>();
                Type type = dashboard.GetType();
                PropertyInfo[] fieldInfos = type.GetProperties();

                for (int i = 1; i < 21; i++)
                {
                    int StationIndex = i;
                    foreach (var f in fieldInfos)
                    {
                        string fieldName = f.Name;
                        string station = String.Format("s{0}_name", StationIndex);
                        if (fieldName == station)
                        {
                            string str = f.GetValue(dashboard).ToString();
                            if (!string.IsNullOrEmpty(str) && str.Length > 1)
                            {
                                list.Add(StationIndex.ToString());
                                break;
                            }
                        }
                    }
                }

                if (list.Count > listNext.Count)
                {
                    listNext = list;
                    max_ashboard = dashboard;
                }
                    
            }


            return max_ashboard;
        }


        public int GetInput(ProductDashboard dashboard,string StationIndex)
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
                    catch (Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                }
            }

            return input;
        }

        
        public int GetOutput(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error(e.ToString());
                    }
                }
            }

            return output;
        }

        
        public int GetRework(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error(e.ToString());
                    }
                }
            }

            return rework;
        }

        public int GetFp(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error(e.ToString());
                    }
                }
            }

            return fp;
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

        public static void EPMTest()
        {
            EPMDB.SelectEPMWorkId("2020-07-17", "A1-2");
            EPMDB.SelectEPMWorkId("2020-07-16", "A1-3");
        }

        public static void INIFileTest()
        {
            string filePath = @".\work-id.ini";
            FileINI fileIniObj = new FileINI(filePath);
            string session = "For UTS Retrieving Work-ID";
            string key = "Work-ID";
            string val = "123";
            string key1 = "Time";
            string val1 = DateTime.Now.ToString();
            fileIniObj.WriteIni(session,key, val);
            fileIniObj.WriteIni(session, key1, val1);

            string rval = fileIniObj.ReadIni(session,key);
            string rval1 = fileIniObj.ReadIni(session, key1);
        }

        public static void InsetDashboard(string workid)
        {
            ProductDashboard dashboard = new ProductDashboard();
            dashboard.time = DBTool.GetMySqlTime();
            dashboard.work_id = workid;
            DBTool.InsertProductDashboard(dashboard);
        }

        public static void RestfulClientInsertTest()
        {
            Console.Title = "Restful客户端Post Demo测试";

            InsertedRework reworkObj = new InsertedRework();
            reworkObj.reworkid = "A60A7491DCD7C93266b";
            reworkObj.errorcode = "213";
            reworkObj.errordescription = "dpi";
            reworkObj.failedstationname = "FT";
            reworkObj.failedstationsequence = "1";
            reworkObj.failedvalue = "v213";
            reworkObj.product = "HEKA";
            reworkObj.uid = "abcdefghigh";
            reworkObj.workid = "FACTORY B#2020-07-01#B7-4#HEKA#960-001194#A#8L#BD#72857@275#";


            //QISHandler.InsertRework(reworkObj); need add output para
            
        }

        public static void RestfulClientGetTest()
        {
            Console.Title = "Get Demo测试";

            QueryRework reworkObj = new QueryRework();
            reworkObj.failedstationname = "FT";
            reworkObj.product = "Heka";
            reworkObj.uid = "abcdefghigh";
            
            QISHandler.GetRework(reworkObj);

        }

        public static void GetReworkTest()
        {
            QueryRework reworkObj = new QueryRework();
            reworkObj.failedstationname = "FT";
            reworkObj.product = "Heka";
            reworkObj.uid = ":20201029F049036B";
            ReworkStatus reworkInfo = QISHandler.GetRework(reworkObj);
        }
        public string[] GetErrorElements(string logComments)
        {
            //Read X0_X1_X2=Hand OUT MSE IN RCV OUT->452:161;
            string[] errorElements = new string[3];
            int pos = logComments.LastIndexOf('>');
            try
            {
                string descrip = logComments.Substring(0, pos - 1);
                string section2 = logComments.Substring(pos + 1);
                string errorec = section2.Split(':')[0];
                string errorval = section2.Split(':')[1];
                errorElements[0] = errorec;
                errorElements[1] = descrip;
                errorElements[2] = errorval;
            }
            catch (Exception e)
            {
                m_log.Error(e.ToString());
            }

            return errorElements;
        }

    }
}

//client.Method = EnumHttpVerb.POST;
//string resultGet = client.HttpRequest("rework/eisapi/insertReworkInfo");
//Console.WriteLine("GET方式获取结果：" + resultGet);


 
