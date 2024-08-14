namespace MySQLClient
{
    partial class UserInfoForm
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
            this.textBoxUid = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxUname = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxUpassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBoxUdepartment = new System.Windows.Forms.TextBox();
            this.textBoxUemail = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.buttonConfirm = new System.Windows.Forms.Button();
            this.buttonCancel = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxPermission = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // textBoxUid
            // 
            this.textBoxUid.Location = new System.Drawing.Point(135, 41);
            this.textBoxUid.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.textBoxUid.Name = "textBoxUid";
            this.textBoxUid.Size = new System.Drawing.Size(209, 35);
            this.textBoxUid.TabIndex = 0;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(40, 44);
            this.label8.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(85, 29);
            this.label8.TabIndex = 2;
            this.label8.Text = "工号：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(40, 92);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(85, 29);
            this.label1.TabIndex = 2;
            this.label1.Text = "姓名：";
            // 
            // textBoxUname
            // 
            this.textBoxUname.Location = new System.Drawing.Point(135, 89);
            this.textBoxUname.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.textBoxUname.Name = "textBoxUname";
            this.textBoxUname.Size = new System.Drawing.Size(209, 35);
            this.textBoxUname.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(40, 141);
            this.label2.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 29);
            this.label2.TabIndex = 2;
            this.label2.Text = "密码：";
            // 
            // textBoxUpassword
            // 
            this.textBoxUpassword.Location = new System.Drawing.Point(135, 138);
            this.textBoxUpassword.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.textBoxUpassword.Name = "textBoxUpassword";
            this.textBoxUpassword.Size = new System.Drawing.Size(209, 35);
            this.textBoxUpassword.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(40, 191);
            this.label3.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 29);
            this.label3.TabIndex = 2;
            this.label3.Text = "部门：";
            // 
            // textBoxUdepartment
            // 
            this.textBoxUdepartment.Location = new System.Drawing.Point(135, 188);
            this.textBoxUdepartment.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.textBoxUdepartment.Name = "textBoxUdepartment";
            this.textBoxUdepartment.Size = new System.Drawing.Size(209, 35);
            this.textBoxUdepartment.TabIndex = 3;
            // 
            // textBoxUemail
            // 
            this.textBoxUemail.Location = new System.Drawing.Point(135, 238);
            this.textBoxUemail.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.textBoxUemail.Name = "textBoxUemail";
            this.textBoxUemail.Size = new System.Drawing.Size(209, 35);
            this.textBoxUemail.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(40, 241);
            this.label4.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(85, 29);
            this.label4.TabIndex = 4;
            this.label4.Text = "邮件：";
            // 
            // buttonConfirm
            // 
            this.buttonConfirm.Location = new System.Drawing.Point(71, 357);
            this.buttonConfirm.Name = "buttonConfirm";
            this.buttonConfirm.Size = new System.Drawing.Size(107, 59);
            this.buttonConfirm.TabIndex = 6;
            this.buttonConfirm.Text = "确认";
            this.buttonConfirm.UseVisualStyleBackColor = true;
            this.buttonConfirm.Click += new System.EventHandler(this.buttonConfirm_Click);
            // 
            // buttonCancel
            // 
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Location = new System.Drawing.Point(215, 357);
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.Size = new System.Drawing.Size(107, 59);
            this.buttonCancel.TabIndex = 7;
            this.buttonCancel.Text = "取消";
            this.buttonCancel.UseVisualStyleBackColor = true;
            this.buttonCancel.Click += new System.EventHandler(this.buttonCancel_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(40, 292);
            this.label5.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(85, 29);
            this.label5.TabIndex = 4;
            this.label5.Text = "权限：";
            // 
            // comboBoxPermission
            // 
            this.comboBoxPermission.FormattingEnabled = true;
            this.comboBoxPermission.Items.AddRange(new object[] {
            "0",
            "1",
            "2",
            "3"});
            this.comboBoxPermission.Location = new System.Drawing.Point(135, 289);
            this.comboBoxPermission.Name = "comboBoxPermission";
            this.comboBoxPermission.Size = new System.Drawing.Size(121, 37);
            this.comboBoxPermission.TabIndex = 5;
            // 
            // UserInfoForm
            // 
            this.AcceptButton = this.buttonConfirm;
            this.AutoScaleDimensions = new System.Drawing.SizeF(14F, 29F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.buttonCancel;
            this.ClientSize = new System.Drawing.Size(396, 450);
            this.Controls.Add(this.comboBoxPermission);
            this.Controls.Add(this.buttonCancel);
            this.Controls.Add(this.buttonConfirm);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBoxUemail);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBoxUdepartment);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBoxUpassword);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBoxUname);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBoxUid);
            this.Controls.Add(this.label8);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.MaximizeBox = false;
            this.Name = "UserInfoForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "新增用户信息";
            this.Load += new System.EventHandler(this.UserInfoForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBoxUid;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxUname;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxUpassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBoxUdepartment;
        private System.Windows.Forms.TextBox textBoxUemail;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button buttonConfirm;
        private System.Windows.Forms.Button buttonCancel;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBoxPermission;
    }
}