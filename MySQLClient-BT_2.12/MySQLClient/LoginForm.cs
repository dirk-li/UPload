using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Xml.Serialization;
using System.Xml;
using MySql.Data.MySqlClient;

namespace MySQLClient
{
    public partial class LoginForm : Form
    {
        //<value>Data Source = aws41sztedb01.corp.logitech.com; Database=goldensample;User ID = root; Password=logitech</value>
        public string connectstr;
        public string userServer;
        public string userDB;
        public string userid;
        public string password;
        private List<string> listDB = new List<string>();
        public LoginForm()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            try
            {
                createDB("world");//For DB List
                createDBListTable();
                if (File.Exists("user.xml"))
                {
                    clsUser user = getUser();
                    this.comboBoxServer.Text = user.userServer;
                    //this.comboBoxDB.Text = user.userDB;
                    this.comboBoxDB.Items.Add(user.userDB.ToUpper());
                    this.comboBoxDB.SelectedIndex = 0;
                    this.textBoxID.Text = user.userId;
                    if (user.userId.Length != 0)
                        this.textBoxPassWord.InvokeFocus();
                    else
                        this.textBoxID.InvokeFocus();
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }         
        }

        private void buttonLogin_Click(object sender, EventArgs e)
        {
            try
            {
                userServer = this.comboBoxServer.Text.Trim().ToUpper();
                userDB = this.comboBoxDB.Text.Trim().ToLower();
                userid = this.textBoxID.Text.Trim();
                password = this.textBoxPassWord.Text.Trim();
                if(userServer.Length==0)
                {
                    MessageBox.Show("User Server can not be null,pls reset!");
                    return;
                }
                if(userDB.Length == 0)
                {
                    MessageBox.Show("User DB can not be null,pls reset!");
                    return;
                }
                if(userid.Length == 0)
                {
                    MessageBox.Show("User ID can not be null,pls reset!");
                    return;
                }
                if (password.Length == 0)
                {
                    MessageBox.Show("Password can not be null,pls reset!");
                    return;
                }
                createDB(userDB);//Check User DB exist?
                CreateDBUserInfoTable("user_info");
                CreateProductInfoTable("product_info");
                if (userDB.Equals("astro"))
                {
                    CreateTrackTable("product_test_track");
                    CreateTrackHistoryTable("product_test_track_history");
                    CreateInfoTable("product_test_info");
                    CreateInfoHistoryTable("product_test_info_history");
                }
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                string sql = "SELECT * FROM user_info WHERE id='" + userid + "'";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);
                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("为查询到此用户，请检查！");
                    return;
                }

                if (userid.Equals(dt.Rows[0][0].ToString())
                    && password.Equals(dt.Rows[0][2].ToString()))
                {
                    clsUser user = new clsUser();
                    user.userServer = userServer;
                    user.userDB = userDB;
                    user.userId = dt.Rows[0][0].ToString();
                    user.userName = dt.Rows[0][1].ToString();
                    //user.userPassword = dt.Rows[0][2].ToString();
                    user.userPassword = EncryptHelper.Base64Encode(dt.Rows[0][2].ToString());
                    user.userDepartment = dt.Rows[0][3].ToString();
                    user.userEmail = dt.Rows[0][4].ToString();
                    //user.userPermission = dt.Rows[0][5].ToString();
                    user.userPermission = EncryptHelper.DESEncrypt(dt.Rows[0][5].ToString());
                    user.userTime = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
                    sql = "UPDATE user_info SET time='" + user.userTime + "' WHERE id='" + userid + "'";
                    mysql.ExeUpdate(sql);
                    saveUser(user);
                    this.DialogResult = DialogResult.OK;
                }
                else
                {
                    MessageBox.Show("Login Failed,pls check your information!");
                    return;
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public static void saveUser(clsUser user)
        {
            XmlSerializer serializer = new XmlSerializer(user.GetType());
            string path = System.IO.Directory.GetCurrentDirectory() + "\\user.xml";
            TextWriter writer = new StreamWriter(path);
            serializer.Serialize(writer, user);
            writer.Close();
        }
        private void createDB(string dbname)
        {
            MySQLHelp mysql = new MySQLHelp(userServer,"");
            mysql.ExeUpdate("create database if not exists " + dbname);
        }
        private void createDBListTable()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("CREATE TABLE IF NOT EXISTS db_info (");
            sb.Append("name VARCHAR(45) NOT NULL DEFAULT '-' COMMENT 'group',");
            sb.Append("id VARCHAR(20) NOT NULL DEFAULT '237000' COMMENT 'user ID',");
            sb.Append("time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'creat time',");
            sb.Append("  PRIMARY KEY ( name ))");
            sb.Append("ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COMMENT = 'Database list table'");
            MySQLHelp mysql = new MySQLHelp(userServer,"world");
            mysql.ExeUpdate(sb.ToString());
            sb.Clear();
            sb.Append("SELECT * FROM db_info");
            DataTable dt = mysql.ExeQueryDataSet(sb.ToString());
            if (dt.Rows.Count == 0)
            {
                sb.Clear();
                sb.Append("INSERT ignore INTO db_info ");
                sb.Append("(name, id) VALUES");
                sb.Append("('astro','237000'),('bt','237000'),('sn','237000'),('weight','237000')");
                mysql.ExeUpdate(sb.ToString());
            }
        }
        private void CreateDBUserInfoTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                string cmdStr = "select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='" + userDB + "' and Table_NAME = '" + table + "'";
                if (!mysql.CheckExistTable(cmdStr))
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("CREATE TABLE " + table + " (");
                    sb.Append("id VARCHAR(20) NOT NULL DEFAULT '237000' COMMENT 'user ID',");
                    sb.Append("name VARCHAR(20) NOT NULL DEFAULT '-' ,");
                    sb.Append("password VARCHAR(20) NOT NULL DEFAULT '123456' ,");
                    sb.Append("department VARCHAR(20) NOT NULL DEFAULT '-' ,");
                    sb.Append("email VARCHAR(45) NOT NULL DEFAULT '-' ,");
                    sb.Append("permission INT(10) NOT NULL DEFAULT '99' ,");
                    sb.Append("time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'creat time',");
                    sb.Append("PRIMARY KEY ( id ))");
                    sb.Append("ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;");
                    mysql.ExeUpdate(sb.ToString());
                    sb.Clear();
                    sb.Append("SELECT * FROM "+ table);
                    DataTable dt = mysql.ExeQueryDataSet(sb.ToString());
                    if (dt.Rows.Count == 0)
                    {
                        sb.Clear();
                        sb.Append("INSERT ignore INTO "+table+" ");
                        sb.Append("(id, name,password,department,email,permission) VALUES");
                        sb.Append("('237000','Milo','123456','MEC-TE','mxu3@logitech.com','0')");
                        mysql.ExeUpdate(sb.ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        private void CreateProductInfoTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                string cmdStr = "select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='" + userDB + "' and Table_NAME = '" + table + "'";
                if (!mysql.CheckExistTable(cmdStr))
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("CREATE TABLE " + table + " ( ");
                    sb.Append("groupName VARCHAR(45) NOT NULL,");
                    sb.Append("name VARCHAR(45) NOT NULL ,");
                    sb.Append("threshold VARCHAR(45) NOT NULL DEFAULT '1000' ,");
                    sb.Append("id VARCHAR(20) NOT NULL DEFAULT '-' ,");
                    sb.Append("time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'creat time',");
                    sb.Append("PRIMARY KEY ( groupName,name ))");
                    sb.Append("ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;");
                    mysql.ExeUpdate(sb.ToString());
                    sb.Clear();
                    sb.Append("SELECT * FROM " + table);
                    DataTable dt = mysql.ExeQueryDataSet(sb.ToString());
                    if (dt.Rows.Count == 0)
                    {
                        ;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        private void CreateTrackTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                StringBuilder sb = new StringBuilder();
                sb.Append("CREATE TABLE IF NOT EXISTS " + table + " (");
                sb.Append(" test_index VARCHAR(36) NOT NULL,");
                sb.Append(" product VARCHAR(20) NOT NULL DEFAULT '-',");
                sb.Append(" work_id VARCHAR(100) NOT NULL DEFAULT '-',");
                sb.Append(" 8l_sn VARCHAR(12) NOT NULL DEFAULT '-',");
                sb.Append(" 9l_sn VARCHAR(16) NOT NULL DEFAULT '-',");
                sb.Append(" carton_sn VARCHAR(45) NOT NULL DEFAULT '-',");
                sb.Append(" rcv_sn VARCHAR(20) NOT NULL DEFAULT '-',");
                for (int j = 1; j < 11; j++)
                {
                    sb.Append(" kp_" + j.ToString() + " VARCHAR(45) NOT NULL DEFAULT '-',");
                }

                sb.Append("  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,");
                for (int i = 1; i <= 20; i++)
                {
                    sb.Append("  s" + i.ToString() + " INT UNSIGNED NOT NULL DEFAULT 2,");
                }
                sb.Append("  PRIMARY KEY ( test_index, product))");
                sb.Append("ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COMMENT = 'product tracking list';");
                mysql.ExeUpdate(sb.ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        private void CreateTrackHistoryTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                StringBuilder sb = new StringBuilder();
                sb.Append("CREATE TABLE IF NOT EXISTS " + table + " (");
                sb.Append(" test_index VARCHAR(36) NOT NULL,");
                sb.Append(" product VARCHAR(20) NOT NULL DEFAULT '-',");
                sb.Append(" work_id VARCHAR(100) NOT NULL DEFAULT '-',");
                sb.Append(" 8l_sn VARCHAR(12) NOT NULL DEFAULT '-',");
                sb.Append(" 9l_sn VARCHAR(16) NOT NULL DEFAULT '-',");
                sb.Append(" carton_sn VARCHAR(45) NOT NULL DEFAULT '-',");
                sb.Append(" rcv_sn VARCHAR(20) NOT NULL DEFAULT '-',");
                for (int j = 1; j < 11; j++)
                {
                    sb.Append(" kp_" + j.ToString() + " VARCHAR(45) NOT NULL DEFAULT '-',");
                }

                sb.Append("  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,");
                for (int i = 1; i <= 20; i++)
                {
                    sb.Append("  s" + i.ToString() + " INT UNSIGNED NOT NULL DEFAULT 2,");
                }
                sb.Append("  PRIMARY KEY ( test_index, product))");
                sb.Append("ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COMMENT = 'product tracking list';");
                mysql.ExeUpdate(sb.ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        private void CreateInfoTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                StringBuilder sb = new StringBuilder();
                sb.Append("CREATE TABLE IF NOT EXISTS " + table + " (");
                sb.Append("  test_index VARCHAR(36) NOT NULL,");
                sb.Append("  product VARCHAR(20) NOT NULL,");
                sb.Append("  station VARCHAR(20) NOT NULL,");
                sb.Append(" work_id VARCHAR(100) NOT NULL DEFAULT '-',");
                sb.Append(" pcmac VARCHAR(17) NOT NULL DEFAULT '-',");
                sb.Append("  result INT UNSIGNED NOT NULL DEFAULT 0,");
                sb.Append("  frequency INT UNSIGNED NOT NULL DEFAULT 0,");
                sb.Append("  continuous INT UNSIGNED NOT NULL DEFAULT 1,");
                sb.Append("  errorinfo VARCHAR(45) NOT NULL DEFAULT '-',");
                sb.Append("  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,");
                for (int i = 1; i <= 20; i++)
                {
                    sb.Append("  t" + i.ToString() + " VARCHAR(20) NOT NULL DEFAULT '-',");
                }
                sb.Append(" PRIMARY KEY (test_index,product,station, work_id,result, frequency,continuous))ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;");

                mysql.ExeUpdate(sb.ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        private void CreateInfoHistoryTable(string table)
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(userServer,userDB);
                StringBuilder sb = new StringBuilder();
                sb.Append("CREATE TABLE IF NOT EXISTS " + table + " (");
                sb.Append("  test_index VARCHAR(36) NOT NULL,");
                sb.Append("  product VARCHAR(20) NOT NULL,");
                sb.Append("  station VARCHAR(20) NOT NULL,");
                sb.Append(" work_id VARCHAR(100) NOT NULL DEFAULT '-',");
                sb.Append(" pcmac VARCHAR(17) NOT NULL DEFAULT '-',");
                sb.Append("  result INT UNSIGNED NOT NULL DEFAULT 0,");
                sb.Append("  frequency INT UNSIGNED NOT NULL DEFAULT 0,");
                sb.Append("  continuous INT UNSIGNED NOT NULL DEFAULT 1,");
                sb.Append("  errorinfo VARCHAR(45) NOT NULL DEFAULT '-',");
                sb.Append("  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,");
                for (int i = 1; i <= 20; i++)
                {
                    sb.Append("  t" + i.ToString() + " VARCHAR(20) NOT NULL DEFAULT '-',");
                }
                sb.Append(" PRIMARY KEY (test_index,product,station, work_id,result, frequency,continuous))ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;");

                mysql.ExeUpdate(sb.ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建" + table + "表格失败，请检查！");
                return;
            }
        }

        public static clsUser getUser()
        {
            if (System.IO.File.Exists(System.IO.Directory.GetCurrentDirectory() + "\\user.xml"))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(clsUser));
                XmlTextReader readerXml = new XmlTextReader("user.xml");
                clsUser user = (clsUser)serializer.Deserialize(readerXml);
                readerXml.Close();
                return user;
            }
            else { return null; };
        }

        private void buttonQuit_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
        private void GetDBList()
        {
            try
            {
                userServer = this.comboBoxServer.Text.Trim().ToUpper();
                if (userServer.Length == 0)
                {
                    MessageBox.Show("User Server can not be null,pls reset!");
                    return;
                }
                this.comboBoxDB.Items.Clear();
                listDB.Clear();
                MySQLHelp mysql = new MySQLHelp(userServer,"world");
                string sql = "SELECT * FROM db_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("name"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listDB.Contains(dt.Rows[j][i].ToString()))
                                listDB.Add(dt.Rows[j][i].ToString().ToUpper());
                        }
                        break;
                    }
                }
                this.comboBoxDB.Items.AddRange(listDB.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品类别失败！");
                return;
            }
        }

        private void comboBoxDB_DropDown(object sender, EventArgs e)
        {
            GetDBList();
        }
    }
    public static class CtrlEx
    {
        public static void InvokeFocus(this Control c)
        {
            if (c.InvokeRequired)
            {
                c.Invoke(new Action<Control>(InvokeFocus), new object[] { c });
            }
            else
            {
                c.Focus();
            }
        }
    }
}
