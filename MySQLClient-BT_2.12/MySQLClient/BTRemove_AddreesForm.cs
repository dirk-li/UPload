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
    public partial class BTRemove_AddreesForm : Form
    {
        public string group, tablemodel;
        public string pName;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> list_info = new List<string>();
        public clsUser user;

        public BTRemove_AddreesForm()
        {
            InitializeComponent();
        }

        private void BTRemove_AddreesForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();         
            GetGroupList();
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
        private void GetInfo(string product)
        {
            tablemodel = File.ReadAllText(Directory.GetCurrentDirectory() + "\\table_mode.txt");
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
                //list_info.Add(productName);
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
                    MessageBox.Show(productName + "表为空");
                }



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return;
            }

        }
        private void comboBox2_productlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.comboBox2_productlist.Text.Trim().ToString().Length != 0)
            {
                pName = this.comboBox2_productlist.Text.Trim().ToString();
                
                GetInfo(pName);

            }
        }

        private void comboBox1_Group_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void Clear_Data_Click(object sender, EventArgs e)
        {
            pName = this.comboBox2_productlist.Text.Trim().ToString();
            Remove_address(pName);

        }

        public void Remove_address(string product)
        {
            clsBTCount subBTCount;
            MySQLHelp mysql;
            string strsql, productName;
            try
            {
                if (tablemodel == "used")
                {
                    productName = product + "_" + tablemodel;

                }
                else
                {
                    productName = product;
                }
                //list_info.Add(productName);
                subBTCount = new clsBTCount();
                subBTCount.product = product;
                mysql = new MySQLHelp(user.userServer, user.userDB);
                string start_add = this.textBox1_start.Text;
                string end_add = this.textBox2_end.Text;
                strsql = "delete FROM "+ productName + " where btAddress between '" + start_add + "' and '" + end_add +"'";
                mysql.ExeUpdate(strsql);
                this.remove_status.Text = "删除完毕";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
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
    }
}
