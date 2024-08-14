
namespace MySQLClient
{
    partial class MCIDSNUploadForm
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.comboBoxGroup = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxProductList = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.richTextBox_PO_count = new System.Windows.Forms.RichTextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.richTextBox_M1M7 = new System.Windows.Forms.RichTextBox();
            this.comboBox_Week = new System.Windows.Forms.ComboBox();
            this.comboBox_Year = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.richTextBox_PO = new System.Windows.Forms.RichTextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.labelProgress = new System.Windows.Forms.Label();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.buttonOK = new System.Windows.Forms.Button();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.comboBoxGroup);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.comboBoxProductList);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(55, 50);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(5);
            this.groupBox1.Size = new System.Drawing.Size(1480, 145);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "产品信息";
            // 
            // comboBoxGroup
            // 
            this.comboBoxGroup.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxGroup.FormattingEnabled = true;
            this.comboBoxGroup.Location = new System.Drawing.Point(428, 42);
            this.comboBoxGroup.Margin = new System.Windows.Forms.Padding(5);
            this.comboBoxGroup.Name = "comboBoxGroup";
            this.comboBoxGroup.Size = new System.Drawing.Size(282, 54);
            this.comboBoxGroup.TabIndex = 8;
            this.comboBoxGroup.DropDown += new System.EventHandler(this.comboBoxGroup_DropDown);
            this.comboBoxGroup.SelectedIndexChanged += new System.EventHandler(this.comboBoxGroup_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(225, 62);
            this.label2.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(191, 46);
            this.label2.TabIndex = 7;
            this.label2.Text = "产品类别:";
            // 
            // comboBoxProductList
            // 
            this.comboBoxProductList.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxProductList.FormattingEnabled = true;
            this.comboBoxProductList.Location = new System.Drawing.Point(955, 42);
            this.comboBoxProductList.Margin = new System.Windows.Forms.Padding(5);
            this.comboBoxProductList.Name = "comboBoxProductList";
            this.comboBoxProductList.Size = new System.Drawing.Size(346, 54);
            this.comboBoxProductList.TabIndex = 8;
            this.comboBoxProductList.DropDown += new System.EventHandler(this.comboBoxProductList_DropDown);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(752, 62);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(191, 46);
            this.label1.TabIndex = 7;
            this.label1.Text = "产品列表:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.richTextBox_PO_count);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.richTextBox_M1M7);
            this.groupBox2.Controls.Add(this.comboBox_Week);
            this.groupBox2.Controls.Add(this.comboBox_Year);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.richTextBox_PO);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(55, 232);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(5);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(5);
            this.groupBox2.Size = new System.Drawing.Size(1480, 330);
            this.groupBox2.TabIndex = 23;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "地址设定";
            // 
            // richTextBox_PO_count
            // 
            this.richTextBox_PO_count.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.richTextBox_PO_count.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox_PO_count.Location = new System.Drawing.Point(1075, 176);
            this.richTextBox_PO_count.Margin = new System.Windows.Forms.Padding(5);
            this.richTextBox_PO_count.Multiline = false;
            this.richTextBox_PO_count.Name = "richTextBox_PO_count";
            this.richTextBox_PO_count.Size = new System.Drawing.Size(295, 76);
            this.richTextBox_PO_count.TabIndex = 32;
            this.richTextBox_PO_count.Text = "";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(1133, 90);
            this.label7.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(191, 46);
            this.label7.TabIndex = 31;
            this.label7.Text = "工单数量:";
            // 
            // richTextBox_M1M7
            // 
            this.richTextBox_M1M7.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.richTextBox_M1M7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox_M1M7.Location = new System.Drawing.Point(225, 176);
            this.richTextBox_M1M7.Margin = new System.Windows.Forms.Padding(5);
            this.richTextBox_M1M7.Multiline = false;
            this.richTextBox_M1M7.Name = "richTextBox_M1M7";
            this.richTextBox_M1M7.Size = new System.Drawing.Size(295, 76);
            this.richTextBox_M1M7.TabIndex = 30;
            this.richTextBox_M1M7.Text = "";
            // 
            // comboBox_Week
            // 
            this.comboBox_Week.FormattingEnabled = true;
            this.comboBox_Week.Location = new System.Drawing.Point(650, 195);
            this.comboBox_Week.Margin = new System.Windows.Forms.Padding(8);
            this.comboBox_Week.Name = "comboBox_Week";
            this.comboBox_Week.Size = new System.Drawing.Size(346, 54);
            this.comboBox_Week.TabIndex = 29;
            this.comboBox_Week.DropDown += new System.EventHandler(this.comboBox_Week_DropDown);
            this.comboBox_Week.SelectedIndexChanged += new System.EventHandler(this.comboBox_Week_SelectedIndexChanged);
            // 
            // comboBox_Year
            // 
            this.comboBox_Year.FormattingEnabled = true;
            this.comboBox_Year.Location = new System.Drawing.Point(650, 82);
            this.comboBox_Year.Margin = new System.Windows.Forms.Padding(8);
            this.comboBox_Year.Name = "comboBox_Year";
            this.comboBox_Year.Size = new System.Drawing.Size(346, 54);
            this.comboBox_Year.TabIndex = 28;
            this.comboBox_Year.DropDown += new System.EventHandler(this.comboBox_Year_DropDown);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(65, 198);
            this.label6.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(154, 46);
            this.label6.TabIndex = 26;
            this.label6.Text = "M1-M7:";
            // 
            // richTextBox_PO
            // 
            this.richTextBox_PO.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.richTextBox_PO.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox_PO.Location = new System.Drawing.Point(225, 70);
            this.richTextBox_PO.Margin = new System.Windows.Forms.Padding(5);
            this.richTextBox_PO.Multiline = false;
            this.richTextBox_PO.Name = "richTextBox_PO";
            this.richTextBox_PO.Size = new System.Drawing.Size(295, 76);
            this.richTextBox_PO.TabIndex = 25;
            this.richTextBox_PO.Text = "";
            this.richTextBox_PO.KeyDown += new System.Windows.Forms.KeyEventHandler(this.richTextBox_PO_KeyDown);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(65, 90);
            this.label5.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(151, 46);
            this.label5.TabIndex = 12;
            this.label5.Text = "工单号:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(566, 198);
            this.label4.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 46);
            this.label4.TabIndex = 9;
            this.label4.Text = "周:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(566, 90);
            this.label3.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 46);
            this.label3.TabIndex = 9;
            this.label3.Text = "年:";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // labelProgress
            // 
            this.labelProgress.BackColor = System.Drawing.SystemColors.Control;
            this.labelProgress.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelProgress.ForeColor = System.Drawing.Color.Blue;
            this.labelProgress.Location = new System.Drawing.Point(187, 638);
            this.labelProgress.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.labelProgress.Name = "labelProgress";
            this.labelProgress.Size = new System.Drawing.Size(618, 58);
            this.labelProgress.TabIndex = 28;
            this.labelProgress.Text = "0/0";
            this.labelProgress.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // progressBar1
            // 
            this.progressBar1.ForeColor = System.Drawing.Color.Lime;
            this.progressBar1.Location = new System.Drawing.Point(97, 741);
            this.progressBar1.Margin = new System.Windows.Forms.Padding(5);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(850, 72);
            this.progressBar1.Step = 1;
            this.progressBar1.TabIndex = 27;
            // 
            // buttonOK
            // 
            this.buttonOK.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonOK.Location = new System.Drawing.Point(1054, 735);
            this.buttonOK.Margin = new System.Windows.Forms.Padding(5);
            this.buttonOK.Name = "buttonOK";
            this.buttonOK.Size = new System.Drawing.Size(302, 78);
            this.buttonOK.TabIndex = 26;
            this.buttonOK.Text = "确认";
            this.buttonOK.UseVisualStyleBackColor = true;
            this.buttonOK.Click += new System.EventHandler(this.buttonOK_Click);
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork_1);
            this.backgroundWorker1.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorker1_ProgressChanged);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // MCIDSNUploadForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(15F, 30F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1606, 989);
            this.Controls.Add(this.labelProgress);
            this.Controls.Add(this.progressBar1);
            this.Controls.Add(this.buttonOK);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Margin = new System.Windows.Forms.Padding(8);
            this.Name = "MCIDSNUploadForm";
            this.Text = "MCID_SN上传";
            this.Load += new System.EventHandler(this.MCIDSNUploadForm_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox comboBoxGroup;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxProductList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RichTextBox richTextBox_PO;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label labelProgress;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Button buttonOK;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox comboBox_Week;
        private System.Windows.Forms.ComboBox comboBox_Year;
        private System.Windows.Forms.RichTextBox richTextBox_M1M7;
        private System.Windows.Forms.RichTextBox richTextBox_PO_count;
        private System.Windows.Forms.Label label7;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
    }
}