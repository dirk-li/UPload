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
    public partial class GSNewProductForm : Form
    {
        public MySQLHelp mysql;
        public clsUser user;
        public string group;
        public string addproductName;
        public string addproductUid;
        public GSNewProductForm()
        {
            InitializeComponent();
        }

        private void NewProductForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void buttonConfirm_Click(object sender, EventArgs e)
        {
            group = this.comboBoxProductClass.Text.Trim().ToString();
            addproductName = this.richTextBoxProductName.Text.Trim().ToString();
            addproductUid = this.richTextBoxProductUID.Text.Trim().ToString();

            if (addproductName.Length == 0)
            {
                MessageBox.Show("产品名称不能为空！");
                return;
            }
            if (UtilityControl.JudgeStringFormat(addproductName))
            {
                MessageBox.Show("产品名字必须是数字与字符组合，不能为汉字！");
                return;
            }
            if (addproductUid.Length == 0)
            {
                MessageBox.Show("产品 UID 不能为空！");
                return;
            }
            if (UtilityControl.JudgeStringFormat(addproductUid))
            {
                MessageBox.Show("产品UID必须是数字与字符组合，不能为汉字！");
                return;
            }

            StringBuilder sb = new StringBuilder();
            sb.Append("INSERT INTO product_info VALUES ( ");
            sb.Append("'" + group + "',");
            sb.Append("'" + addproductName + "',");
            sb.Append("'" + addproductUid + "',");
            sb.Append("'" + user.userId + "',");
            sb.Append("'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')");
            try
            {
                mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(sb.ToString());
                MessageBox.Show("新增产品信息成功！");
                this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("请确认输入的产品名称和UID是唯一的！");
                return;
            }
        }
    }
}
