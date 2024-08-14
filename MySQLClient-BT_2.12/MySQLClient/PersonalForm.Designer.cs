namespace MySQLClient
{
    partial class PersonalForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.textBoxDB = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxPPermission = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.buttonAddUser = new System.Windows.Forms.Button();
            this.buttonPModify = new System.Windows.Forms.Button();
            this.textBoxPEmail = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxPName = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.textBoxPDepartment = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBoxPid = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(836, 462);
            this.panel1.TabIndex = 2;
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.groupBox2.Controls.Add(this.textBoxDB);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.textBoxPPermission);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.buttonAddUser);
            this.groupBox2.Controls.Add(this.buttonPModify);
            this.groupBox2.Controls.Add(this.textBoxPEmail);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.textBoxPName);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.textBoxPDepartment);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.textBoxPid);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(92, 51);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(654, 357);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Personal Information";
            // 
            // textBoxDB
            // 
            this.textBoxDB.Location = new System.Drawing.Point(422, 213);
            this.textBoxDB.Name = "textBoxDB";
            this.textBoxDB.Size = new System.Drawing.Size(201, 35);
            this.textBoxDB.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(324, 216);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(109, 29);
            this.label3.TabIndex = 4;
            this.label3.Text = "数据库：";
            // 
            // textBoxPPermission
            // 
            this.textBoxPPermission.Location = new System.Drawing.Point(107, 213);
            this.textBoxPPermission.Name = "textBoxPPermission";
            this.textBoxPPermission.Size = new System.Drawing.Size(201, 35);
            this.textBoxPPermission.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 216);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 29);
            this.label2.TabIndex = 4;
            this.label2.Text = "权限：";
            // 
            // buttonAddUser
            // 
            this.buttonAddUser.Location = new System.Drawing.Point(184, 281);
            this.buttonAddUser.Name = "buttonAddUser";
            this.buttonAddUser.Size = new System.Drawing.Size(112, 56);
            this.buttonAddUser.TabIndex = 3;
            this.buttonAddUser.Text = "Add";
            this.buttonAddUser.UseVisualStyleBackColor = true;
            this.buttonAddUser.Click += new System.EventHandler(this.buttonAddUser_Click);
            // 
            // buttonPModify
            // 
            this.buttonPModify.Location = new System.Drawing.Point(377, 281);
            this.buttonPModify.Name = "buttonPModify";
            this.buttonPModify.Size = new System.Drawing.Size(112, 56);
            this.buttonPModify.TabIndex = 2;
            this.buttonPModify.Text = "Modify";
            this.buttonPModify.UseVisualStyleBackColor = true;
            this.buttonPModify.Click += new System.EventHandler(this.buttonPModify_Click);
            // 
            // textBoxPEmail
            // 
            this.textBoxPEmail.Location = new System.Drawing.Point(422, 138);
            this.textBoxPEmail.Name = "textBoxPEmail";
            this.textBoxPEmail.Size = new System.Drawing.Size(201, 35);
            this.textBoxPEmail.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(324, 141);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(85, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "邮件：";
            // 
            // textBoxPName
            // 
            this.textBoxPName.Location = new System.Drawing.Point(422, 62);
            this.textBoxPName.Name = "textBoxPName";
            this.textBoxPName.Size = new System.Drawing.Size(201, 35);
            this.textBoxPName.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(324, 65);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(85, 29);
            this.label6.TabIndex = 0;
            this.label6.Text = "姓名：";
            // 
            // textBoxPDepartment
            // 
            this.textBoxPDepartment.Location = new System.Drawing.Point(106, 138);
            this.textBoxPDepartment.Name = "textBoxPDepartment";
            this.textBoxPDepartment.Size = new System.Drawing.Size(201, 35);
            this.textBoxPDepartment.TabIndex = 1;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(15, 141);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(85, 29);
            this.label7.TabIndex = 0;
            this.label7.Text = "部门：";
            // 
            // textBoxPid
            // 
            this.textBoxPid.Location = new System.Drawing.Point(107, 62);
            this.textBoxPid.Name = "textBoxPid";
            this.textBoxPid.Size = new System.Drawing.Size(200, 35);
            this.textBoxPid.TabIndex = 1;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(16, 65);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(85, 29);
            this.label8.TabIndex = 0;
            this.label8.Text = "工号：";
            // 
            // PersonalForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(836, 462);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "PersonalForm";
            this.Text = "管理者信息";
            this.Load += new System.EventHandler(this.PersonalForm_Load);
            this.panel1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox textBoxPEmail;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxPName;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBoxPDepartment;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBoxPid;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button buttonPModify;
        private System.Windows.Forms.Button buttonAddUser;
        private System.Windows.Forms.TextBox textBoxPPermission;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxDB;
        private System.Windows.Forms.Label label3;
    }
}