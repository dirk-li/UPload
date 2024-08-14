using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data;
//using System.Data.SqlClient;
using MySql;
using MySql.Data.MySqlClient;
using log4net;
using System.Threading;
using System.IO;
using System.Reflection;

namespace LogParserAndTransfer.DB
{
    public static class DBTool
    {
        static string ip = AppSetting.Default.DBServerIP;
        static string port = AppSetting.Default.DBServerPort;
        static string user = AppSetting.Default.DBAccount;
        static string password = AppSetting.Default.DBPassword;

        static string ip1 = AppSetting.Default.DBServerIP1;
        static string port1 = AppSetting.Default.DBServerPort1;
        static string user1 = AppSetting.Default.DBAccount1;
        static string password1 = AppSetting.Default.DBPassword1;

        static string[] StationIndexArray = {
                                                "s0_name",
                                                "s1_name",
                                                "s2_name",
                                                "s3_name",
                                                "s4_name",
                                                "s5_name",
                                                "s6_name",
                                                "s7_name",
                                                "s8_name",
                                                "s9_name",
                                                "s10_name",
                                                "s11_name",
                                                "s12_name",
                                                "s13_name",
                                                "s14_name",
                                                "s15_name",
                                                "s16_name",
                                                "s17_name",
                                                "s18_name",
                                                "s19_name",
                                                "s20_name"};
        //private static readonly string Config = "server=172.17.149.240;port=3306;database=product_eis;uid=root;pwd=logitech;Pooling=false";//Allow User Variables=true;SslMode=None;
        // suzhouyield1  eistest
        // Connect Timeout=30
        private static readonly string Config = String.Format("server={0};port={1};database=product_eis;SslMode=None;uid={2};pwd={3};Allow User Variables=true;Pooling=false", ip, port, user, password);
        private static readonly string Config1 = String.Format("server={0};port={1};database=product_eis;SslMode=None;uid={2};pwd={3};Allow User Variables=true;Pooling=false", ip1, port1, user1, password1);

        private static readonly ILog m_log = LogManager.GetLogger("log");
        private static object syncRoot = new object();
        public static volatile bool isConnFromDB = true;

        private static readonly MySqlConnection Conn = new MySqlConnection(Config);

        /*
        private static MySqlConnection Conn;
        static DBTool()
        {
            Conn = new MySqlConnection(Config1);
            try
            {
                String ckdrivebat = @"net use k: \\cn02eiscfg.corp.logitech.com\eisconfig$ /user:corp\srv-corp-eisclient Logitech123";
                Tool.RunBatCmd(ckdrivebat);
                String kdrivefile = @"K:\EIS_Config.ini";
                Thread.Sleep(1000);
                bool flag = File.Exists(kdrivefile);
                if (!flag)
                    Thread.Sleep(3000);
                flag = File.Exists(kdrivefile);
                if (!flag)
                {
                    m_log.Error("DBTool() not find the file " + kdrivefile);
                    return;
                }
                FileINI fileIniObj = new FileINI(kdrivefile);
                String eisIP = fileIniObj.ReadIni("EIS", "IPAddress");
                m_log.Info("EIS_Config.ini EIS IP " + eisIP);
                if (String.IsNullOrEmpty(eisIP))
                    DBTool.ToOldConn();
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }
            finally
            {
                String rkdrivebat = @"net use k: /del";
                Tool.RunBatCmd(rkdrivebat);
            }
        }
        
        public static void ToOldConn()
        {
            Conn = new MySqlConnection(Config);
        }
        */

        public static ProductTestInfo SelectProductTestInfo(string sn, string product, string station, string work_id, int result, int frequency)
        {
            ProductTestInfo tinfo = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string query = "SELECT * FROM product_test_info WHERE test_index = @test_index " +
                            "AND product = @product AND station = @station AND work_id = @work_id AND " +
                            "result = @result AND frequency = @frequency";
                        tinfo = Conn.Query<ProductTestInfo>(query, new { test_index = sn, product, station = station, work_id = work_id, result = result, frequency = frequency }).SingleOrDefault();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return tinfo;
        }

        public static List<ProductTestInfo> SelectProductTestInfo(string sn, string product, string station)
        {
            List<ProductTestInfo> list = new List<ProductTestInfo>();
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string sqlStr = "SELECT * FROM product_test_info WHERE test_index = @test_index " +
                            "AND product = @product AND station = @station  order by time desc limit 1"; // t1 desc limit 1
                        list = Conn.Query<ProductTestInfo>(sqlStr, new { test_index = sn, product=product, station = station }).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return list;
        }

        public static List<ProductTestInfo> SelectProductTestInfo(string sn, string product, string station,string workid)
        {
            List<ProductTestInfo> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string sqlStr = "SELECT * FROM product_test_info WHERE test_index = @test_index " +
                            "AND product = @product AND station = @station AND work_id = @work_id AND " +
                            "result = @result AND frequency = @frequency";
                        list = Conn.Query<ProductTestInfo>(sqlStr, new { test_index = sn, product, station = station, work_id = workid }).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return list;
        }

        public static FactoryComputersInfo SelectFactoryComputerInfo(string mac)
        {
            FactoryComputersInfo info = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string sqlStr = "SELECT * FROM factory_computers_info WHERE MacAddress = @MacAddress ";
                        info = Conn.Query<FactoryComputersInfo>(sqlStr, new { MacAddress = mac }).SingleOrDefault();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return info;
        }

        public static WorkidInfo SelectWorkidInfo(string workid, string mac)
        {
            WorkidInfo info = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string sqlStr = "SELECT * FROM workids_info WHERE WorkID = @WorkID " +
                            "AND MacAddress = @MacAddress";
                        info = Conn.Query<WorkidInfo>(sqlStr, new { WorkID = workid, MacAddress = mac }).SingleOrDefault();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return info;
        }

        public static List<WorkidInfo> SelectWorkidInfo(string workid)
        {
            List<WorkidInfo> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        string sqlStr = "SELECT * FROM workids_info WHERE WorkID = @WorkID ";
                        list = Conn.Query<WorkidInfo>(sqlStr, new { WorkID = workid }).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return list;
        }


        public static ProductDashboard SelectProductDashboardItem(String workid)
        {
            ProductDashboard dashboard = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        //string str = "SELECT * FROM product_dashboard WHERE work_id = '{0}' FOR UPDATE";
                        string str = "SELECT * FROM product_dashboard WHERE work_id = '{0}' ";
                        string query = String.Format(str, workid);
                        dashboard = Conn.Query<ProductDashboard>(query).SingleOrDefault();
                        trans.Commit();
                        if (dashboard == null)
                            m_log.Error("SelectProductDashboardItem Error with workid " + workid);
                        else
                            m_log.Info("DashboardItem last updated time " + dashboard.last_updated_date);
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;

                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return dashboard;
        }

        public static List<ProductDashboard> SelectProductDashboardItem(String workid,int stationIndex,String stationName,DateTime startTime, DateTime endTime)
        {
            List < ProductDashboard > list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    if (stationIndex <= 0 || stationIndex > 20)
                        return list;

                    String stationNameInTable = StationIndexArray[stationIndex];
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        //trans = Conn.BeginTransaction(System.Data.IsolationLevel.ReadCommitted);
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;

                        string query1 = "SELECT * FROM product_dashboard WHERE work_id = '{0}' " +
                            "AND {1} = '{2}' ";
                        string query2 = "SELECT * FROM product_dashboard WHERE work_id = '{0}' ";
                        string query3 = "SELECT * FROM product_dashboard WHERE {0} = '{1}' ";

                        string query = "";
                        if (workid != null && stationName != null)
                            query = String.Format(query1, workid, stationNameInTable, stationName);
                        else if (workid != null && stationName == null)
                            query = String.Format(query2, workid);
                        else if (stationName != null && workid == null)
                            query = String.Format(query3, stationNameInTable, stationName);
                        else if (workid == null && stationName == null)
                            return null;

                        list = Conn.Query<ProductDashboard>(query).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;

                    }
                    finally
                    {
                        Close();
                    }
                    List<ProductDashboard> listTimeFilter = new List<ProductDashboard>();
                    if (startTime != null && endTime != null)
                    {
                        foreach (ProductDashboard i in list)
                        {
                            if (i.time > startTime && i.time < endTime)
                                listTimeFilter.Add(i);
                        }
                    }
                    else if (startTime != null && endTime == null)
                    {
                        foreach (ProductDashboard i in list)
                        {
                            if (i.time > startTime)
                                listTimeFilter.Add(i);
                        }
                    }
                    else if (endTime != null && startTime == null)
                    {
                        foreach (ProductDashboard i in list)
                        {
                            if (i.time < endTime)
                                listTimeFilter.Add(i);
                        }
                    }

                    if (listTimeFilter.Count > 0)
                        return listTimeFilter;
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return list;
        }

        //support eis 
        public static List<ProductDashboard> SelectProductDashboardItemEx(String product, DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    string st = startTime.ToString("yyyy-MM-dd HH:mm:ss");
                    string et = endTime.ToString("yyyy-MM-dd HH:mm:ss");

                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;
                        //*
                        string query1 = "SELECT* FROM product_eis.product_dashboard where work_id like '%{0}%' " +
                            "and time between '{1}' and '{2}' order by work_id ";
                        //*/

                        string query = "";
                        query = String.Format(query1, product, st, et);
                        list = Conn.Query<ProductDashboard>(query).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;

                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return list;
        }

        //
        public static List<ProductDashboard> SelectDashboardByCreatedTime(DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    string st = startTime.ToString("yyyy-MM-dd HH:mm:ss");
                    string et = endTime.ToString("yyyy-MM-dd HH:mm:ss");

                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;

                        string query1 = "SELECT* FROM product_eis.product_dashboard where " +
                            "time between '{0}' and '{1}' order by work_id";
                        string query = String.Format(query1, st, et);
                        list = Conn.Query<ProductDashboard>(query).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;

                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return list;
        }

        
        //
        //
        public static List<ProductDashboard> SelectDashboardByCreatedTimeAndLastUpdteTime(
            DateTime startTime, DateTime endTime, DateTime startTimeU, DateTime endTimeU)
        {
            List<ProductDashboard> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;

                    string st = startTime.ToString("yyyy-MM-dd HH:mm:ss");
                    string et = endTime.ToString("yyyy-MM-dd HH:mm:ss");

                    string stU = startTimeU.ToString("yyyy-MM-dd HH:mm:ss");
                    string etU = endTimeU.ToString("yyyy-MM-dd HH:mm:ss");

                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;

                        string query1 = "SELECT* FROM product_eis.product_dashboard where " +
                            "time between '{0}' and '{1}' and last_updated_date between '{2}' and '{3}' order by work_id";
                        string query = String.Format(query1, st, et, stU, etU);
                        list = Conn.Query<ProductDashboard>(query).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;

                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return list;
        }
        //


        public static List<ProductDashboard> SelectDashboardByUpdatedTime(DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = null;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;

                    string st = startTime.ToString("yyyy-MM-dd HH:mm:ss");
                    string et = endTime.ToString("yyyy-MM-dd HH:mm:ss");

                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return null;

                        string query1 = "SELECT* FROM product_eis.product_dashboard where " +
                            "last_updated_date between '{0}' and '{1}' order by work_id";
                        string query = String.Format(query1, st, et);
                        list = Conn.Query<ProductDashboard>(query).AsList();
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return list;
        }

        public static bool UpdateProductTestInfo(ProductTestInfo tinfo)
        {
            bool isSucc = true; 
            string sqlCommandText = @"UPDATE product_test_info SET test_index=@test_index,product=@product,station=@station,
                work_id=@work_id,pcmac=@pcmac,result=@result,frequency=@frequency,process=@process,failtimes=@failtimes,
                rework=@rework,errorinfo=@errorinfo,time=@time where  test_index = @test_index AND product = @product AND 
                station = @station AND work_id = @work_id AND result = @result AND frequency = @frequency";

            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, tinfo, trans, null, null);
                        m_log.Info("ProductTestInfo Update commited " + row);
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        isSucc = false;
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end

            return isSucc;
        }

        private static String GetSQLText(String staIndex, bool isLastStation)
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
                String str = token.Trim();
                if (str.Contains(mark))
                {
                    filtered += str + ",";
                }

            }
            filtered = filtered.Substring(0, filtered.Length - 1);
            filtered = filtered + " where work_id = @work_id";
            return filtered;
        }

        public static bool UpdateDashboardItem(ProductDashboard binfo)
        {
            bool isSucc = true;

            if (string.IsNullOrEmpty(binfo.work_id))
            {
                m_log.Error("UpdateDashboardItem Error because workid is null.");
                return false;
            }

            string sqlCommandText = GetSQLText(binfo.to_update_station_index, binfo.islastStation);

            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;

                        //row = Conn.Execute(sqlCommandText, binfo, trans, null, null);
                        //trans.Commit();
                        //
                        string str = "SELECT * FROM product_dashboard WHERE work_id = '{0}' ";
                        string query = String.Format(str, binfo.work_id);
                        ProductDashboard dashboardSelected = Conn.Query<ProductDashboard>(query).SingleOrDefault();
                        int new_i = GetInput(dashboardSelected, binfo.to_update_station_index);
                        int new_o = GetOutput(dashboardSelected, binfo.to_update_station_index);
                        int new_fp = GetFp(dashboardSelected, binfo.to_update_station_index);
                        int new_rw = GetRework(dashboardSelected, binfo.to_update_station_index);
                        String new_stationName = GetStationName(dashboardSelected, binfo.to_update_station_index);
                        int new_achieve = 0;
                        if(binfo.islastStation)
                            new_achieve = GetAchieve(dashboardSelected, binfo.to_update_station_index);

                        SetInput(dashboardSelected, new_i+ binfo.input_change, binfo.to_update_station_index);
                        SetOutput(dashboardSelected, new_o+ binfo.output_change, binfo.to_update_station_index);
                        SetFP(dashboardSelected, new_fp+ binfo.fp_change, binfo.to_update_station_index);
                        SetRework(dashboardSelected, new_rw+ binfo.rework_change, binfo.to_update_station_index);
                        if (binfo.islastStation)
                            SetAchieve(dashboardSelected, new_o + binfo.output_change, binfo.to_update_station_index);
                        if (String.IsNullOrEmpty(new_stationName))
                        {
                            String sname = GetStationName(binfo, binfo.to_update_station_index);
                            if (!String.IsNullOrEmpty(sname))
                                SetStationName(dashboardSelected,sname, binfo.to_update_station_index);
                        }

                        row = Conn.Execute(sqlCommandText, dashboardSelected, trans, null, null);
                        //

                        m_log.Info("DashboardItem Update commited " + row);
                    }
                    catch (Exception e)
                    {
                        isSucc = false;
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        trans.Commit();
                        Close();
                    }
                    if (row < 0)
                        isSucc = false;
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        public static void SetInput(ProductDashboard dashboard, int inputPara, string StationIndex)
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

        public static int GetInput(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error("Here5 " + e.ToString());
                    }
                }
            }

            return input;
        }

        public static void SetOutput(ProductDashboard dashboard, int outputPara, string StationIndex)
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
        }

        public static int GetOutput(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error("Here6 " + e.ToString());
                    }
                }
            }

            return output;
        }

        public static void SetRework(ProductDashboard dashboard, int reworkPara, string StationIndex)
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

        public static int GetRework(ProductDashboard dashboard, string StationIndex)
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
                        m_log.Error("Here7 " + e.ToString());
                    }
                }
            }

            return rework;
        }

        public static void SetFP(ProductDashboard dashboard, int fpPara, string StationIndex)
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

        public static int GetFp(ProductDashboard dashboard, string StationIndex)
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

        public static void SetAchieve(ProductDashboard dashboard, int achievePara, string StationIndex)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string achieve = "achieve";
                if (fieldName.Equals(achieve))
                {
                    f.SetValue(dashboard, achievePara);
                    break;
                }
            }
        }

        public static int GetAchieve(ProductDashboard dashboard, string StationIndex)
        {
            int achieve = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string achieveStr = "achieve";
                if (fieldName.Equals(achieveStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        achieve = int.Parse(str);
                        break;
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here7 " + e.ToString());
                    }
                }
            }

            return achieve;
        }

        public static void SetInputChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "input_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetOutputChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "output_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetReworkChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "rework_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetInReworkChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "inrework_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetAchieveChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "achieve_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetFPChange(ProductDashboard dashboard, int inputPara)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string input = "fp_change";
                if (fieldName.Contains(input))
                {
                    f.SetValue(dashboard, inputPara);
                    break;
                }
            }
        }

        public static void SetStationName(ProductDashboard dashboard, string stationName, string StationIndex)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string station = String.Format("s{0}_name", StationIndex);
                if (fieldName.Contains(station))
                {
                    f.SetValue(dashboard, stationName);
                    break;
                }
            }
        }

        public static String GetStationName(ProductDashboard dashboard, string StationIndex)
        {
            String stationName = "";
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string station = String.Format("s{0}_name", StationIndex);
                if (fieldName.Contains(station))
                {
                    stationName = f.GetValue(dashboard).ToString();
                    break;
                }
            }

            return stationName;
        }

        public static bool InsertProductTestInfo(ProductTestInfo tinfoPara)
        {
            bool isSucc = true;

            if (string.IsNullOrEmpty(tinfoPara.work_id))
            {
                m_log.Error("InsertProductTestInfo Error because workid is null.");
                return false;
            }

            string sqlCommandText = @"INSERT INTO product_test_info(test_index,product,station,work_id,pcmac,result,frequency,process,failtimes,rework,errorinfo,time) VALUES(@test_index,@product,@station,@work_id,@pcmac,@result,@frequency,@process,@failtimes,@rework,@errorinfo,@time)";
            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, tinfoPara, trans, null, null);
                        trans.Commit();
                        m_log.Info("Product TestInfo Insert commited " + row);
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isSucc = false;
                        if(!mess.Contains("Duplicate entry"))
                            isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        public static bool InsertProductTestInfo(List<ProductTestInfo> list)
        {
            bool isSucc = true;
            string sqlCommandText = @"INSERT INTO product_test_info(test_index,product,station,work_id,pcmac,result,frequency,process,failtimes,rework,errorinfo,time) VALUES(@test_index,@product,@station,@work_id,@pcmac,@result,@frequency,@process,@failtimes,@rework,@errorinfo,@time)";
            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, list, trans, null, null);
                        trans.Commit();
                        m_log.Info("Product TestInfo Insert " + row);
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        public static bool InsertFactoryComputersInfo(FactoryComputersInfo factoryComputerInfo)
        {
            bool isSucc = true;

            string sqlCommandText = @"INSERT INTO factory_computers_info(MacAddress,ComputerName,IPAddress) VALUES(@MacAddress,@ComputerName,@IPAddress)";
            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, factoryComputerInfo, trans, null, null);
                        trans.Commit();
                        m_log.Info("Factory Computer Info Insert commited " + row);
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                        isSucc = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        public static bool InsertWorkidInfo(WorkidInfo winfo)
        {
            bool isSucc = true;

            string sqlCommandText = @"INSERT INTO workids_info(`WorkID` ,`MacAddress` ,`Factory`,`ProductionDate`,`Line`,`Product`,`PartNum`,`Mark1`,`Mark2`,`Mark3`,`Index`,`Volume`,`StartProductionTime`) 
               VALUES(@WorkID ,@MacAddress ,@Factory,@ProductionDate,@Line,@Product,@PartNum,@Mark1,@Mark2,@Mark3,@Index,@Volume,@StartProductionTime)";
            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, winfo, trans, null, null);
                        trans.Commit();
                        m_log.Info("WorkID Info Insert commited " + row);
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                        isSucc = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        public static bool InsertProductDashboard(ProductDashboard dashboard)
        {
            bool isSucc = true;

            if(string.IsNullOrEmpty(dashboard.work_id))
            {
                m_log.Error("InsertProductDashboard Error because workid is null.");
                return false;
            }

            string sqlCommandText = @"INSERT INTO product_dashboard(work_id, time, achieve, cosmetic, s1_name, s1_input, s1_output, s1_fp,
            s1_rework, s1_in_rework, s2_name, s2_input, s2_output, s2_fp, s2_rework, s2_in_rework, s3_name, s3_input, s3_output, 
            s3_fp, s3_rework, s3_in_rework, s4_name, s4_input, s4_output, s4_fp, s4_rework, s4_in_rework, s5_name, s5_input, s5_output, s5_fp,
            s5_rework, s5_in_rework, s6_name, s6_input, s6_output, s6_fp, s6_rework, s6_in_rework, s7_name, s7_input, s7_output, s7_fp, 
            s7_rework, s7_in_rework, s8_name, s8_input, s8_output, s8_fp, s8_rework, s8_in_rework, s9_name, s9_input, s9_output, s9_fp,
            s9_rework, s9_in_rework, s10_name, s10_input, s10_output, s10_fp, s10_rework, s10_in_rework, s11_name, s11_input, s11_output,
            s11_fp, s11_rework, s11_in_rework, s12_name, s12_input, s12_output, s12_fp, s12_rework, s12_in_rework, s13_name, s13_input, 
            s13_output, s13_fp, s13_rework, s13_in_rework, s14_name, s14_input, s14_output, s14_fp, s14_rework, s14_in_rework, s15_name,
            s15_input, s15_output, s15_fp, s15_rework, s15_in_rework, s16_name, s16_input, s16_output, s16_fp, s16_rework, s16_in_rework,
            s17_name, s17_input, s17_output, s17_fp, s17_rework, s17_in_rework, s18_name, s18_input, s18_output, s18_fp, s18_rework, 
            s18_in_rework, s19_name, s19_input, s19_output, s19_fp, s19_rework, s19_in_rework, s20_name, s20_input, s20_output, s20_fp, 
            s20_rework, s20_in_rework) 
            VALUES(@work_id,@time,@achieve,@cosmetic,@s1_name,@s1_input,@s1_output,@s1_fp,@s1_rework,@s1_in_rework,@s2_name,@s2_input,
            @s2_output,@s2_fp,@s2_rework,@s2_in_rework,@s3_name,@s3_input,@s3_output,@s3_fp,@s3_rework,@s3_in_rework,@s4_name,@s4_input,
            @s4_output,@s4_fp,@s4_rework,@s4_in_rework,@s5_name,@s5_input,@s5_output,@s5_fp,@s5_rework,@s5_in_rework,@s6_name,@s6_input,
            @s6_output,@s6_fp,@s6_rework,@s6_in_rework,@s7_name,@s7_input,@s7_output,@s7_fp,@s7_rework,@s7_in_rework,@s8_name,@s8_input,
            @s8_output,@s8_fp,@s8_rework,@s8_in_rework,@s9_name,@s9_input,@s9_output,@s9_fp,@s9_rework,@s9_in_rework,@s10_name,@s10_input,
            @s10_output,@s10_fp,@s10_rework,@s10_in_rework,@s11_name,@s11_input,@s11_output,@s11_fp,@s11_rework,@s11_in_rework,@s12_name,
            @s12_input,@s12_output,@s12_fp,@s12_rework,@s12_in_rework,@s13_name,@s13_input,@s13_output,@s13_fp,@s13_rework,@s13_in_rework,
            @s14_name,@s14_input,@s14_output,@s14_fp,@s14_rework,@s14_in_rework,@s15_name,@s15_input,@s15_output,@s15_fp,@s15_rework,
            @s15_in_rework,@s16_name,@s16_input,@s16_output,@s16_fp,@s16_rework,@s16_in_rework,@s17_name,@s17_input,@s17_output,@s17_fp,
            @s17_rework,@s17_in_rework,@s18_name,@s18_input,@s18_output,@s18_fp,@s18_rework,@s18_in_rework,@s19_name,@s19_input,@s19_output,
            @s19_fp,@s19_rework,@s19_in_rework,@s20_name,@s20_input,@s20_output,@s20_fp,@s20_rework,@s20_in_rework)";

            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, dashboard, trans, null, null);
                        trans.Commit();
                        m_log.Info("Dashboard Insert commited " + row);
                    }
                    catch (Exception e)
                    {
                        isSucc = false;
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }


        public static bool InsertProductDashboard(List<ProductDashboard> list)
        {
            bool isSucc = true;
            string sqlCommandText = @"INSERT INTO product_dashboard(work_id, time, achieve, cosmetic, s1_name, s1_input, s1_output, s1_fp,
            s1_rework, s1_in_rework, s2_name, s2_input, s2_output, s2_fp, s2_rework, s2_in_rework, s3_name, s3_input, s3_output, 
            s3_fp, s3_rework, s3_in_rework, s4_name, s4_input, s4_output, s4_fp, s4_rework, s4_in_rework, s5_name, s5_input, s5_output, s5_fp,
            s5_rework, s5_in_rework, s6_name, s6_input, s6_output, s6_fp, s6_rework, s6_in_rework, s7_name, s7_input, s7_output, s7_fp, 
            s7_rework, s7_in_rework, s8_name, s8_input, s8_output, s8_fp, s8_rework, s8_in_rework, s9_name, s9_input, s9_output, s9_fp,
            s9_rework, s9_in_rework, s10_name, s10_input, s10_output, s10_fp, s10_rework, s10_in_rework, s11_name, s11_input, s11_output,
            s11_fp, s11_rework, s11_in_rework, s12_name, s12_input, s12_output, s12_fp, s12_rework, s12_in_rework, s13_name, s13_input, 
            s13_output, s13_fp, s13_rework, s13_in_rework, s14_name, s14_input, s14_output, s14_fp, s14_rework, s14_in_rework, s15_name,
            s15_input, s15_output, s15_fp, s15_rework, s15_in_rework, s16_name, s16_input, s16_output, s16_fp, s16_rework, s16_in_rework,
            s17_name, s17_input, s17_output, s17_fp, s17_rework, s17_in_rework, s18_name, s18_input, s18_output, s18_fp, s18_rework, 
            s18_in_rework, s19_name, s19_input, s19_output, s19_fp, s19_rework, s19_in_rework, s20_name, s20_input, s20_output, s20_fp, 
            s20_rework, s20_in_rework) 
            VALUES(@work_id,@time,@achieve,@cosmetic,@s1_name,@s1_input,@s1_output,@s1_fp,@s1_rework,@s1_in_rework,@s2_name,@s2_input,
            @s2_output,@s2_fp,@s2_rework,@s2_in_rework,@s3_name,@s3_input,@s3_output,@s3_fp,@s3_rework,@s3_in_rework,@s4_name,@s4_input,
            @s4_output,@s4_fp,@s4_rework,@s4_in_rework,@s5_name,@s5_input,@s5_output,@s5_fp,@s5_rework,@s5_in_rework,@s6_name,@s6_input,
            @s6_output,@s6_fp,@s6_rework,@s6_in_rework,@s7_name,@s7_input,@s7_output,@s7_fp,@s7_rework,@s7_in_rework,@s8_name,@s8_input,
            @s8_output,@s8_fp,@s8_rework,@s8_in_rework,@s9_name,@s9_input,@s9_output,@s9_fp,@s9_rework,@s9_in_rework,@s10_name,@s10_input,
            @s10_output,@s10_fp,@s10_rework,@s10_in_rework,@s11_name,@s11_input,@s11_output,@s11_fp,@s11_rework,@s11_in_rework,@s12_name,
            @s12_input,@s12_output,@s12_fp,@s12_rework,@s12_in_rework,@s13_name,@s13_input,@s13_output,@s13_fp,@s13_rework,@s13_in_rework,
            @s14_name,@s14_input,@s14_output,@s14_fp,@s14_rework,@s14_in_rework,@s15_name,@s15_input,@s15_output,@s15_fp,@s15_rework,
            @s15_in_rework,@s16_name,@s16_input,@s16_output,@s16_fp,@s16_rework,@s16_in_rework,@s17_name,@s17_input,@s17_output,@s17_fp,
            @s17_rework,@s17_in_rework,@s18_name,@s18_input,@s18_output,@s18_fp,@s18_rework,@s18_in_rework,@s19_name,@s19_input,@s19_output,
            @s19_fp,@s19_rework,@s19_in_rework,@s20_name,@s20_input,@s20_output,@s20_fp,@s20_rework,@s20_in_rework)";

            int row = 0;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return false;
                        row = Conn.Execute(sqlCommandText, list, trans, null, null);
                        m_log.Info("Dashboard Insert commited " + row);
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return isSucc;
        }

        private static bool HandleInsertDuplicate(List<ProductTestInfo> list,string mess)
        {
            //MySql.Data.MySqlClient.MySqlException (0x80004005): Duplicate entry '0x0ee8fc22-046D-work id? -NA-0-123' for key 'PRIMARY'
            bool isSucc = false;
            string t1 = "Duplicate entry";
            string t2 = "for key 'PRIMARY'";
            int s1 = mess.IndexOf(t1);
            int s2 = mess.IndexOf(t2);
            if(s1>0 && s2>0)
            {
                string str1 = mess.Substring(s1 + t1.Length + 2, s2 - (s1 + t1.Length + 4));
                string[] tokens = str1.Split('-');
                string sn = tokens[0];
                string product = tokens[1];
                string workid = tokens[2];
                string station = tokens[3];
                int result = Convert.ToInt32(tokens[4]);
                int frequency = Convert.ToInt32(tokens[5]);

                foreach (ProductTestInfo tinfo in list)
                {
                    bool f1 = sn == tinfo.test_index;
                    bool f2 = product == tinfo.product;
                    bool f3 = station == tinfo.station;
                    bool f4 = workid == tinfo.work_id;
                    bool f5 = result == tinfo.result;

                    if (f1 && f2 && f3 && f4 && f5)
                    {
                        bool isInsertSucc = InsertProductTestInfo((RemoveItemFromList(list, tinfo)));
                        bool isUpdateSucc = UpdateProductTestInfo(tinfo); // ? there is some logic
                        isSucc = isInsertSucc && isUpdateSucc;
                    }   
                }
            }

            return isSucc;
        }

        private static List<ProductTestInfo> RemoveItemFromList(List<ProductTestInfo> srcList, ProductTestInfo tinfo)
        {
            List<ProductTestInfo> list = new List<ProductTestInfo>();

            foreach(ProductTestInfo item in srcList)
            {
                if (item.test_index != tinfo.test_index)
                    list.Add(item);
            }

            return list;
        }

        public static DateTime GetMySqlTime()
        {

            List<DateTime> list = null;
            DateTime time = DateTime.MinValue;
            string sqlCommandText = @"select now();";
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    IDbTransaction trans = null;
                    try
                    {
                        if (!Conn.Ping())
                        {
                            Conn.Close();
                            Conn.Open();
                        }
                        trans = Conn.BeginTransaction();
                        if (trans == null)
                            return time;
                        list = (List<DateTime>)Conn.Query<DateTime>(sqlCommandText, trans);
                        time = list[0].ToLocalTime();
                        time = time.AddHours(-8);
                        trans.Commit();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return time;
        }

        public static bool Ping()
        {
            bool flag = false;
            // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    try
                    {
                        flag = Conn.Ping();
                        if(!flag)
                        {
                            Conn.Open();
                            flag = Conn.Ping();
                        }

                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
                        isConnFromDB = false;
                    }
                    finally
                    {
                        Close();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
            
            return flag;
        }

        private static void Close()
        {
            Conn.Close();
        }
    }
}

/*
 // acquire start
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    // TO DO
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            // acquire end
*/