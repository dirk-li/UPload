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

namespace LogParserAndTransfer.DB
{
    public class EPMDB
    {
        private static readonly string Config = "server=aws41mocprod.cbdfio6hbo5q.rds.cn-north-1.amazonaws.com.cn;port=3306;database=mocprod;uid=rework_user;pwd=rework_user;Pooling=false";
        //private static readonly string Config = "server=aws41mocdev.cbdfio6hbo5q.rds.cn-north-1.amazonaws.com.cn;port=3306;database=mocqa;uid=rework_user;pwd=rework_user;Pooling=false";
        //private static readonly string Config = "server=172.17.149.240;port=3306;database=mocqa;uid=root;pwd=logitech;";
        private static readonly MySqlConnection Conn = new MySqlConnection(Config);
        private static readonly ILog m_log = LogManager.GetLogger("log");

        public static List<EPMWorkid> SelectEPMWorkId(string dateStr, string line)
        {
            List<EPMWorkid> list = null;
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query = String.Format("SELECT * FROM mocprod.dpslist where JobDate='{0}' and LineName = '{1}' ", dateStr, line);
                //string query = String.Format("SELECT * FROM mocqa.dpslist where JobDate='{0}' and LineName = '{1}' ", dateStr, line);
                list = Conn.Query<EPMWorkid>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                if(trans != null)
                    trans.Rollback();
            }
            finally
            {
                Close();
            }
            return list;
        }

        public static bool Ping()
        {
            bool flag = false;
            try
            {
                flag = Conn.Ping();
                if (!flag)
                {
                    Conn.Open();
                    flag = Conn.Ping();
                }

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

            return flag;
        }

        public static void Close()
        {
            if (Conn.State == ConnectionState.Open)
                Conn.Close();
        }
    }
}

