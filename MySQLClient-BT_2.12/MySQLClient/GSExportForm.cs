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
    public partial class GSExportForm : Form
    {
        public string group;
        public clsUser user;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private DataTable dOrignalTable = new DataTable();
        private string productName;
        public GSExportForm()
        {
            InitializeComponent();
            user = LoginForm.getUser();
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
                    if (dt.Columns[i].ColumnName.Equals("group"))
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
                string sql = "SELECT * FROM product_info WHERE product_info.group = '" + group + "'";
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
            if (this.comboBoxProductList.Text.Trim().ToString().Length != 0)
            {
                productName = this.comboBoxProductList.Text.Trim().ToString();
                try
                {
                    MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                    string sql = "SELECT * FROM " + productName;
                    //DataSet ds = mysql.ExeQueryDataSet(sql);

                    dOrignalTable = mysql.ExeQueryDataSet(sql);

                    this.dataGridView1.DataSource = dOrignalTable;

                    //this.dataGridView1.Columns["time"].DefaultCellStyle.Format = "yyyy-MM-dd HH:mm:ss";
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void buttonConfrim_Click(object sender, EventArgs e)
        {
            if(dOrignalTable.Rows.Count<=0)
            {
                MessageBox.Show("未找到对应的下载数据，请检查!");
                return;
            }
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            if (fbd.ShowDialog() == DialogResult.OK)
            {
                string filePath = fbd.SelectedPath + "\\" +this.comboBoxProductList.Text.Trim().ToString()+".txt";
                DownLoadData(filePath);
            }
        }
        private void DownLoadData(string filePath)
        {
            try
            {
                string strline=null;
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
    }
}
