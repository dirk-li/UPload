using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using LogParserAndTransfer.DB;
using System.Threading;
using log4net;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Net;
using MySql.Data.MySqlClient;
using System.Data;
using Dapper;
using FileHelpers;
using FileHelpers.Events;

namespace LogParserAndTransfer
{
    class Program
    {
        private static readonly ILog m_log = LogManager.GetLogger("log");

        static void Main(string[] args)
        {
            ProductTestInfo tinfo = new ProductTestInfo();
            tinfo.work_id = "123";
            //tinfo.time = DateTime.Now;
            
            List<ProductTestInfo> list = new List<ProductTestInfo>();
            list.Add(tinfo);

            String fileName = @"c:\Crola\workid123_F2DBRS.csv";
            FRS2DB.AppendFRSFile(fileName, tinfo);

            FRS2DB.CreateFRSFile(fileName,list);
            list = null;
            list = FRS2DB.ReadFRSFile(fileName);
            list[0].work_id = "123_123";
            FRS2DB.UpdateFRSFile(fileName,list);
            //CreatePeopleFile(list);
            //WriteExample();
            //String path = @"C:\tstplan\EIS_Control.txt";
            //Tool.WriteTxtFileLine(path, 7, "CheckedIn=1");
            //String text = GetSQLText("1",true);

            /*
            FileINI fileIniObj = new FileINI(@"C:\Crola\EIS_2.0.ini");
            String s = fileIniObj.ReadIni("EIS_line_Info", "Product");
            if(String.IsNullOrEmpty(s))
            {
                m_log.Info("123");
            }

            DirectoryInfo logFolder = new DirectoryInfo(@"C:\New folder");
            FileInfo[] filesFilterOnType = logFolder.GetFiles();
            List<FileInfo> list = new List<FileInfo>();
            foreach (FileInfo fi in filesFilterOnType)
                list.Add(fi);
            FileInfo fifi = GetLatestUpdatedFile(list);
            */
            //List<ProductTestInfo> tinfoRetrieved = DBTool.SelectProductTestInfo("10306", "A20", "A20@BON");

            //String workid = "FACTORY M#2020-09-17#F22-4#Heka_Trial#960-001194#A#8L#BD#72857@278#";
            //TestCase.InsetDashboard(workid);
            //new TestCase().InsertTestInfo(workid);


            //TestCase.GetReworkTest();

            //ProcessHandler.GetProcessInfomation();

            //string errorInfo = "Read X0_X1_X2=Hand OUT MSE IN RCV OUT->452:161;";
            //string[] a = new TestCase().GetErrorElements(errorInfo);

            /*
            TestContext.Product = "A20";
            TestContext.Workid = "FACTORY B#2020-07-01#B7-4#HEKA#960-001194#A#8L#BD#72857@275#";
            TestContext.Stationindex = "1";
            TestContext.Stationname = "FT";
            TestContext.Islaststation = false;
            TestContext.DUTTestTime = DateTime.Now;
            TestContext.UID = "10002C09";
            List<ProductTestInfo> list = DBTool.SelectProductTestInfo(TestContext.UID, TestContext.Product, TestContext.Stationname);
            ProductTestInfo lastTinfo = (list.Count>0) ?list[0]:null;
            ProductDashboard dashboard = DBTool.SelectProductDashboardItem(TestContext.Workid);
            TestContext.HistoricProductTestInfo = lastTinfo;
            TestContext.Dashboard = dashboard;
            UTSCSVFileParser parser = UTSCSVFileParser.GetInstance();
            string file = @"C:\CSV_LOG\A20_LFT_MP_001__200817_D0_79.CSV";
            TestCamLog recored = parser.ReadLastRecorodFromCSVFile(file);
            parser.UpdateDB(recored, TestContext.HistoricProductTestInfo, TestContext.Dashboard);
            m_log.Info("666");
            */

            //IOCP Server
            //IOCPServer server = new IOCPServer(9995, 1024);
            //server.Start();
            //Console.WriteLine("IOCPServer start....");
            //System.Console.ReadLine();
            //

            //Restful client
            //TestCase.RestfulClientGetTest();

            //TestCase test = new TestCase();
            //test.Summary();

            //ExportData export = new ExportData();
            //export.Summary();

            //TestCase.INIFileTest();
            //ProductWarnningSpec productSpec = new ProductWarnningSpec();
            //productSpec.Product = "KOZAK";
            //productSpec.Station = "BON";
            //productSpec.Spec_Percent = 1.96;
            //productSpec.last_updated_date = DateTime.Now;
            //AWSDB.InsertProductsSpec(productSpec);
            // C2 CAM Focus 
            //ProductWarnningSpec specObj = AWSDB.SelectProductStationSpec("C2 CAM", "Focus ".Trim());
            /*
            TestCase test = new TestCase();
            test.ActionForNetworkDown(true, "a", true);
            test.ActionForNetworkDown(false, "b", true); // b fail to insert,buffered
            test.ActionForNetworkDown(false, "c", false); // b fail to insert,buffered
            test.ActionForNetworkDown(false, "e", false); // b fail to insert,buffered
            test.ActionForNetworkDown(true, "f", true); // b fail to insert,buffered
            return;
            TimerCallback procedureDelegate = new TimerCallback(state => { FileService.StartScanServiceProc(); });
            new Timer(procedureDelegate, null, TimeSpan.FromSeconds(0), TimeSpan.FromSeconds(2));
            while (true)
            {
                
            }
            */

            //new TestCase().InsertTestInfo();
        }

        /*
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
        */

        private static String GetSQLText(String staIndex,bool isLastStation)
        {
            String sqlCommandText = @"s12_output=@s12_output,
                                    s8_output=@s8_output,
                                    s11_rework=@s11_rework,
                                    s16_rework=@s16_rework,
                                    s18_fp=@s18_fp,
                                    s10_input=@s10_input,
                                    s11_name=@s11_name,
                                    s20_in_rework=@s20_in_rework,
                                    s17_fp=@s17_fp,
                                    s15_fp=@s15_fp,
                                    s4_input=@s4_input,
                                    s4_rework=@s4_rework,
                                    s8_name=@s8_name,
                                    s18_output=@s18_output,
                                    s1_fp=@s1_fp,
                                    s11_output=@s11_output,
                                    s2_input=@s2_input,
                                    s6_rework=@s6_rework,
                                    s14_input=@s14_input,
                                    s7_in_rework=@s7_in_rework,
                                    s4_output=@s4_output,
                                    s6_name=@s6_name,
                                    s9_fp=@s9_fp,
                                    s5_rework=@s5_rework,
                                    s12_name=@s12_name,
                                    achieve=@achieve,
                                    s14_in_rework=@s14_in_rework,
                                    time=@time,
                                    s14_rework=@s14_rework,
                                    s10_name=@s10_name,
                                    s19_output=@s19_output,
                                    s19_name=@s19_name,
                                    s5_name=@s5_name,
                                    s8_input=@s8_input,
                                    s5_input=@s5_input,
                                    s6_in_rework=@s6_in_rework,
                                    s1_rework=@s1_rework,
                                    s11_in_rework=@s11_in_rework,
                                    s8_in_rework=@s8_in_rework,
                                    s1_name=@s1_name,
                                    s14_name=@s14_name,
                                    s20_input=@s20_input,
                                    s5_output=@s5_output,
                                    s12_fp=@s12_fp,
                                    s18_input=@s18_input,
                                    s17_input=@s17_input,
                                    s13_output=@s13_output,
                                    s20_rework=@s20_rework,
                                    s2_in_rework=@s2_in_rework,
                                    s4_in_rework=@s4_in_rework,
                                    s7_rework=@s7_rework,
                                    s14_output=@s14_output,
                                    s13_input=@s13_input,
                                    s7_name=@s7_name,
                                    s5_fp=@s5_fp,
                                    s16_in_rework=@s16_in_rework,
                                    s14_fp=@s14_fp,
                                    s3_output=@s3_output,
                                    s19_rework=@s19_rework,
                                    s12_input=@s12_input,
                                    s6_fp=@s6_fp,
                                    s10_in_rework=@s10_in_rework,
                                    s16_input=@s16_input,
                                    s7_fp=@s7_fp,
                                    s20_output=@s20_output,
                                    s3_name=@s3_name,
                                    s16_output=@s16_output,
                                    s18_in_rework=@s18_in_rework,
                                    s13_name=@s13_name,
                                    s2_rework=@s2_rework,
                                    s20_name=@s20_name,
                                    s4_fp=@s4_fp,
                                    s15_in_rework=@s15_in_rework,
                                    s9_output=@s9_output,
                                    s13_fp=@s13_fp,
                                    s15_rework=@s15_rework,
                                    s17_in_rework=@s17_in_rework,
                                    s1_input=@s1_input,
                                    s4_name=@s4_name,
                                    s11_input=@s11_input,
                                    s12_in_rework=@s12_in_rework,
                                    s9_input=@s9_input,
                                    s9_rework=@s9_rework,
                                    s13_rework=@s13_rework,
                                    s15_output=@s15_output,
                                    s15_name=@s15_name,
                                    s9_in_rework=@s9_in_rework,
                                    s19_in_rework=@s19_in_rework,
                                    cosmetic=@cosmetic,
                                    s3_fp=@s3_fp,
                                    s1_in_rework=@s1_in_rework,
                                    s18_name=@s18_name,
                                    s6_input=@s6_input,
                                    s5_in_rework=@s5_in_rework,
                                    s18_rework=@s18_rework,
                                    s2_name=@s2_name,
                                    s2_fp=@s2_fp,
                                    s15_input=@s15_input,
                                    s10_rework=@s10_rework,
                                    s3_input=@s3_input,
                                    s7_output=@s7_output,
                                    s7_input=@s7_input,
                                    s3_in_rework=@s3_in_rework,
                                    s12_rework=@s12_rework,
                                    s13_in_rework=@s13_in_rework,
                                    s11_fp=@s11_fp,
                                    s10_output=@s10_output,
                                    s2_output=@s2_output,
                                    s17_rework=@s17_rework,
                                    s8_rework=@s8_rework,
                                    s16_name=@s16_name,
                                    s17_output=@s17_output,
                                    s19_fp=@s19_fp,
                                    s6_output=@s6_output,
                                    s10_fp=@s10_fp,
                                    s19_input=@s19_input,
                                    s3_rework=@s3_rework,
                                    s1_output=@s1_output,
                                    s8_fp=@s8_fp,
                                    s9_name=@s9_name,
                                    s16_fp=@s16_fp,
                                    s20_fp=@s20_fp,
                                    s17_name=@s17_name";
            sqlCommandText.Replace("\r\n", "");
            String[] tokens = sqlCommandText.Split(',');
            String filtered = "UPDATE product_dashboard SET ";
            if (isLastStation)
                filtered += " achieve=@achieve,";
            foreach (String token in tokens)
            {
                String mark = "s" + staIndex + "_";
                String str  = token.Trim();
                if (str.Contains(mark))
                {
                    filtered += str + ",";
                }

            }
            filtered = filtered.Substring(0, filtered.Length - 1);
            filtered = filtered + " where work_id = @work_id";
            return filtered;
        }

        private static void CreatePeopleFile(List<ProductTestInfo> people)
        {
            var engine = new FileHelperEngine<ProductTestInfo>();

            using (var fs = File.Create(@"c:\Crola\workid_F2DBRS.csv"))
            using (var sw = new StreamWriter(fs))
            {
                engine.HeaderText = engine.GetFileHeader();
                engine.WriteStream(sw, people);
                sw.Flush();
            }
        }

        public static void WriteExample()
        {
            var engine = new FileHelperEngine<ProductTestInfo>();
            string h = engine.GetFileHeader();
            engine.BeforeReadRecord += BeforeEvent;
            // to Read use:
            //List<ProductTestInfo> list = engine.ReadFileAsList(@"c:\Crola\workid_F2DBRS.csv");
            ProductTestInfo[] res = engine.ReadFile(@"c:\Crola\workid_F2DBRS.csv") as ProductTestInfo[];
            res[0].work_id = "456";

            /*
            String csvFileName = @"c:\Crola\workid_F2DBRS.csv";
            FileStream fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            StreamReader sr = new StreamReader(fs);
            ProductTestInfo[] res = (ProductTestInfo[])engine.ReadStream(sr);
            sr.Close();
            */

            // to Write use:
            engine.HeaderText = h;
            engine.WriteFile(@"c:\Crola\workid_F2DBRS.csv", res);

            /*
            using (var fs = File.Create(@"c:\Crola\workid_F2DBRS.csv"))
            using (var sw = new StreamWriter(fs))
            {
                engine.HeaderText = engine.GetFileHeader();
                engine.WriteStream(sw, res);
                sw.Flush();
            }
            */
        }

        private static void BeforeEvent(EngineBase engine, BeforeReadEventArgs<ProductTestInfo> e)
        {
            if(e.LineNumber==1)
            {
                e.SkipThisRecord = true;
            }
            ProductTestInfo item = e.Record;
            //item.result = Int32.MinValue;
            bool f = item.result > 0;
        }
    }


}
