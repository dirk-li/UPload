using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MySQLClient
{
    public partial class BTImportForm : Form
    {
        public string group;
        public clsUser user;
        private MySQLHelp mysql;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> listSqlCommand = new List<string>();
        private List<string> list_sn = new List<string>();
        private string productName;
        delegate void SetTextCallback(string text);
        public BTImportForm()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }

        private void BTImportForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            mysql = new MySQLHelp(user.userServer, user.userDB);
            progressBar1.Value = 0;
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

        private void comboBoxGroup_DropDown(object sender, EventArgs e)
        {
            GetGroupList();
        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void buttonSelectFile_Click(object sender, EventArgs e)
        {
            if (this.comboBoxGroup.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品类别！");
                return;
            }
            if (this.comboBoxProductList.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品名称！");
                return;
            }
            OpenFileDialog ofg = new OpenFileDialog();
            ofg.Title = "请选择文件夹";
            ofg.Filter = "所有文件(*.*)|*.*";
            if (ofg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string file = ofg.FileName;
                FileStream fs = new FileStream(file, FileMode.Open);
                StreamReader sr = new StreamReader(fs);
                string a = sr.ReadLine();
                string add = sr.ReadLine().Replace(" ", "");
                string cvc = sr.ReadLine();
                richTextBoxBegin.Text = add.Substring(14, 12).ToUpper();
                richTextBoxEnd.Text = add.Substring(27, 12).ToUpper();
                richTextBoxCVC.Text = cvc.Substring(11, 24);
                fs.Close();
                fs.Dispose();
                sr.Close();
                sr.Dispose();
            }
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
            //if (richTextBoxBegin.Text.Length != 12)
            //{
            //    MessageBox.Show("起始蓝牙地址的不满足12位!");
            //    return;
            //}
            //if (richTextBoxEnd.Text.Length != 12)
            //{
            //    MessageBox.Show("结束蓝牙地址的不满足12位!");
            //    return;
            //}
            //if (richTextBoxCVC.Text.Length != 24)
            //{
            //    MessageBox.Show("蓝牙CVC的位数不满足24位!");
            //    return;
            //}
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
            this.SetText("0/0");
            progressBar1.Value = 0;
            backgroundWorker1.RunWorkerAsync();
           // manual_insert_address();
            this.buttonOK.Enabled = false;
        }

        private void manual_insert_address()
        {
            listSqlCommand.Clear();
            string zifuCount1 = "";
            string zifuCount2 = "";
            long start = 0, k = 0, end = 0,l=0;
            try
            {
                string startStr = richTextBoxBegin.Text;
                string endStr = richTextBoxEnd.Text;
                for (int i = 0; i < startStr.Length; i++)
                {
                    string zifu = startStr.Substring(i, 1);
                    if (zifu == "0")
                    {

                        zifuCount1 = zifuCount1 + zifu;
                    }
                    else
                    {

                        break;
                    }

                }
                for (int i = 0; i < endStr.Length; i++)
                {
                    string zifu = endStr.Substring(i, 1);
                    if (zifu == "0")
                    {

                        zifuCount2 = zifuCount2 + zifu;
                    }
                    else
                    {

                        break;
                    }
                }
                if (zifuCount1 != zifuCount2)
                {

                    MessageBox.Show("首尾地址不符格式规定");
                    return;
                }

                start = (long)Convert.ToInt64(richTextBoxBegin.Text, 16);
                end = (long)Convert.ToInt64(richTextBoxEnd.Text, 16);
                //all = end - start;
                string cvc = richTextBoxCVC.Text;
                //int count = 0;

                string start_address = zifuCount1 + Convert.ToString(start, 16).ToUpper();
                string end_address = zifuCount1 + Convert.ToString(end, 16).ToUpper();
                int query_cout=QuerySqlCount(start_address, end_address);
                if (query_cout == 0)
                {
                    for (k = start; k <= end; k++)
                    {
                        string bt = zifuCount1 + Convert.ToString(k, 16).ToUpper();
                        InsertBTAddress(productName, bt, cvc);
                    }
                   // ExecuteSqlTran(listSqlCommand);
                    NewExecuteSqlTran(listSqlCommand, end - start + 1);
                    //MessageBox.Show("本次共上传:" + (end - start + 1));
                }
                else
                {
                    return;
                }

            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("地址上传出现错误:可能上传重复地址已经停止上传");
                return;
            }
        }
        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        { 
            listSqlCommand.Clear();
            string zifuCount1 = "";
            string zifuCount2 = "";
            long start = 0, k = 0, end = 0;
            try
            {
                string startStr = richTextBoxBegin.Text;
                string endStr = richTextBoxEnd.Text;
                for (int i = 0; i < startStr.Length; i++)
                {
                    string zifu = startStr.Substring(i, 1);
                    if (zifu == "0")
                    {

                        zifuCount1 = zifuCount1 + zifu;
                    }
                    else
                    {

                        break;
                    }

                }
                for (int i = 0; i < endStr.Length; i++)
                {
                    string zifu = endStr.Substring(i, 1);
                    if (zifu == "0")
                    {

                        zifuCount2 = zifuCount2 + zifu;
                    }
                    else
                    {

                        break;
                    }
                }
                if (zifuCount1 != zifuCount2)
                {

                    MessageBox.Show("首尾地址不符格式规定");
                    return;
                }

                start = (long)Convert.ToInt64(richTextBoxBegin.Text, 16);
                end = (long)Convert.ToInt64(richTextBoxEnd.Text, 16);
                //all = end - start;
                string cvc = richTextBoxCVC.Text;
                //int count = 0;
                string start_address = zifuCount1 + Convert.ToString(start, 16).ToUpper();
                string end_address = zifuCount1 + Convert.ToString(end, 16).ToUpper();
                int query_cout = QuerySqlCount(start_address, end_address);
                int n = 0;
                StringBuilder strparamter = new StringBuilder();
                if (query_cout == 0)
                {
                    for (k = start, n = 0; k <= end; k++, n++)
                    {
                        string bt = zifuCount1 + Convert.ToString(k, 16).ToUpper();
                        strparamter.Append("('" + bt + "', '0', '0', '" + cvc + "', 'xxxxx', cast('1990-01-01' as datetime), cast('1990-01-01' as datetime), now())");
                        //InsertBTAddress(productName, bt, cvc);
                        if (n > 0 && (n % 100 == 0 || n == (end - start)))
                        {
                            InsertBT1000Address(productName, strparamter.ToString());
                            strparamter.Clear();
                        }
                        else
                            strparamter.Append(",");

                    }
                    //ExecuteSqlTran(listSqlCommand);
                    NewExecuteSqlTran(listSqlCommand, end - start + 1);
                    //MessageBox.Show("本次共上传:" + (end - start + 1));
                }
                else
                {
                    return;
                }
                //MessageBox.Show("本次共上传:" + (end - start + 1));
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("地址上传出现错误:可能上传重复地址已经停止上传");
                return;
            }
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            progressBar1.Value = e.ProgressPercentage;
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            progressBar1.Value = 100;
            this.buttonOK.Enabled = true;
        }

        private void Query_Address_Used(string tableName, string btAddress)
        {
            string strsql = "";
        }

        private void InsertBTAddress(string tableName, string btAddress, string cvc)
        {
            string strsql = "Insert into " + tableName.Trim().ToLower() + " values('" + btAddress + "','0','0','" + cvc + "','xxxxx',cast('1990-01-01' as datetime),cast('1990-01-01'as datetime),now());";
            //mysql.ExeUpdate(strsql);
            listSqlCommand.Add(strsql);
        }
        private void InsertBT1000Address(string tableName, string sqlparameter)
        {
            string strsql = "Insert into "+tableName.Trim().ToLower() + " values" + sqlparameter + ";";
            //string strsql = "Insert into a40 values" + sqlparameter + ";";

            //mysql.ExeUpdate(strsql);
            listSqlCommand.Add(strsql);
        }
        private void BTImportForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (backgroundWorker1.IsBusy)
            {
                MessageBox.Show("正在上传蓝牙地址请勿关闭！！");
                e.Cancel = true;
            }
        }
        private void SetText(string text)
        {
            // InvokeRequired required compares the thread ID of the 
            // calling thread to the thread ID of the creating thread. 
            // If these threads are different, it returns true. 
            if (this.labelProgress.InvokeRequired)//如果调用控件的线程和创建创建控件的线程不是同一个则为True
            {
                SetTextCallback d = new SetTextCallback(SetText);
                this.labelProgress.Invoke(d, new object[] { text });
            }
            else
            {
                this.labelProgress.Text = text;
            }
        }

        public int QuerySqlCount(string start_address , string end_address)
        {
            //mysql = new MySQLHelp(user.userServer, user.userDB);
            string query_str = "SELECT count(btAddress) FROM bt." + productName + "_used where btAddress >='" + start_address + "' and btAddress <='" + end_address + "'";
            int query_count=int.Parse(mysql.ExecuteScalar(query_str).ToString());
            if (query_count > 0)
            {
                MessageBox.Show("有重复地址，请查询");
                return 1;
            }
            else
            {
                return 0;
            }
            
            
        }


        /// <summary>
        /// 执行多条SQL语句，实现数据库事务。
        /// </summary>mysql数据库
        /// <param name="SQLStringList">多条SQL语句</param>
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
                            this.SetText(string.Format("{0}/{1}", n+1, SQLStringList.Count));
                        }
                        //后来加上的
                        if (n > 0 && (n % 500 == 0 || n == SQLStringList.Count - 1))
                        {
                            tx.Commit();
                            tx = conn.BeginTransaction();
                        }
                        int per = Convert.ToInt16((double)(n + 1) / SQLStringList.Count*100);
                        backgroundWorker1.ReportProgress(per);
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

        private void button1_Click(object sender, EventArgs e)
        {

            if (this.comboBoxGroup.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品类别！");
                return;
            }
            if (this.comboBoxProductList.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品名称！");
                return;
            }
            OpenFileDialog ofg = new OpenFileDialog();
            ofg.Title = "请选择文件夹";
            ofg.Filter = "所有文件(*.*)|*.*";
            if (ofg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string file = ofg.FileName;
                FileStream fs = new FileStream(file, FileMode.Open);
                StreamReader sr = new StreamReader(fs);
                string a = sr.ReadLine();
                fs.Close();
                fs.Dispose();
                sr.Close();
                sr.Dispose();
                string cvc = richTextBoxCVC.Text;
                productName = this.comboBoxProductList.Text.Trim().ToString();
                InsertSN(file, productName, cvc);
            }
        }
        ///上传特殊形式的SN
        ///
        public void InsertSN(string file, string tableName, string cvc)
        {
            string[] sn_array = File.ReadAllLines(file);
            for (int i = 1; i < sn_array.Length; i++)
            {
                list_sn.Add(sn_array[i]);
                string strsql = "Insert into bt." + tableName + " values('" + sn_array[i] + "','0','0','" + cvc + "','xxxxx',cast('1990-01-01' as datetime),cast('1990-01-01'as datetime),now());";
                mysql.ExeUpdate(strsql);
                this.SetText(string.Format("{0}/{1}", i + 1, sn_array.Length));
                progressBar1.Value = ((i + 1)/sn_array.Length)*100;
                //listSqlCommand.Add(strsql);
            }
            // ExecuteSqlTran(listSqlCommand);

        }

        /// <summary>
        /// 执行多条SQL语句，实现数据库事务。
        /// </summary>mysql数据库
        /// <param name="SQLStringList">多条SQL语句</param>
        public void NewExecuteSqlTran(List<string> SQLStringList, long totoal)
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
                            if (n == SQLStringList.Count - 1)
                            {
                                this.SetText(string.Format("{0}/{1}", totoal, totoal));
                            }
                            else
                                this.SetText(string.Format("{0}/{1}", (n + 1) * 100, totoal));
                        }
                        ////后来加上的
                        //if (n >= 0 && (n % 10 == 0 || n == SQLStringList.Count - 1))
                        //{
                        //    tx.Commit();
                        //    tx = conn.BeginTransaction();
                        //}
                        tx.Commit();
                        tx = conn.BeginTransaction();
                        int per = Convert.ToInt16((double)(n + 1) / SQLStringList.Count * 100);
                        backgroundWorker1.ReportProgress(per);
                    }
                    //tx.Commit();//原来一次性提交
                    MessageBox.Show("本次共上传:" + totoal);
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
