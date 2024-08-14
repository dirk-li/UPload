using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;


namespace MySQLClient
{
    public partial class BTRemoveTableForm : Form
    {
        public string group,tablemodel;
        public string pName;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> list_info = new List<string>();
        public clsUser user;


        public BTRemoveTableForm()
        {
            InitializeComponent();
        }

        private void BTRemoveForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            //listStatus.Clear();
            //listStatus.Add("status=0 and used=0");
            //listStatus.Add("status=1 and used=0");
            //listStatus.Add("status=0 and used=1");
            //listStatus.Add("status=1 and used=1");
            ////GetProductList();
            GetGroupList();
            //this.labelStatus.Text = "空闲状态";

        }
        private void GetGroupList()
        {
            try
            {
                this.comboBox1_Group.Items.Clear();
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
                this.comboBox1_Group.Items.AddRange(listGroup.ToArray());
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
            group = this.comboBox1_Group.Text.Trim().ToString();
            if (group.Length == 0)
            {
                MessageBox.Show("请选择产品种类！");
                return;
            }
            try
            {
                this.comboBox2_productlist.Items.Clear();
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

                this.comboBox2_productlist.Items.AddRange(listProduct.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }
        }

        private void comboBox2_productlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.comboBox2_productlist.Text.Trim().ToString().Length != 0)
            {
                pName = this.comboBox2_productlist.Text.Trim().ToString();
                this.Query_Status.Text = "正在查询数据，请稍后......";
                GetInfo(pName);
                this.Query_Status.Text = "查询结束";
                //  backgroundWorker1.RunWorkerAsync();
            }
        }

        private void comboBox1_Group_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            //this.Query_Status.Text = "正在查询数据，请稍后......";
            //GetInfo(pName);
          
        }
        private void GetInfo(string product)
        {
            tablemodel =File.ReadAllText(Directory.GetCurrentDirectory()+ "\\table_mode.txt");
            clsBTCount subBTCount;
            MySQLHelp mysql;
            string strsql, productName;

            try
            {

                this.dataGridView.Rows.Clear();
                list_info.Clear();
                if (tablemodel == "used")
                {
                    productName = product + "_" + tablemodel;

                }
                else
                {
                    productName = product;
                }
                list_info.Add(productName);
                subBTCount = new clsBTCount();
                subBTCount.product = product;
                mysql = new MySQLHelp(user.userServer, user.userDB);
                strsql = "SELECT count(btAddress) FROM " + productName;
                int count = int.Parse(mysql.ExecuteScalar(strsql).ToString());
                if (count > 0)
                {
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT 1";
                    list_info.Add(mysql.ExecuteScalar(strsql).ToString());
                    strsql = "SELECT count(*) FROM " + productName;

                    string countAll = mysql.ExecuteScalar(strsql).ToString();
                    //string count_1 = (int.Parse(countAll) - 1).ToString();
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT " + (int.Parse(countAll) - 1).ToString() + "," + countAll;
                    list_info.Add(mysql.ExecuteScalar(strsql).ToString());
                    list_info.Add(countAll);
                    this.dataGridView.Rows.Add(1);
                    //this.dataGridView.DataSource = list_info;
                    for (int i = 0; i < list_info.Count; i++)
                    {

                        this.dataGridView.Rows[0].Cells[i].Value = list_info[i];

                    }
                }
                else
                {
                    MessageBox.Show(productName+"表为空");
                }
                


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }

        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            //this.dataGridViewUnused.Rows.Clear();
           
            //timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            //timer1.Stop();
            //if (!backgroundWorker1.IsBusy)
            //{
            //    backgroundWorker1.RunWorkerAsync();
            //}
        }

        private void Clear_Data_Click(object sender, EventArgs e)
        {
           
            MySQLHelp mysql;
            string strsql, productName;
            tablemodel = File.ReadAllText(Directory.GetCurrentDirectory() + "\\table_mode.txt");
            productName = this.comboBox2_productlist.Text.Trim().ToString()+"_" + tablemodel;
            this.Query_Status.Text = "开始清空"+ productName+ "Table数据";
            mysql = new MySQLHelp(user.userServer, user.userDB);
            strsql = "truncate table " + productName;
            mysql.ExeUpdate(strsql);
            this.Query_Status.Text = productName + "Table数据已清空";
        }
    }
}
