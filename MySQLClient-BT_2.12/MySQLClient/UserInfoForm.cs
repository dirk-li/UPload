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
    public partial class UserInfoForm : Form
    {
        public bool badd = false;
        public clsUser user;
        public MySQLHelp mysql;
        public UserInfoForm()
        {
            InitializeComponent();
        }

        private void UserInfoForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            UIShowInfo(user);
        }
        private void UIShowInfo(clsUser user)
        {
            if(badd)
            {
                this.textBoxUid.Text = "";
                this.textBoxUname.Text = "";
                this.textBoxUpassword.Text = "";
                this.textBoxUdepartment.Text = "";
                this.textBoxUemail.Text = "";
                this.comboBoxPermission.Text = "1";
                this.comboBoxPermission.Enabled = false;
            }
            else
            {
                this.textBoxUid.Text = user.userId;
                this.textBoxUname.Text = user.userName;
                //this.textBoxUpassword.Text = user.userPassword;
                this.textBoxUpassword.Text = EncryptHelper.Base64Decode(user.userPassword);
                this.textBoxUdepartment.Text = user.userDepartment;
                this.textBoxUemail.Text = user.userEmail;
                //this.comboBoxPermission.Text = user.userPermission;
                this.comboBoxPermission.Text = EncryptHelper.DESDecrypt(user.userPermission);
                if ("0" != this.comboBoxPermission.Text)
                {
                    this.comboBoxPermission.Enabled = false;
                }
            }
        }

        private void buttonConfirm_Click(object sender, EventArgs e)
        {
            if(this.textBoxUid.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("用户ID不能为空！");
                return;
            }
            if (this.textBoxUpassword.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("用户密码不能为空！");
                return;
            }
            if (this.textBoxUemail.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("用户邮件不能为空！");
                return;
            }
            if (this.comboBoxPermission.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("用户权限不能为空！");
                return;
            }
            clsUser newuser = new clsUser();
            newuser.userId = this.textBoxUid.Text.Trim().ToString();
            newuser.userName = this.textBoxUname.Text.Trim().ToString();
            newuser.userPassword = this.textBoxUpassword.Text.Trim().ToString();
            newuser.userDepartment = this.textBoxUdepartment.Text.Trim().ToString();
            newuser.userEmail = this.textBoxUemail.Text.Trim().ToString();
            newuser.userPermission = this.comboBoxPermission.Text.Trim().ToString();
            newuser.userTime = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            StringBuilder sb = new StringBuilder();
            if (badd)
            {
                //新增用户
                sb.Append("INSERT INTO user_info VALUES ( ");
                sb.Append("'" + newuser.userId + "',");
                sb.Append("'" + newuser.userName + "',");
                sb.Append("'" + newuser.userPassword + "',");
                sb.Append("'" + newuser.userDepartment + "',");
                sb.Append("'" + newuser.userEmail + "',");
                sb.Append("'" + newuser.userPermission + "',");
                sb.Append("'" + newuser.userTime + "')");
                try
                {
                    mysql = new MySQLHelp(user.userServer, user.userDB);
                    mysql.ExeUpdate(sb.ToString());
                    MessageBox.Show("新增用户信息成功！");
                    this.DialogResult = DialogResult.OK;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    return;
                }
            }
            else
            {
                sb.Append("UPDATE user_info SET ");
                sb.Append("id = '" + newuser.userId + "',");
                sb.Append("name = '" + newuser.userName + "',");
                sb.Append("password = '" + newuser.userPassword + "',");
                sb.Append("department = '" + newuser.userDepartment + "',");
                sb.Append("email = '" + newuser.userEmail + "',");
                sb.Append("permission = '" + newuser.userPermission + "' ");
                sb.Append("time = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "'");
                sb.Append("WHERE id = '" + user.userId + "'");
                try
                {
                    mysql = new MySQLHelp(user.userServer, user.userDB);
                    mysql.ExeUpdate(sb.ToString());
                    MessageBox.Show("修改用户信息成功！");
                    newuser.userPassword = EncryptHelper.Base64Encode(newuser.userPassword);
                    newuser.userPermission = EncryptHelper.DESEncrypt(newuser.userPermission);
                    LoginForm.saveUser(newuser);
                    this.DialogResult = DialogResult.OK;
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    return;
                }
            }
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
