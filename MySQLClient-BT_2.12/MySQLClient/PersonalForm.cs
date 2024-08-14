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
    public partial class PersonalForm : Form
    {
        public string connectstr;
        public clsUser user;
        public MySQLHelp mysql;
        public PersonalForm()
        {
            InitializeComponent();
        }

        private void PersonalForm_Load(object sender, EventArgs e)
        {
            try
            {                
                InitUI();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void InitUI()
        {
            user = LoginForm.getUser();
            this.textBoxPid.Text = user.userId;
            this.textBoxPName.Text = user.userName;
            this.textBoxPDepartment.Text = user.userDepartment;
            this.textBoxPEmail.Text = user.userEmail;
            this.textBoxPPermission.Text = EncryptHelper.DESDecrypt(user.userPermission);
            this.textBoxDB.Text = user.userDB;
            ControlShow(false, int.Parse(this.textBoxPPermission.Text));
        }

        private void ControlShow(bool showorhide , int userPermission)
        {
            try
            {
                this.textBoxPid.Enabled = showorhide;
                this.textBoxPName.Enabled = showorhide;
                this.textBoxPDepartment.Enabled = showorhide;
                this.textBoxPEmail.Enabled = showorhide;
                this.textBoxPPermission.Enabled = showorhide;
                this.textBoxDB.Enabled = showorhide;
                if (userPermission == 0)
                    buttonAddUser.Visible = true;
                else
                    buttonAddUser.Visible = false;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void buttonPModify_Click(object sender, EventArgs e)
        {
            ConfigForm cfg = new ConfigForm();
            cfg.ShowDialog();
            if (cfg.DialogResult == DialogResult.OK)
            {
                UserInfoForm uf = new UserInfoForm();
                uf.badd = false;
                uf.ShowDialog();
                if(uf.DialogResult == DialogResult.OK)
                {
                    InitUI();
                    this.Refresh();
                }
            }         
        }

        private void buttonAddUser_Click(object sender, EventArgs e)
        {
            ConfigForm cfg = new ConfigForm();
            cfg.ShowDialog();
            if (cfg.DialogResult == DialogResult.OK)
            {
                UserInfoForm uf = new UserInfoForm();
                uf.badd = true;
                uf.ShowDialog();
            }
        }
    }
}
