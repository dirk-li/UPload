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
    public partial class BTNewProductForm : Form
    {
        public MySQLHelp mysql;
        public clsUser user;
        public string group;
        public string addproductName;
        public string setLimit;
        public BTNewProductForm()
        {
            InitializeComponent();
        }

        private void NewProductForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            this.comboBoxLimit.SelectedIndex = 4;
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void buttonConfirm_Click(object sender, EventArgs e)
        {
            group = this.comboBoxProductClass.Text.Trim().ToString();
            if(group.Length == 0)
            {
                MessageBox.Show("产品类别不能为空！");
                return;
            }
            addproductName = this.richTextBoxProductName.Text.Trim().ToString();

            if (addproductName.Length == 0)
            {
                MessageBox.Show("产品名称不能为空！");
                return;
            }
            if(UtilityControl.JudgeStringFormat(addproductName))
            {
                MessageBox.Show("产品名字必须是数字与字符组合，不能为汉字！");
                return;
            }
            setLimit = this.comboBoxLimit.Text.Trim().ToString();
            string strsql = "select * from product_info where name='" + addproductName + "'";
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                DataTable dt = mysql.ExeQueryDataSet(strsql);
                if(dt.Rows.Count!=0)
                {
                    MessageBox.Show("产品信息新增失败，该信息已存在！");
                    return;
                }
                    
                //this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("产品信息新增异常！");
                return;
            }

            StringBuilder sb = new StringBuilder();
            sb.Append("INSERT INTO product_info VALUES ( ");
            sb.Append("'" + group + "',");
            sb.Append("'" + addproductName + "',");
            sb.Append("'" + setLimit + "',");
            //sb.Append("'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')");
            sb.Append("'"+ user.userId + "',");
            sb.Append("now())");
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(sb.ToString());
                MessageBox.Show("新增蓝牙产品信息成功！");
                //this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("异常，请确认输入的产品名称是唯一的！");
                return;
            }
            strsql = "CREATE TABLE  IF NOT EXISTS " + addproductName + " (btAddress nvarchar(50) not null primary key, status char(10) not null,used char(10) not null,cvc nvarchar(50) not null,pc nvarchar(50),statusTime datetime not null,usedTime datetime not null,insertTime datetime not null)";
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(strsql);
                MessageBox.Show("创建蓝牙产品信息表成功！");
                //this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("异常，创建蓝牙产品信息表失败！");
                return;
            }
            strsql = "CREATE TABLE  IF NOT EXISTS " + addproductName+"_used" + " (btAddress nvarchar(50) not null primary key, status char(10) not null,used char(10) not null,cvc nvarchar(50) not null,pc nvarchar(50),statusTime datetime not null,usedTime datetime not null,insertTime datetime not null)";
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(strsql);
                MessageBox.Show("创建蓝牙产品信息使用表成功！");
                //this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("异常，创建蓝牙产品信息使用表失败！");
                return;
            }
        }
    }
}
