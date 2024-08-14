using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Management;
using inifile;
using System.IO;
using System.Data;

namespace kinetic_mysql_bt
{
    class Program
    {
        static int Main(string[] args)
        {
            String connetStr = "server=aws41sztedb01.corp.logitech.com;user=root;password=logitech; database=bt;";
            
            string table_name = args[0].ToString();
            string localpctime = GetPCTime();
            string localpcmacaddress = GetPCMACAddress();
            string bt_address = "";
            string currentptah = Directory.GetCurrentDirectory();
            switch (args[1])
            {
                case "/GetAddress":


                    MySqlConnection mysql_connect = GetMysqlConnection(connetStr);
                    ExeUpdate("begin", mysql_connect);
                    string mysql_readstr = "select * from " + table_name + " WHERE status = '0' AND used = '0' limit 1 for update";
                    bt_address = get_btaddress(mysql_readstr, mysql_connect, 0);
                    Console.WriteLine(bt_address);
                    //update "+table_name+" 表单的status
                    string mysql_updatequerystatusstr = "UPDATE " + table_name + " SET status='1',pc='" + localpcmacaddress + "',statusTime=now() WHERE btAddress='" + bt_address + "'";
                   
                    ExeUpdate(mysql_updatequerystatusstr, mysql_connect);

                    ExeUpdate("commit", mysql_connect);
                    mysql_readstr = "select statusTime from " + table_name + " WHERE btAddress='"+ bt_address + "'";
                    string severtimes= get_btaddress(mysql_readstr, mysql_connect, 0);
                    mysql_connect.Close();
                    mysql_connect.Dispose();
                    string wr_mac_time = "";
                    if (File.Exists(currentptah + "//UID.txt"))
                    {
                        string s1 = File.ReadAllText(currentptah + "//UID.txt");
                        wr_mac_time = s1.Substring(0,s1.Length-2) + "," + severtimes + "," + bt_address;
                    }
                    else
                    {
                        wr_mac_time = "XXXXXXXXXX" + "," + severtimes + "," + bt_address;
                    }
                 
                    WriteFile(currentptah + "//GetMacfromsever.csv", wr_mac_time);
                    return 0;

                case "/returnmacstatus":

                    mysql_connect = GetMysqlConnection(connetStr);
                    ExeUpdate("begin", mysql_connect);
                    mysql_connect = GetMysqlConnection(connetStr);
                    string bt_address_return = args[2].ToUpper();

                    Console.WriteLine(bt_address_return);
                    string mysql_returnquerystatusstr = "UPDATE " + table_name + " SET status='" + 0.ToString() + "',statusTime=now() WHERE btAddress='" + bt_address_return + "'";
                  
                    ExeUpdate(mysql_returnquerystatusstr, mysql_connect);

                    ExeUpdate("commit", mysql_connect);
                    mysql_connect.Close();
                    mysql_connect.Dispose();

                    return 0;
        

                case "/updateused":
                    
                    string status_read = inifile.Class1.ReadIniData("Outputs", "Status", null,currentptah+"\\"+args[2]);
                    string bt_address_readstatus = inifile.Class1.ReadIniData("Outputs", "Values", null, currentptah + "\\" + args[2]).ToUpper();
                    
                    mysql_connect = GetMysqlConnection(connetStr);
                    //ExeUpdate("begin", mysql_connect);
                   //update "+table_name+" 表单的used
                    string mysql_updatequeryusedsstr = "UPDATE " + table_name + " SET used='1',usedTime=now() WHERE  btAddress='" + bt_address_readstatus + "'";
                    ExeUpdate(mysql_updatequeryusedsstr, mysql_connect);
                    string mysql_insertquerystr = "insert into " + table_name + "_used select * from " + table_name + " where btAddress='" + bt_address_readstatus + "'";
                    ExeUpdate(mysql_insertquerystr, mysql_connect);
                    string mysql_deletequerystr = "delete from " + table_name + " where btAddress='" + bt_address_readstatus + "'";
                    ExeUpdate(mysql_deletequerystr, mysql_connect);

                    //ExeUpdate("commit", mysql_connect);
                    mysql_connect.Close();
                    mysql_connect.Dispose();
                    //System.Threading.Thread.Sleep(2000);

                    mysql_connect = GetMysqlConnection(connetStr);
                   // ExeUpdate("begin", mysql_connect);
                    mysql_readstr = "select * from " + table_name + " WHERE btAddress='" + bt_address_readstatus + "'";
                    bt_address = get_btaddress(mysql_readstr, mysql_connect, 0);
                    if (bt_address == bt_address_readstatus)
                    {
                        return 1;
                    }
                    mysql_readstr = "select * from " + table_name + "_used WHERE status = '1' AND used = '1' AND btAddress='" + bt_address_readstatus + "'";
                    string bt_address_used = get_btaddress(mysql_readstr, mysql_connect, 0);
                    //ExeUpdate("commit", mysql_connect);
                    mysql_readstr = "select usedTime from " + table_name + "_used  WHERE btAddress='" + bt_address_readstatus + "'";
                    severtimes = get_btaddress(mysql_readstr, mysql_connect, 0);
                    mysql_connect.Close();
                    mysql_connect.Dispose();
                    if (bt_address_used == bt_address_readstatus)
                    {
                        string wr_uid_mac_time = "";
                        if (File.Exists(currentptah + "//UID.txt"))
                        {
                            string s1 = File.ReadAllText(currentptah + "//UID.txt");
                            wr_uid_mac_time = s1.Substring(0, s1.Length - 2) + "," + severtimes + "," + bt_address_readstatus;
                        }
                        else
                        {
                            wr_uid_mac_time = "XXXXXXXXXX" + "," + severtimes + "," + bt_address_readstatus;
                        }

                        WriteFile(currentptah + "//Writemactounits.csv", wr_uid_mac_time);
                        return 0;
                    }
                    else
                    {
                        return 1;
                    }                                    

                case "/?":
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /GetAddress                    ||  Get BT&BLE&ETH MAC Address and update MySQL status,Pc_macaddress,statuseTime");
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /updateused status.out         ||  Update MySQL status,Pc_macaddress,statuseTime and copy to M3 form " + table_name+"");
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /returnmacstatus get_mac.txt   ||  Return MySQL status,statuseTime " + table_name + "");
                    return 255;
                case "?":
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /GetAddress                    ||  Get BT&BLE&ETH MAC Address and update MySQL status,Pc_macaddress,statuseTime");
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /updateused status.out         ||  Update MySQL status,Pc_macaddress,statuseTime and copy to M3 form " + table_name + "");
                    Console.WriteLine("kinetic_mysql_bt.exe m1 /returnmacstatus get_mac.txt   ||  Return MySQL status,statuseTime" + table_name + "");
                    return 255;

                default:
                    return -1;

            }





           
           
            
        }
        #region  建立MySql数据库连接
        /// <summary>
        /// 建立数据库连接.
        /// </summary>
        /// <returns>返回MySqlConnection对象</returns>
        private static MySqlConnection GetMysqlConnection(string mysql_connect_str)
        {
            MySqlConnection myCon = new MySqlConnection(mysql_connect_str);
            myCon.Open();
            return myCon;
        }
        #endregion
        #region  执行MySqlCommand命令
        /// <summary>
        /// 执行MySqlCommand
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        public static void ExeUpdate(string updatequerystr, MySqlConnection Mysql_conn)
        {
            MySqlCommand mysqlcom = new MySqlCommand(updatequerystr, Mysql_conn);
            try
            {
                mysqlcom.ExecuteNonQuery();
                mysqlcom.Dispose();
                //Mysql_conn.Close();
               // Mysql_conn.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        #endregion
        #region  获取表单的第一个MAC_ADDRESS
        // <summary>
        ///  获取表单的第一个MAC_ADDRESS
        // <summary>
        public static string get_btaddress( string Mysql_reader_str, MySqlConnection Mysql_conn,int i)
        {
            MySqlCommand cmd = new MySqlCommand(Mysql_reader_str,Mysql_conn);
            MySqlDataReader reader = null;
            string btaddress = "";
            //获取查询结果代码：
            try
            {
                //执行查询，并将结果返回给读取器
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    btaddress = reader[i].ToString();
                    //Console.WriteLine(btaddress);
                  }
                reader.Close();
                return btaddress;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                reader.Close();
                return "fail";
            }
        }
        #endregion
        #region  获取本地电脑的MAC ADDRESS
        // <summary>
        ///  获取本地电脑的MAC ADDRESS
        // <summary>
        public static string GetPCMACAddress()
        {
            try
            {
                string strMac = string.Empty;
                ManagementClass mc = new ManagementClass("Win32_NetworkAdapterConfiguration");
                ManagementObjectCollection moc = mc.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    if ((bool)mo["IPEnabled"] == true)
                    {
                        strMac = mo["MacAddress"].ToString();
                    }
                }
                moc = null;
                mc = null;
                return strMac;
            }
            catch
            {
                return "unknown";
            }
        }
        #endregion
        #region  获取本地电脑时间
        // <summary>
        ///  获取获取本地电脑时间
        // <summary>
        public static string GetPCTime()
        {
            string pctime = DateTime.Now.ToString("yyyy-MM-dd HH:MM:ss");
            return pctime;
        }
        #endregion
        #region  获取本地电脑时间
        // <summary>
        ///  获取获取本地电脑时间
        // <summary>
        public static string inireturn(string filename)
        {
            string status_return= inifile.Class1.ReadIniData("Outputs", "Status", null, filename);
            return status_return;
        }
        #endregion

        private int ReadFile(string fileName)
        {
            int num = 0;
            StreamReader sr = File.OpenText(fileName);
            while (sr.ReadLine() != null)
            { num += 1; }
            sr.Close();
            return num;

        }
        private static void WriteFile(string filename,string wr_str)
        {
            if (!File.Exists(filename))
                File.Create(filename).Close();
            StreamWriter sw = new StreamWriter(filename, true, Encoding.UTF8);
            sw.WriteLine(wr_str);
            sw.Flush();
            sw.Close();
        }
       

    }
}
