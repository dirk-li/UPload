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
    public partial class GSQueryForm : Form
    {
        public string group;
        public clsUser user;
        public GSQueryForm()
        {
            InitializeComponent();
            user = LoginForm.getUser();
        }

        private void GroupForm_Load(object sender, EventArgs e)
        {
            //GetProductList();
            GetGroupList();
        }

        private void GetGroupList()
        {
            try
            {
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                this.comboBoxGroup.DataSource = dt.DefaultView.ToTable(true,"group");
                this.comboBoxGroup.DisplayMember = "group";
                this.comboBoxGroup.SelectedIndex = -1;
            }
            catch(Exception ex)
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
                string sql = "SELECT * FROM product_info WHERE product_info.group = '" + group + "'";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                this.comboBoxProductList.DataSource = dt;
                this.comboBoxProductList.DisplayMember = "name";
                this.comboBoxProductList.SelectedIndex = -1;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }

        }

        private void buttonProductQuery_Click(object sender, EventArgs e)
        {
            string productName = this.comboBoxProductList.Text.Trim().ToLower().ToString();
            if (productName.Length != 0)
            {
                try
                {
                    MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                    string sql = "SELECT * FROM " + productName;
                    //DataSet ds = mysql.ExeQueryDataSet(sql);

                    DataTable dt = mysql.ExeQueryDataSet(sql);
                    this.dataGridView1.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    this.dataGridView1.DataSource = null;
                }
            }
        }
        private void comboBoxGroup_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(this.comboBoxGroup.Text.Trim().ToString().Length!=0)
            {
                group = this.comboBoxGroup.Text.Trim().ToString();
                GetProductList();
            }
        }
    }
}
