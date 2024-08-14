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
    public partial class BTExportForm : Form
    {
        public string group;
        public clsUser user;
        private MySQLHelp mysql;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private DataTable dOrignalTable = new DataTable();
        private string productName,productTable;
        private string status;
        private string strsql;

        public BTExportForm()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }

        private void BTExportForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            this.comboBoxStatus.SelectedIndex = 0;
        }

        private void GetGroupList()
        {
            try
            {
                this.comboBoxGroup.Items.Clear();
                listGroup.Clear();
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
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
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
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

        private void comboBoxGroup_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (this.comboBoxGroup.Text.Trim().ToString().Length != 0)
            {
                this.comboBoxProductList.Items.Clear();
                this.comboBoxProductList.Text = "";

                group = this.comboBoxGroup.Text.Trim().ToString();
            }
        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void comboBoxProductList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            if (backgroundWorker1.IsBusy)
                return;
            this.Close();
        }

        private void buttonExportData_Click(object sender, EventArgs e)
        {
            DataTable dt = null;
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                if (status == "ALL")
                {
                    strsql = "select * from " + productTable + " order by btAddress asc";
                    //DataSet ds = mysql.ExeQueryDataSet(strsql);
                    dt = mysql.ExeQueryDataSet(strsql);
                }
                else if (status == "STATUS=0 AND USED=0" || status == "STATUS=1 AND USED=1")
                {
                    strsql = "select * from " + productTable + " where " + status.ToLower() + " order by btAddress asc";
                    //DataSet ds = mysql.ExeQueryDataSet(strsql);
                    dt = mysql.ExeQueryDataSet(strsql);
                }
                else
                {
                    dt = dataGridView1.DataSource as DataTable;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            if (dt.Rows.Count <= 0)
            {
                MessageBox.Show("未找到对应的下载数据，请检查!");
                return;
            }
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            if (fbd.ShowDialog() == DialogResult.OK)
            {
                string filePath = fbd.SelectedPath + "\\" +this.comboBoxProductList.Text.Trim().ToString()+".CSV";
                DownLoadData(filePath,dt);
            }
        }
        private void DownLoadData(string filePath,DataTable dt)
        {

            try
            {
                string strline=null;
                //DataTable dt = dataGridView1.DataSource as DataTable;
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
                for(int j=0;j< dt.Rows.Count;j++)
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
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("下载数据出错！");
                return;
            }
        }

        private void buttonReset_Click(object sender, EventArgs e)
        {
            status = comboBoxStatus.Text.Trim().ToString();
            if(status=="ALL" || status == "STATUS=0 AND USED=0" || status == "STATUS=1 AND USED=1")
            {
                MessageBox.Show("该查询条件不能重置数据，请检查!");
                return;
            }
            if (dOrignalTable.Rows.Count <= 0)
            {
                MessageBox.Show("未找到重置数据，请检查!");
                return;
            }
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                strsql = "update " + productTable + " set used='0',status='0',pc='xxxx',statusTime=now(),usedTime=now() where " + status.ToLower() + " order by btAddress asc";
                mysql.ExeUpdate(strsql);
                //strsql = "update " + productTable + " set status='0',statusTime=now() where status = '1'";
                //mysql.ExeUpdate(strsql);
                MessageBox.Show("重置数据成功！");
                buttonQuery_Click(null,null);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("重置数据错误！");
                return;
            }

        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {

        }


        private void buttonQuery_Click(object sender, EventArgs e)
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
            status = comboBoxStatus.SelectedItem.ToString();
            if (status == "STATUS=1 AND USED=1")
                productTable = productName + "_used";
            else
                productTable = productName;
            this.labelQueryCount.Text = "数据查询中，请稍后......";
            try
            {
                dataGridView1.Columns.Clear();
                mysql = new MySQLHelp(user.userServer, user.userDB);
                if (status == "ALL" || status == "STATUS=0 AND USED=0" || status == "STATUS=1 AND USED=1")
                {
                    //strsql = "select count(*) from " + productTable + " order by btAddress asc";
                    strsql = "select * from " + productTable + " where " + status.ToLower() + " order by btAddress asc";
                    //string str = mysql.ExecuteScalar(strsql).ToString();
                    dOrignalTable = mysql.ExeQueryDataSet(strsql);
                    this.dataGridView1.DataSource = dOrignalTable;
                    this.labelQueryCount.Text = string.Format("查询结果：{0} 条", dOrignalTable.Rows.Count);
                }
                else
                {
                    strsql = "select * from " + productTable + " where " + status.ToLower() + " order by btAddress asc";
                    //DataSet ds = mysql.ExeQueryDataSet(strsql);
                    dOrignalTable = mysql.ExeQueryDataSet(strsql);
                    if (dOrignalTable.Rows.Count > 0)
                        this.dataGridView1.DataSource = dOrignalTable;
                    else
                        MessageBox.Show("未查询到相关数据！");
                    this.labelQueryCount.Text = string.Format("查询结果：{0} 条", dOrignalTable.Rows.Count);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
