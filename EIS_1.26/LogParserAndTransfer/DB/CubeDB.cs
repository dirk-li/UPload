using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data;
using MySql;
using MySql.Data.MySqlClient;
using log4net;
using System.Threading;

namespace LogParserAndTransfer.DB
{
    public class CubeDB
    {
        static string ip = AppSetting.Default.DBServerIP;
        static string port = AppSetting.Default.DBServerPort;
        static string user = AppSetting.Default.DBAccount;
        static string password = AppSetting.Default.DBPassword;
        private static object syncRoot = new object();
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
        //private static readonly string Config = "server=172.17.149.240;port=3306;database=product_eis;uid=root;pwd=logitech;Allow User Variables=true;Pooling=false";
        //private static readonly string Config = "server=172.17.147.173;port=3306;database=product_eis;uid=root;pwd=123456;Allow User Variables=true;Pooling=false";
        private static readonly string Config = "server=aws41sztedb01.corp.logitech.com;port=3306;database=product_eis;uid=root;pwd=logitech;Pooling=false;Connection Timeout=600;Default Command Timeout=600";

        // *** can't use EIS DB IP, should use another aws server
        //private static readonly string Config = "";

        private static readonly MySqlConnection Conn = new MySqlConnection(Config);
        private static readonly ILog m_log = LogManager.GetLogger("log");

        public static bool InsertRTProductDashboard(ProductDashboard dashboard)
        {
            bool isSucc = true;

            string sqlCommandText = @"INSERT INTO product_dashboard_real_time(work_id, time, last_updated_date,achieve, cosmetic, s1_name, s1_input, s1_output, s1_fp,
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
            VALUES(@work_id,@time,@last_updated_date,@achieve,@cosmetic,@s1_name,@s1_input,@s1_output,@s1_fp,@s1_rework,@s1_in_rework,@s2_name,@s2_input,
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
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return false;
                row = Conn.Execute(sqlCommandText, dashboard, trans, null, null);
                trans.Commit();
                //m_log.Info("RT Dashboard Insert commited " + row);
            }
            catch (Exception e)
            {
                isSucc = false;
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }

            return isSucc;
        }

        public static List<ProductDashboard> SelectDashboardByUpdatedTime(DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = null;
            IDbTransaction trans = null;

            string st = startTime.ToString("yyyy-MM-dd HH:mm:ss");
            string et = endTime.ToString("yyyy-MM-dd HH:mm:ss");

            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query1 = "SELECT* FROM product_eis.product_dashboard_real_time where " +
                    "last_updated_date between '{0}' and '{1}' order by work_id ";
                string query = String.Format(query1, st, et);
                list = Conn.Query<ProductDashboard>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }

            return list;
        }

        public static void Close()
        {
            if (Conn.State == ConnectionState.Open)
                Conn.Close();
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
                    if (Conn.State != ConnectionState.Open)
                        Conn.Open();
                    try
                    {
                        flag = Conn.Ping();
                    }
                    catch (Exception e)
                    {
                        string mess = e.ToString();
                        m_log.Error(mess);
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

    }
}
