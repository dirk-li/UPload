using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MySQLClient
{
    public partial class MainForm : Form
    {
        public string connectstr,table_model;
        public clsUser user;
        public MainForm()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            connectstr = Properties.Settings.Default.constr;
            user = LoginForm.getUser();
            //this.tabControl1.SelectedIndex = 0;

            if ("weight".Equals(user.userDB))
            {
                toolStripButtonAdd.Visible = false;
                toolStripButtonUpload.Visible = false;
                toolStripButtonDownload.Visible = false;
                toolStripComboBox1_Remove.Visible = false;
                toolStripButtonMail.Visible = false;
            }
            else
            {
                string Permission = user.userPermission.Substring(0, 1);
                switch (user.userPermission.Substring(0,1))
                {
                    case "5"://权限5
                        toolStripButtonAdd.Visible = false;
                        toolStripButtonUpload.Visible = false;
                        toolStripButtonDownload.Visible = false;
                        toolStripComboBox1_Remove.Visible = false;
                        toolStripButtonQueryProduct.Visible = false;
                        toolStripButtonUserInfo.Visible = false;
                        break;
                    case "Z"://权限1                      
                        toolStripButtonMail.Visible = false;
                        toolStripComboBox1_Remove.Visible = false;
                        break;
                    case "x": //权限2
                        toolStripButtonMail.Visible = false;
                        toolStripComboBox1_Remove.Visible = false;
                
                        toolStripButtonAdd.Visible = false;
                        break;
                    default:

                        break;
                }
            }

       
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int n = this.tabControl1.SelectedIndex;
        }

        private void tabPagePersonal_Layout(object sender, LayoutEventArgs e)
        {
            //string info = this.tabControl1.SelectedTab.Text;
        }

        private void tabPagePersonal_Enter(object sender, EventArgs e)
        {

        }

        private void tabPageMouse_Enter(object sender, EventArgs e)
        {

        }

        private void tabPageMusic_Enter(object sender, EventArgs e)
        {

        }

        private void tabPageVideo_Enter(object sender, EventArgs e)
        {

        }

        private void toolStripButtonUserInfo_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();
            PersonalForm pf = new PersonalForm();
            pf.TopLevel = false;      //设置为非顶级控件

            this.panelShowInfo.Controls.Add(pf);
            pf.Show();
        }

        private void toolStripButtonQueryProduct_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();
            if ("goldensample".Equals(user.userDB))
            {
                GSQueryForm gsqf = new GSQueryForm();
                gsqf.TopLevel = false;      //设置为非顶级控件
                this.panelShowInfo.Controls.Add(gsqf);
                gsqf.Show();
            }
            else if ("bt".Equals(user.userDB) || "astro".Equals(user.userDB) || "sartom".Equals(user.userDB))
            {
                BTQueryForm btqf = new BTQueryForm();
                btqf.TopLevel = false;
                this.panelShowInfo.Controls.Add(btqf);
                btqf.Show();
            }
            else if ("weight".Equals(user.userDB))
            {
                WGQueryForm btqf = new WGQueryForm();
                btqf.TopLevel = false;
                this.panelShowInfo.Controls.Add(btqf);
                btqf.Show();
            }
        }

        private void toolStripButtonAdd_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();
            if("goldensample".Equals(user.userDB))
            {
                GSNewProductForm gsnpf = new GSNewProductForm();
                gsnpf.TopLevel = false;
                this.panelShowInfo.Controls.Add(gsnpf);
                gsnpf.Show();
            }
            else if("bt".Equals(user.userDB) || "astro".Equals(user.userDB) || "sartom".Equals(user.userDB))
            {
                BTNewProductForm btnpf = new BTNewProductForm();
                btnpf.TopLevel = false;
                this.panelShowInfo.Controls.Add(btnpf);
                btnpf.Show();
            }
         
            else if ("weight".Equals(user.userDB))
            {
                //WGNewProductForm form = new WGNewProductForm();
                //form.TopLevel = false;
                //this.panelShowInfo.Controls.Add(form);
                //form.Show();
            }
        }

        private void toolStripButtonUpload_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();
            if ("goldensample".Equals(user.userDB))
            {
                GSImportForm gsif = new GSImportForm();
                gsif.TopLevel = false;
                this.panelShowInfo.Controls.Add(gsif);
                gsif.Show();
            }
            else if ("bt".Equals(user.userDB) || "astro".Equals(user.userDB))
            {
                BTImportForm btif = new BTImportForm();
                btif.TopLevel = false;
                //npf.group = group;
                this.panelShowInfo.Controls.Add(btif);
                btif.Show();
            }
            else if ("sartom".Equals(user.userDB))
            {
                MCIDSNUploadForm mCIDSNUploadForm = new MCIDSNUploadForm();
                mCIDSNUploadForm.TopLevel = false;
                //npf.group = group;
                this.panelShowInfo.Controls.Add(mCIDSNUploadForm);
                mCIDSNUploadForm.Show();
            }
        }

        private void toolStripButtonDownload_Click(object sender, EventArgs e)
        {
            if(!ClosePanelControl())
            {
                return;
            }
            this.panelShowInfo.Controls.Clear();
            if ("goldensample".Equals(user.userDB))
            {

                GSExportForm gsef = new GSExportForm();
                gsef.TopLevel = false;
                this.panelShowInfo.Controls.Add(gsef);
                gsef.Show();
            }
            else if ("bt".Equals(user.userDB) || "astro".Equals(user.userDB) || "sartom".Equals(user.userDB))
            {
                BTExportForm btef = new BTExportForm();
                btef.TopLevel = false;

                //npf.group = group;
                this.panelShowInfo.Controls.Add(btef);
                btef.Show();
            }

        }

        private bool ClosePanelControl()
        {
            foreach (Control ctrl in panelShowInfo.Controls)
            {
                if (ctrl is Form)
                {
                    ((Form)ctrl).Close();
                    if (((Form)ctrl).IsDisposed != true)
                        return false;
                }
            }
            return true;
        }

        private void toolStripButtonExit_Click(object sender, EventArgs e)
        {
            //if (MessageBox.Show("是否切换用户？") == System.Windows.Forms.DialogResult.Yes)
            //{
            //    StartExe(Application.ExecutablePath);
            //    Application.ExitThread();
            //}
            if (!ClosePanelControl())
            {
                return;
            }
            Application.Restart();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();


            ConfirmRemovePasswordForm crpf = new ConfirmRemovePasswordForm();
            crpf.ShowDialog();
            if (crpf.DialogResult == DialogResult.OK)
            {
                UserInfoForm uf = new UserInfoForm();
                uf.badd = true;
                uf.ShowDialog();
            }
            //if ("goldensample".Equals(user.userDB))
            //{
            //    GSQueryForm gsqf = new GSQueryForm();
            //    gsqf.TopLevel = false;      //设置为非顶级控件
            //    this.panelShowInfo.Controls.Add(gsqf);
            //    gsqf.Show();
            //}
            //if ("bt".Equals(user.userDB))
            //{
            //    BTRemoveForm btrf = new BTRemoveForm();
            //    btrf.TopLevel = false;
            //    this.panelShowInfo.Controls.Add(btrf);
            //    btrf.Show();
            //}
            //else if ("weight".Equals(user.userDB))
            //{
            //    WGQueryForm btqf = new WGQueryForm();
            //    btqf.TopLevel = false;
            //    this.panelShowInfo.Controls.Add(btqf);
            //    btqf.Show();
            //}
        }

        private void toolStripComboBox1_Remove_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
                return;
            this.panelShowInfo.Controls.Clear();

            if (toolStripComboBox1_Remove.Text == "清空数据表")
            {
                table_model = "";
                File.WriteAllText(Directory.GetCurrentDirectory() + "\\table_mode.txt", "");
                BTRemoveTableForm brf = new BTRemoveTableForm();
                brf.ShowDialog();
                if (brf.DialogResult == DialogResult.OK)
                {
                    UserInfoForm uf = new UserInfoForm();
                    uf.badd = true;
                    uf.ShowDialog();
                }
            }
            else if (toolStripComboBox1_Remove.Text == "清空Used表")
            {
                table_model ="used";
                File.WriteAllText(Directory.GetCurrentDirectory()+"\\table_mode.txt", "used");
                BTRemoveTableForm brf = new BTRemoveTableForm();
                brf.ShowDialog();
                if (brf.DialogResult == DialogResult.OK)
                {
                    UserInfoForm uf = new UserInfoForm();
                    uf.badd = true;
                    uf.ShowDialog();
                }
            }
            else if (toolStripComboBox1_Remove.Text == "删除指定数据段")
            {
                table_model = "";
                File.WriteAllText(Directory.GetCurrentDirectory() + "\\table_mode.txt", "");
                BTRemove_AddreesForm braf = new BTRemove_AddreesForm();
                braf.ShowDialog();
                if (braf.DialogResult == DialogResult.OK)
                {
                    UserInfoForm uf = new UserInfoForm();
                    uf.badd = true;
                    uf.ShowDialog();
                }
            }
            else if (toolStripComboBox1_Remove.Text == "删除Used表指定数据段")
            {
                table_model = "used";
                File.WriteAllText(Directory.GetCurrentDirectory() + "\\table_mode.txt", "used");
                BTRemove_AddreesForm braf = new BTRemove_AddreesForm();
                braf.ShowDialog();
                if (braf.DialogResult == DialogResult.OK)
                {
                    UserInfoForm uf = new UserInfoForm();
                    uf.badd = true;
                    uf.ShowDialog();
                }
            }


        }

        private void toolStripButtonMail_Click(object sender, EventArgs e)
        {
            if (!ClosePanelControl())
            {
                return;
            }
            this.panelShowInfo.Controls.Clear();
            MailSendForm msf = new MailSendForm();
            msf.TopLevel = false;
            this.panelShowInfo.Controls.Add(msf);
            msf.Show();

        }

        private void toolStripComboBox1_Remove_Click(object sender, EventArgs e)
        {

        }
    }
}
