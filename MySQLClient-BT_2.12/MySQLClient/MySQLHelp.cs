using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Collections;

namespace MySQLClient
{
    public class MySQLHelp
    {
        public string Constr = "";
        public string ConDB;
        public MySQLHelp(string strServer,string strDB)
        {
            if (strServer == "IDC")
                Constr = Properties.Settings.Default.constrIDC;
            else
                Constr = Properties.Settings.Default.constr;
            this.ConDB = strDB;
        }
        #region  建立MySql数据库连接
        /// <summary>
        /// 建立数据库连接.
        /// </summary>
        /// <returns>返回MySqlConnection对象</returns>
        private MySqlConnection GetMysqlConnection()
        {
            string M_str_sqlcon = Constr+ "Database="+ConDB;
            MySqlConnection myCon = new MySqlConnection(M_str_sqlcon);
            return myCon;
        }
        #endregion

        #region  执行MySqlCommand命令
        /// <summary>
        /// 执行MySqlCommand
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        public void ExeUpdate(string M_str_sqlstr)
        {
            MySqlConnection mysqlcon = this.GetMysqlConnection();
            try
            {
                mysqlcon.Open();
                MySqlCommand mysqlcom = new MySqlCommand(M_str_sqlstr, mysqlcon);
                mysqlcom.ExecuteNonQuery();
            }
            catch(MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                mysqlcon.Close();
            }
            return;
        }
        #endregion

        #region  判断table是否存在
        /// <summary>
        /// 执行MySqlCommand
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        public bool CheckExistTable(string M_str_sqlstr)
        {
            MySqlConnection mysqlcon = this.GetMysqlConnection();
            try
            {
                mysqlcon.Open();
                MySqlCommand mysqlcom = new MySqlCommand(M_str_sqlstr, mysqlcon);
                MySqlDataReader reader = mysqlcom.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows == false)
                    return false;
                else
                    return true;
            }
            catch(MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                return false;
            }
            finally
            {
                mysqlcon.Close();
            }
        }
        #endregion
        #region  创建object对象，表数据统计
        /// <summary>
        /// 执行MySqlCommand
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        public object ExecuteScalar(string M_str_sqlstr)
        {
            MySqlConnection mysqlcon = this.GetMysqlConnection();
            try
            {
                MySqlCommand mysqlcom = new MySqlCommand(M_str_sqlstr, mysqlcon);
                mysqlcom.CommandTimeout = 600;
                mysqlcon.Open();
                return mysqlcom.ExecuteScalar();
            }
            catch(MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                return -1;
            }
            finally
            {
                mysqlcon.Close();
            }

        }
        #endregion
        #region  创建MySqlDataReader对象
        /// <summary>
        /// 创建一个MySqlDataReader对象
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        /// <returns>返回MySqlDataReader对象</returns>
        public MySqlDataReader ExeQuery(string M_str_sqlstr)
        {
            MySqlConnection mysqlcon = this.GetMysqlConnection();
            MySqlDataReader mysqlread = null;
            try
            {
                MySqlCommand mysqlcom = new MySqlCommand(M_str_sqlstr, mysqlcon);
                mysqlcon.Open();
                mysqlread = mysqlcom.ExecuteReader(CommandBehavior.CloseConnection);             
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                mysqlcon.Close();
            }
            return mysqlread;
        }
        #endregion

        #region  创建DataSet对象
        /// <summary>
        /// 创建一个DataSet对象
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        /// <returns>返回MySqlDataReader对象</returns>
        public DataTable ExeQueryDataSet(string M_str_sqlstr)
        {
            DataTable dt = new DataTable();
            MySqlConnection mysqlcon = this.GetMysqlConnection();
            try
            {
                MySqlCommand mysqlcom = new MySqlCommand(M_str_sqlstr, mysqlcon);
                mysqlcon.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(mysqlcom);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dt = ds.Tables[0];
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                mysqlcon.Close();
            }
            return dt;
        }
        #endregion
        /// <summary>
        /// 执行多条SQL语句，实现数据库事务。
        /// </summary>mysql数据库
        /// <param name="SQLStringList">多条SQL语句</param>
        public void ExecuteSqlTran(List<string> SQLStringList)
        {
            using (MySqlConnection conn = this.GetMysqlConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = conn;
                MySqlTransaction tx = conn.BeginTransaction();
                cmd.Transaction = tx;
                try
                {
                    for (int n = 0; n < SQLStringList.Count; n++)
                    {
                        string strsql = SQLStringList[n].ToString();
                        if (strsql.Trim().Length > 1)
                        {
                            cmd.CommandText = strsql;
                            cmd.ExecuteNonQuery();
                        }
                        //后来加上的
                        if (n > 0 && (n % 500 == 0 || n == SQLStringList.Count - 1))
                        {
                            tx.Commit();
                            tx = conn.BeginTransaction();
                        }
                    }
                    //tx.Commit();//原来一次性提交
                }
                catch (System.Data.SqlClient.SqlException E)
                {
                    tx.Rollback();
                    throw new Exception(E.Message);
                }
            }
        }
    }
}
