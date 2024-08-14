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
    public partial class ConfigForm : Form
    {
        public clsUser user;
        public ConfigForm()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterParent;
        }

        private void buttonConfrim_Click(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            string strpw = this.textBoxPassword.Text.Trim().ToString();
            if(strpw.Length!=0)
            {
                //if(strpw.Equals(user.userPassword))
                if (strpw.Equals(EncryptHelper.Base64Decode(user.userPassword)))
                    this.DialogResult = DialogResult.OK;
                else
                {
                    MessageBox.Show("输入密码错误！");
                    this.textBoxPassword.Text = "";
                    this.textBoxPassword.Focus();
                    return;
                }
            }
            else
            {
                MessageBox.Show("密码不能为空！");
                return;
            }
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
