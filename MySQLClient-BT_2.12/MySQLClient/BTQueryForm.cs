using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MySQLClient
{
    public partial class BTQueryForm : Form
    {
        public string group;
        public string pName;
        public clsUser user;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> listStatus = new List<string>();
        private List<clsBTCount> listProductUsed = new List<clsBTCount>();
        private List<clsBTCount> listProductUnused = new List<clsBTCount>();
        public BTQueryForm()
        {
            InitializeComponent();
            //user = LoginForm.getUser();
            CheckForIllegalCrossThreadCalls = false;
        }

        private void GroupForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            listStatus.Clear();
            listStatus.Add("status=0 and used=0");
            listStatus.Add("status=1 and used=0");
            listStatus.Add("status=0 and used=1");
            listStatus.Add("status=1 and used=1");
            //GetProductList();
            GetGroupList();
            this.labelStatus.Text = "空闲状态";         

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
            group = this.comboBoxGroup.Text.Trim().ToString();
            if(group.Length==0)
            {
                MessageBox.Show("请选择产品种类！");
                return;
            }
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

        private void GetUnUsedInfo(string product)
        {
            listProductUnused.Clear();
            MySQLHelp mysql;
            clsBTCount subBTCount ;
            string strsql, productName,first_address_unused,last_address_unused;
            int countAll = 0, countS0U0 = 0, countS1U0 = 0, countS0U1 = 0, countS1U1 = 0;
            try
            {
                    productName = product;
                    subBTCount = new clsBTCount();
                    subBTCount.product = productName;
                    mysql = new MySQLHelp(user.userServer, user.userDB);
                    strsql = "SELECT count(*) FROM " + productName;
                countAll = int.Parse(mysql.ExecuteScalar(strsql).ToString());
                if (countAll == 0)
                {
                    subBTCount.count = 0;
                    subBTCount.first_address = "xxxx";
                    subBTCount.last_address = "xxxx";
                    subBTCount.s0u0 = 0;
                    subBTCount.s1u0 = 0;
                    subBTCount.s0u1 = 0;
                    subBTCount.s1u1 = 0;
                    //dtUnused.Rows.Add(product, 0, 0, 0, 0, 0);
                    listProductUnused.Add(subBTCount);
                }
                else
                {
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT 1";
                    first_address_unused = mysql.ExecuteScalar(strsql).ToString();
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT " + (countAll-1)+","+1;
                    last_address_unused = mysql.ExecuteScalar(strsql).ToString();               

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[0].ToString();
                    countS0U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[1].ToString();
                    countS1U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[2].ToString();
                    countS0U1 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[3].ToString();
                    countS1U1 = int.Parse(mysql.ExecuteScalar(strsql).ToString());
                    
                    subBTCount.count = countAll;
                    subBTCount.first_address =first_address_unused;
                    subBTCount.last_address = last_address_unused;
                    subBTCount.s0u0 = countS0U0;
                    subBTCount.s1u0 = countS1U0;
                    subBTCount.s0u1 = countS0U1;
                    subBTCount.s1u1 = countS1U1;
                    //dtUnused.Rows.Add(product, 0, 0, 0, 0, 0);
                    listProductUnused.Add(subBTCount);
                    //dtUnused.Rows.Add(product, countAll, countS0U0, countS1U0, countS0U1, countS1U1);
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }

        }

        private void GetUsedInfo(string product)
        {
            listProductUsed.Clear();
            clsBTCount subBTCount;
            MySQLHelp mysql;
            string strsql,productName, first_address_used, last_address_used;
            int countAll = 0, countS0U0 = 0, countS1U0 = 0, countS0U1 = 0, countS1U1 = 0;
            try
            {
                    productName = product + "_used";
                    subBTCount = new clsBTCount();
                    subBTCount.product = product;
                    mysql = new MySQLHelp(user.userServer, user.userDB);
                    strsql = "SELECT count(*) FROM " + productName;
                countAll = int.Parse(mysql.ExecuteScalar(strsql).ToString());
                if (countAll == 0)
                {
                    subBTCount.count = 0;
                    subBTCount.first_address = "xxxx";
                    subBTCount.last_address = "xxxx";
                    subBTCount.s0u0 = 0;
                    subBTCount.s1u0 = 0;
                    subBTCount.s0u1 = 0;
                    subBTCount.s1u1 = 0;
                    listProductUsed.Add(subBTCount);
                }
                else
                {
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT 1";
                    first_address_used = mysql.ExecuteScalar(strsql).ToString();
                    strsql = "SELECT btAddress FROM " + productName + " LIMIT " + (countAll-1) + "," + 1;
                    last_address_used = mysql.ExecuteScalar(strsql).ToString();
                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[0].ToString();
                    countS0U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[1].ToString();
                    countS1U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[2].ToString();
                    countS0U1 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[3].ToString();
                    countS1U1 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                    subBTCount.count = countAll;
                    subBTCount.first_address = first_address_used;
                    subBTCount.last_address = last_address_used;
                    subBTCount.s0u0 = countS0U0;
                    subBTCount.s1u0 = countS1U0;
                    subBTCount.s0u1 = countS0U1;
                    subBTCount.s1u1 = countS1U1;
                    listProductUsed.Add(subBTCount);
                    //dtUsed.Rows.Add(product, countAll, countS0U0, countS1U0, countS0U1, countS1U1);
                }
                
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            //this.dataGridViewUnused.Rows.Clear();
            //this.dataGridViewUsed.Rows.Clear();
            timer1.Stop();
            if(!backgroundWorker1.IsBusy)
            {
               backgroundWorker1.RunWorkerAsync();
            }
        }

        private void BTQueryForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (backgroundWorker1.IsBusy)
            {
                MessageBox.Show("系统正在查询数据，完成后可切换功能，请耐心等待.....");
                e.Cancel = true;
            }
            else
            {
                this.timer1.Stop();
                this.timer1.Dispose();
            }
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            this.labelStatus.Text = "正在查询数据，请稍后......";
            GetUnUsedInfo(pName);
            GetUsedInfo(pName);
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            this.dataGridViewUnused.Rows.Clear();
            this.dataGridViewUsed.Rows.Clear();
            for(int i=0;i<listProductUnused.Count;i++)
            {
                this.dataGridViewUnused.Rows.Add(listProductUnused[i].product,
                    listProductUnused[i].count, listProductUnused[i].first_address,
                    listProductUnused[i].last_address, listProductUnused[i].s0u0,
                    listProductUnused[i].s1u0, listProductUnused[i].s0u1,
                    listProductUnused[i].s1u1); 
                this.dataGridViewUsed.Rows.Add(listProductUsed[i].product,
                    listProductUsed[i].count, listProductUsed[i].first_address,
                    listProductUsed[i].last_address, listProductUsed[i].s0u0,
                    listProductUsed[i].s1u0, listProductUsed[i].s0u1,
                    listProductUsed[i].s1u1);
            }
            this.labelStatus.Text = "查询数据已完成";
            timer1.Start();
        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void comboBoxProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.comboBoxProductList.Text.Trim().ToString().Length != 0)
            {
               
                pName = this.comboBoxProductList.Text.Trim().ToString();
                backgroundWorker1.RunWorkerAsync();
                //this.labelStatus.Text = "正在查询数据，请稍后......";
                //GetUnUsedInfo(pName);
                //GetUsedInfo(pName);
            }
        }

        private void comboBoxGroup_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
