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
    public partial class WGQueryForm : Form
    {
        public string group;
        public clsUser user;
        public WGQueryForm()
        {
            InitializeComponent();
            user = LoginForm.getUser();
            this.label1.Visible = false;
            this.label2.Visible = false;
            this.comboBoxGroup.Visible = false;
            this.comboBoxProductList.Visible = false;
        }
        private void GetGroupList()
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                this.comboBoxGroup.DataSource = dt.DefaultView.ToTable(true, "group");
                this.comboBoxGroup.DisplayMember = "group";
                this.comboBoxGroup.SelectedIndex = -1;
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
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info WHERE product_info.group = '" + this.comboBoxGroup.Text + "'";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                this.comboBoxProductList.DataSource = dt;
                this.comboBoxProductList.DisplayMember = "name";
                this.comboBoxProductList.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }

        }


        private void WeighingQueryForm_Load(object sender, EventArgs e)
        {
            //GetGroupList();
        }

        private void buttonQuery_Click(object sender, EventArgs e)
        {
            //string productName = this.comboBoxProductList.Text.Trim().ToLower().ToString();
            string productName = "product_weight";
            string str_9Lsn = this.textBox1_9L_SN.Text.Trim().ToUpper().ToString();
            string str_starttime = this.dateTimePicker1_starttime.Value.ToString("yyyy-MM-dd 00:00:00");
            string str_endtime = this.dateTimePicker2_endtime.Value.ToString("yyyy-MM-dd 23:59:59");

            if (this.tabControl1.SelectedTab == tabPage1)
            {
                if (str_9Lsn.Length != 0)
                {
                    try
                    {
                        MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                        string sql = "SELECT * FROM " + productName + " where L9SN='" + str_9Lsn + "'";
                        //DataSet ds = mysql.ExeQueryDataSet(sql);

                        DataTable dt = mysql.ExeQueryDataSet(sql);
                        this.dataGridView1.DataSource = dt;
                        label6.Text = dt.Rows.Count.ToString();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                        this.dataGridView1.DataSource = null;
                    }
                }
                else
                {
                    MessageBox.Show("请输入正确的9L SN");
                }
                
            }
            else if (this.tabControl1.SelectedTab == tabPage2)
            {
                if (str_starttime.Length != 0 && str_endtime.Length != 0)
                {
                    try
                    {
                        MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                        string sql = "SELECT * FROM " + productName + " where time >='" + str_starttime + "' and time <='" + str_endtime + "'";
                        //DataSet ds = mysql.ExeQueryDataSet(sql);

                        DataTable dt = mysql.ExeQueryDataSet(sql);
                        this.dataGridView1.DataSource = dt;
                        label6.Text = dt.Rows.Count.ToString();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                        this.dataGridView1.DataSource = null;
                    }
                }
                else
                {
                    MessageBox.Show("请选择正确的起止时间");
                }
                

            }
            else
            {
                MessageBox.Show("请输入要查询的9L SN或起始和终止时间");
            }


        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
           // GetProductList();
        }

        private void buttonExport_Click(object sender, EventArgs e)
        {
            DataTable dt = this.dataGridView1.DataSource as DataTable;
            if (dt.Rows.Count <= 0)
            {
                MessageBox.Show("未找到对应的下载数据，请检查!");
                return;
            }
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            if (fbd.ShowDialog() == DialogResult.OK)
            {
                //string filePath = fbd.SelectedPath + "\\" + DateTime.Now.ToString("yyyy-mm-dd") + ".CSV";
                string filePath = fbd.SelectedPath + "\\" + this.dateTimePicker2_endtime.Value.ToString("yyyy-MM-dd") + ".CSV";
                DownLoadData(filePath);
            }
        }
        private void DownLoadData(string filePath)
        {
            try
            {
                string strline = null;
                DataTable dt = dataGridView1.DataSource as DataTable;
                FileStream fs = new FileStream(filePath, FileMode.Create);
                StreamWriter sw = new StreamWriter(fs);
                //开始写入
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    strline += dt.Columns[i].ColumnName.ToString();
                    if (i + 1 < dt.Columns.Count)
                        strline += ",";
                }

                sw.WriteLine(strline);
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    strline = "";
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        strline += dt.Rows[j][i].ToString();
                        if (i + 1 < dt.Columns.Count)
                            strline += ",";
                    }
                    sw.WriteLine(strline);
                }
                //清空缓冲区
                sw.Flush();
                //关闭流
                sw.Close();
                fs.Close();
                MessageBox.Show("保存文件成功！");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("下载数据出错！");
                return;
            }
        }
    }
}
