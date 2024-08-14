using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace MySQLClient
{
    public partial class MCIDSNUploadForm : Form
    {
        public string group;
        public clsUser user;
        private MySQLHelp mysql;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> listSqlCommand = new List<string>();
        private List<string> list_sn = new List<string>();
        private List<string> list_week = new List<string>();
        private List<string> list_year = new List<string>();
        private List<string> list_meta_sn = new List<string>();
        private List<int> list_temp_meta_sn = new List<int>();
        private string productName,current_year,current_week, Meta_SN, temp_meta_sn, lastPO_Address="0000";
        delegate void SetTextCallback(string text);
        public MCIDSNUploadForm()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }
        private void MCIDSNUploadForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            mysql = new MySQLHelp(user.userServer, user.userDB);
            progressBar1.Value = 0;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void comboBoxGroup_DropDown(object sender, EventArgs e)
        {
            GetGroupList();
        }
        private void GetGroupList()
        {
            try
            {
                this.comboBoxGroup.Items.Clear();
                listGroup.Clear();
                //MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("groupName"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listGroup.Contains(dt.Rows[j][i].ToString()))
                                listGroup.Add(dt.Rows[j][i].ToString());
                        }
                        break;
                    }
                }
                this.comboBoxGroup.Items.AddRange(listGroup.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品类别失败！");
                return;
            }
        }

        private void GetProductList()
        {
            try
            {
                this.comboBoxProductList.Items.Clear();
                listProduct.Clear();
                //MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info WHERE product_info.groupName = '" + group + "'";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("name"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listProduct.Contains(dt.Rows[j][i].ToString()))
                                listProduct.Add(dt.Rows[j][i].ToString());
                        }
                        break;
                    }
                }

                this.comboBoxProductList.Items.AddRange(listProduct.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }
        }
        private void GetYearList()
        {
            try
            {
                list_year.Clear();
                this.comboBox_Year.Items.Clear();
                current_year = DateTime.Now.Year.ToString();
                list_year.Add(current_year);
                this.comboBox_Year.Items.AddRange(list_year.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取年失败");
            }
        }
        private void GetWeekList()
        {
            try
            {
                list_week.Clear();
                this.comboBox_Week.Items.Clear();
                //DateTime today = DateTime.Today;
                //int weekOfYear = GetWeekOfYear(today);
                current_week = GetWeekOfYear(DateTime.Today).ToString();
                list_week.Add(current_week);
                this.comboBox_Week.Items.AddRange(list_week.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取周失败");
            }
        }
        public static int GetWeekOfYear(DateTime date)
        {
            // 设置一周的开始是星期一
            DayOfWeek weekStart = DayOfWeek.Monday;

            // 获取指定日期是一周中的第几天，并计算从一年中第一个星期一到指定日期的周数
            int diff = date.DayOfWeek - weekStart;
            if (diff < 0) diff += 7;

            // 获取一年中第一个星期一
            DateTime firstMonday = new DateTime(date.Year, 1, 1);
            if (firstMonday.DayOfWeek != weekStart)
            {
                // 如果一年中的第一个日期不是星期一，则计算到第一个星期一的天数
                int daysToFirstWeek = (int)weekStart - (int)firstMonday.DayOfWeek + 7;
                firstMonday = firstMonday.AddDays(daysToFirstWeek);
            }

            // 计算从第一个星期一到指定日期的周数
            int weekNum = (int)((date - firstMonday).TotalDays / 7) + 1;

            return weekNum;
        }
        private void comboBox_Year_DropDown(object sender, EventArgs e)
        {
            GetYearList();
        }

        private void richTextBox_PO_KeyDown(object sender, KeyEventArgs e)
        {
            richTextBox_M1M7.Text = "8158200";
        }

        private void comboBox_Week_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            //GetWeekList();
        }

        private void comboBox_Week_DropDown(object sender, EventArgs e)
        {
          
            GetWeekList();
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            if (group.Length == 0)
            {
                MessageBox.Show("请选择产品类别");
                return;
            }
            productName = this.comboBoxProductList.Text.Trim().ToString();
            if (productName.Length == 0)
            {
                MessageBox.Show("请选择产品名称");
                return;
            }
            string strsql = "CREATE TABLE  IF NOT EXISTS " + productName + " (btAddress nvarchar(50) not null primary key, status char(10) not null,used char(10) not null,cvc nvarchar(50) not null,pc nvarchar(50),statusTime datetime not null,usedTime datetime not null,insertTime datetime not null)";
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(strsql);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }
            strsql = "CREATE TABLE  IF NOT EXISTS " + productName + "_used" + " (btAddress nvarchar(50) not null primary key, status char(10) not null,used char(10) not null,cvc nvarchar(50) not null,pc nvarchar(50),statusTime datetime not null,usedTime datetime not null,insertTime datetime not null)";
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(strsql);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }
            //this.SetText("0/0");
            progressBar1.Value = 0;
            
            //backgroundWorker1.RunWorkerAsync();
            manual_insert_address();
            this.buttonOK.Enabled = false;
        }
        private void Create_Meta_SN()
        {
            try
            {
                list_meta_sn.Clear();

                for (int i = 1; i < int.Parse(this.richTextBox_PO_count.Text)+1; i++)
                {

                    string S6_S9="";
                    temp_meta_sn = "";
                    Meta_SN = "";

                    int temp_i = i+int.Parse(lastPO_Address.Substring(15,4));
                    if (temp_i<9999)
                    {
                        if (temp_i < 10)
                        {
                            S6_S9 = "000" + temp_i.ToString();
                        }
                        else if (temp_i >= 10 && temp_i < 100)
                        {
                            S6_S9 = "00" + temp_i.ToString();
                        }
                        else if (temp_i >= 100 && temp_i < 1000)
                        {
                            S6_S9 = "0" + temp_i.ToString();
                        }
                        else
                        {
                            S6_S9 = temp_i.ToString();
                        }

                        temp_meta_sn = "000" + this.richTextBox_M1M7.Text + "31" + this.comboBox_Year.Text.Substring(this.comboBox_Year.Text.Length - 1) + this.comboBox_Week.Text + S6_S9;
                        int check_digit = Get_digit(temp_meta_sn);
                        list_meta_sn.Add(temp_meta_sn + check_digit.ToString());
                    }
                    else
                    {
                        MessageBox.Show("SN 数量超过9999");
                    }
                   
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("Create Meta SN Fail");
            }
            
        }

        private int Get_digit(string temp_meta_sn)
        {
            int temp_digit;
            list_temp_meta_sn.Clear();
            for (int i = 0; i < temp_meta_sn.Length; i++)
            {
                list_temp_meta_sn.Add(int.Parse(temp_meta_sn.Substring(i,1)));
                
            }
            temp_digit = (10-((
                list_temp_meta_sn[2] * 3+
                list_temp_meta_sn[3]* 1+
                list_temp_meta_sn[4] * 3+
                list_temp_meta_sn[5] * 1 +
                list_temp_meta_sn[6] * 3 +
                list_temp_meta_sn[7] * 1 +
                list_temp_meta_sn[8] * 3 +
                list_temp_meta_sn[9] * 1 +
                list_temp_meta_sn[10] * 3 +
                list_temp_meta_sn[11] * 1 +
                list_temp_meta_sn[12] * 3 +
                list_temp_meta_sn[13] * 1 +
                list_temp_meta_sn[14] * 3 +
                list_temp_meta_sn[15] * 1 +
                list_temp_meta_sn[16] * 3 +
                list_temp_meta_sn[17] * 1 +
                list_temp_meta_sn[18] * 3 
                          )%10))%10;
            return temp_digit;
        }
        private void manual_insert_address()
        {
            listSqlCommand.Clear();
        
          
            try
            {
                string cvc = this.comboBox_Year.Text + this.comboBox_Week.Text+"_"+ this.richTextBox_PO.Text + "_" + this.richTextBox_PO_count.Text;
                int lastPO_count= QueryLastPO_btAddress_count(productName,this.comboBox_Week.Text,this.comboBox_Year.Text);
                if (lastPO_count != 0)
                {
                    lastPO_Address=QueryLastPOBTAddress(productName, this.comboBox_Week.Text, this.comboBox_Year.Text);
                }
                int query_cout = int.Parse(richTextBox_PO_count.Text);
                Create_Meta_SN();
                for (int i = 0; i < query_cout; i++)
                {
                    InsertBTAddress(productName, list_meta_sn[i], cvc);
                }
                ExecuteSqlTran(listSqlCommand);
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("地址上传出现错误:可能上传重复地址已经停止上传");
                return;
            }
        }
        public void ExecuteSqlTran(List<string> SQLStringList)
        {
            string Constr = "";
            if (user.userServer == "IDC")
                Constr = Properties.Settings.Default.constrIDC + "Database=" + user.userDB;
            else
                Constr = Properties.Settings.Default.constr + "Database=" + user.userDB;
            using (MySqlConnection conn = new MySqlConnection(Constr))
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
                            //this.SetText(string.Format("{0}/{1}", n + 1, SQLStringList.Count));
                        }
                        //后来加上的
                        if (n > 0 && (n % 500 == 0 || n == SQLStringList.Count - 1))
                        {
                            tx.Commit();
                            tx = conn.BeginTransaction();
                        }
                        int per = Convert.ToInt16((double)(n + 1) / SQLStringList.Count * 100);
                        //backgroundWorker1.ReportProgress(per);
                    }
                    //tx.Commit();//原来一次性提交
                    MessageBox.Show("本次共上传:" + SQLStringList.Count);
                }
                catch (System.Data.SqlClient.SqlException E)
                {
                    tx.Rollback();
                    throw new Exception(E.Message);
                }
            }
        }

        private int QueryLastPO_btAddress_count(string tableName,string week,string year)
        {
            string query_str = "SELECT count(btAddress) FROM "+tableName+" where cvc LIKE '%" +year+week+"%'";
            int query_count = int.Parse(mysql.ExecuteScalar(query_str).ToString());
            return query_count;
         
        }
        private string QueryLastPOBTAddress(string tableName, string week, string year)
        {
            string query_str = "SELECT btAddress FROM " + tableName + " where cvc LIKE '%" + year + week + "%' ORDER BY btAddress DESC LIMIT 1";
            string last_btAddress = mysql.ExecuteScalar(query_str).ToString();            
            return last_btAddress;

        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            progressBar1.Value = 100;
            this.buttonOK.Enabled = true;
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            progressBar1.Value = e.ProgressPercentage;
        }

        private void InsertBTAddress(string tableName, string btAddress, string cvc)
        {
            string strsql = "Insert into " + tableName.Trim().ToLower() + " values('" + btAddress + "','0','0','" + cvc + "','xxxxx',cast('1990-01-01' as datetime),cast('1990-01-01'as datetime),now());";
            //mysql.ExeUpdate(strsql);
            listSqlCommand.Add(strsql);
        }

        private void backgroundWorker1_DoWork_1(object sender, DoWorkEventArgs e)
        {
            listSqlCommand.Clear();

            try
            {

                string cvc = this.comboBox_Year.Text + this.comboBox_Week.Text + "_" + this.richTextBox_PO.Text + "_" + this.richTextBox_PO_count.Text;
                int lastPO_count = QueryLastPO_btAddress_count(productName, this.comboBox_Week.Text, this.comboBox_Year.Text);
                if (lastPO_count != 0)
                {
                    lastPO_Address = QueryLastPOBTAddress(productName, this.comboBox_Week.Text, this.comboBox_Year.Text);
                }
                int query_cout = int.Parse(richTextBox_PO_count.Text);
                Create_Meta_SN();
                for (int i = 0; i < query_cout; i++)
                {
                    InsertBTAddress(productName, list_meta_sn[i], cvc);
                }
                ExecuteSqlTran(listSqlCommand);
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("地址上传出现错误:可能上传重复地址已经停止上传");
                return;
            }
        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void comboBoxGroup_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (this.comboBoxGroup.Text.Trim().ToString().Length != 0)
            {
                this.comboBoxProductList.Items.Clear();
                this.comboBoxProductList.Text = "";

                group = this.comboBoxGroup.Text.Trim().ToString();
            }
        }


      

    }
}
