namespace MySQLClient
{
    partial class BTQueryForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle13 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle14 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dataGridViewUsed = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dataGridViewUnused = new System.Windows.Forms.DataGridView();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.label1 = new System.Windows.Forms.Label();
            this.labelStatus = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.comboBoxGroup = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxProductList = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.usedproduct = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.usedcount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.First_address_used = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Last_address_used = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.useds0u0 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.useds1u0 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.useds0u1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.useds1u1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unusedproduct = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unusedcount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.First_address_unused = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Last_address_unused = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unuseds0u0 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unuseds1u0 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unuseds0u1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unuseds1u1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUsed)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUnused)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox2.Controls.Add(this.dataGridViewUsed);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(6, 305);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(1316, 208);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "已使用";
            // 
            // dataGridViewUsed
            // 
            this.dataGridViewUsed.AllowUserToAddRows = false;
            this.dataGridViewUsed.AllowUserToDeleteRows = false;
            this.dataGridViewUsed.AllowUserToResizeColumns = false;
            this.dataGridViewUsed.AllowUserToResizeRows = false;
            this.dataGridViewUsed.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dataGridViewUsed.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridViewUsed.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewUsed.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewUsed.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.usedproduct,
            this.usedcount,
            this.First_address_used,
            this.Last_address_used,
            this.useds0u0,
            this.useds1u0,
            this.useds0u1,
            this.useds1u1});
            this.dataGridViewUsed.Location = new System.Drawing.Point(5, 28);
            this.dataGridViewUsed.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dataGridViewUsed.Name = "dataGridViewUsed";
            this.dataGridViewUsed.ReadOnly = true;
            this.dataGridViewUsed.RowHeadersVisible = false;
            this.dataGridViewUsed.RowHeadersWidth = 62;
            this.dataGridViewUsed.RowTemplate.Height = 28;
            this.dataGridViewUsed.Size = new System.Drawing.Size(1306, 170);
            this.dataGridViewUsed.TabIndex = 4;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox1.Controls.Add(this.dataGridViewUnused);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(9, 87);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1313, 212);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "未使用";
            // 
            // dataGridViewUnused
            // 
            this.dataGridViewUnused.AllowUserToAddRows = false;
            this.dataGridViewUnused.AllowUserToDeleteRows = false;
            this.dataGridViewUnused.AllowUserToResizeColumns = false;
            this.dataGridViewUnused.AllowUserToResizeRows = false;
            this.dataGridViewUnused.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dataGridViewUnused.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridViewUnused.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle8;
            this.dataGridViewUnused.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewUnused.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.unusedproduct,
            this.unusedcount,
            this.First_address_unused,
            this.Last_address_unused,
            this.unuseds0u0,
            this.unuseds1u0,
            this.unuseds0u1,
            this.unuseds1u1});
            this.dataGridViewUnused.Location = new System.Drawing.Point(2, 28);
            this.dataGridViewUnused.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dataGridViewUnused.Name = "dataGridViewUnused";
            this.dataGridViewUnused.ReadOnly = true;
            this.dataGridViewUnused.RowHeadersVisible = false;
            this.dataGridViewUnused.RowHeadersWidth = 62;
            this.dataGridViewUnused.RowTemplate.Height = 28;
            this.dataGridViewUnused.Size = new System.Drawing.Size(1306, 160);
            this.dataGridViewUnused.TabIndex = 3;
            // 
            // timer1
            // 
            this.timer1.Interval = 50000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Fuchsia;
            this.label1.Location = new System.Drawing.Point(12, 535);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(169, 29);
            this.label1.TabIndex = 6;
            this.label1.Text = "数据查询状态：";
            // 
            // labelStatus
            // 
            this.labelStatus.AutoSize = true;
            this.labelStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelStatus.ForeColor = System.Drawing.Color.Blue;
            this.labelStatus.Location = new System.Drawing.Point(187, 535);
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(79, 29);
            this.labelStatus.TabIndex = 7;
            this.labelStatus.Text = "label2";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.comboBoxGroup);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.comboBoxProductList);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(14, 4);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox3.Size = new System.Drawing.Size(1080, 76);
            this.groupBox3.TabIndex = 18;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "产品信息";
            // 
            // comboBoxGroup
            // 
            this.comboBoxGroup.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxGroup.FormattingEnabled = true;
            this.comboBoxGroup.Location = new System.Drawing.Point(256, 32);
            this.comboBoxGroup.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.comboBoxGroup.Name = "comboBoxGroup";
            this.comboBoxGroup.Size = new System.Drawing.Size(120, 37);
            this.comboBoxGroup.TabIndex = 8;
            this.comboBoxGroup.SelectedIndexChanged += new System.EventHandler(this.comboBoxGroup_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(140, 34);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(103, 29);
            this.label2.TabIndex = 7;
            this.label2.Text = "产品类别:";
            // 
            // comboBoxProductList
            // 
            this.comboBoxProductList.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxProductList.FormattingEnabled = true;
            this.comboBoxProductList.Location = new System.Drawing.Point(576, 32);
            this.comboBoxProductList.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.comboBoxProductList.Name = "comboBoxProductList";
            this.comboBoxProductList.Size = new System.Drawing.Size(304, 37);
            this.comboBoxProductList.TabIndex = 8;
            this.comboBoxProductList.DropDown += new System.EventHandler(this.comboBoxProductList_DropDown);
            this.comboBoxProductList.SelectedIndexChanged += new System.EventHandler(this.comboBoxProductList_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(459, 34);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(115, 29);
            this.label3.TabIndex = 7;
            this.label3.Text = "产品列表:";
            // 
            // usedproduct
            // 
            this.usedproduct.DataPropertyName = "usedproduct";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.usedproduct.DefaultCellStyle = dataGridViewCellStyle2;
            this.usedproduct.HeaderText = "机种";
            this.usedproduct.MinimumWidth = 8;
            this.usedproduct.Name = "usedproduct";
            this.usedproduct.ReadOnly = true;
            this.usedproduct.Width = 88;
            // 
            // usedcount
            // 
            this.usedcount.DataPropertyName = "usedcount";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.usedcount.DefaultCellStyle = dataGridViewCellStyle3;
            this.usedcount.HeaderText = "总数";
            this.usedcount.MinimumWidth = 8;
            this.usedcount.Name = "usedcount";
            this.usedcount.ReadOnly = true;
            this.usedcount.Width = 88;
            // 
            // First_address_used
            // 
            this.First_address_used.HeaderText = "起始地址";
            this.First_address_used.MinimumWidth = 8;
            this.First_address_used.Name = "First_address_used";
            this.First_address_used.ReadOnly = true;
            this.First_address_used.Width = 128;
            // 
            // Last_address_used
            // 
            this.Last_address_used.HeaderText = "结束地址";
            this.Last_address_used.MinimumWidth = 8;
            this.Last_address_used.Name = "Last_address_used";
            this.Last_address_used.ReadOnly = true;
            this.Last_address_used.Width = 128;
            // 
            // useds0u0
            // 
            this.useds0u0.DataPropertyName = "useds0u0";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.useds0u0.DefaultCellStyle = dataGridViewCellStyle4;
            this.useds0u0.HeaderText = "status=0/used=0";
            this.useds0u0.MinimumWidth = 8;
            this.useds0u0.Name = "useds0u0";
            this.useds0u0.ReadOnly = true;
            this.useds0u0.Width = 195;
            // 
            // useds1u0
            // 
            this.useds1u0.DataPropertyName = "useds1u0";
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.useds1u0.DefaultCellStyle = dataGridViewCellStyle5;
            this.useds1u0.HeaderText = "status=1/used=0";
            this.useds1u0.MinimumWidth = 8;
            this.useds1u0.Name = "useds1u0";
            this.useds1u0.ReadOnly = true;
            this.useds1u0.Width = 195;
            // 
            // useds0u1
            // 
            this.useds0u1.DataPropertyName = "useds0u1";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.useds0u1.DefaultCellStyle = dataGridViewCellStyle6;
            this.useds0u1.HeaderText = "status=0/used=1";
            this.useds0u1.MinimumWidth = 8;
            this.useds0u1.Name = "useds0u1";
            this.useds0u1.ReadOnly = true;
            this.useds0u1.Width = 195;
            // 
            // useds1u1
            // 
            this.useds1u1.DataPropertyName = "useds1u1";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.useds1u1.DefaultCellStyle = dataGridViewCellStyle7;
            this.useds1u1.HeaderText = "status=1/used=1";
            this.useds1u1.MinimumWidth = 8;
            this.useds1u1.Name = "useds1u1";
            this.useds1u1.ReadOnly = true;
            this.useds1u1.Width = 195;
            // 
            // unusedproduct
            // 
            this.unusedproduct.DataPropertyName = "unusedproduct";
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unusedproduct.DefaultCellStyle = dataGridViewCellStyle9;
            this.unusedproduct.FillWeight = 50F;
            this.unusedproduct.HeaderText = "机种";
            this.unusedproduct.MinimumWidth = 8;
            this.unusedproduct.Name = "unusedproduct";
            this.unusedproduct.ReadOnly = true;
            this.unusedproduct.Width = 88;
            // 
            // unusedcount
            // 
            this.unusedcount.DataPropertyName = "unusedcount";
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unusedcount.DefaultCellStyle = dataGridViewCellStyle10;
            this.unusedcount.HeaderText = "总数";
            this.unusedcount.MinimumWidth = 8;
            this.unusedcount.Name = "unusedcount";
            this.unusedcount.ReadOnly = true;
            this.unusedcount.Width = 88;
            // 
            // First_address_unused
            // 
            this.First_address_unused.HeaderText = "起始地址";
            this.First_address_unused.MinimumWidth = 8;
            this.First_address_unused.Name = "First_address_unused";
            this.First_address_unused.ReadOnly = true;
            this.First_address_unused.Width = 128;
            // 
            // Last_address_unused
            // 
            this.Last_address_unused.HeaderText = "结束地址";
            this.Last_address_unused.MinimumWidth = 8;
            this.Last_address_unused.Name = "Last_address_unused";
            this.Last_address_unused.ReadOnly = true;
            this.Last_address_unused.Width = 128;
            // 
            // unuseds0u0
            // 
            this.unuseds0u0.DataPropertyName = "unuseds0u0";
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unuseds0u0.DefaultCellStyle = dataGridViewCellStyle11;
            this.unuseds0u0.FillWeight = 50F;
            this.unuseds0u0.HeaderText = "status=0/used=0";
            this.unuseds0u0.MinimumWidth = 8;
            this.unuseds0u0.Name = "unuseds0u0";
            this.unuseds0u0.ReadOnly = true;
            this.unuseds0u0.Width = 195;
            // 
            // unuseds1u0
            // 
            this.unuseds1u0.DataPropertyName = "unuseds1u0";
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unuseds1u0.DefaultCellStyle = dataGridViewCellStyle12;
            this.unuseds1u0.HeaderText = "status=1/used=0";
            this.unuseds1u0.MinimumWidth = 8;
            this.unuseds1u0.Name = "unuseds1u0";
            this.unuseds1u0.ReadOnly = true;
            this.unuseds1u0.Width = 195;
            // 
            // unuseds0u1
            // 
            this.unuseds0u1.DataPropertyName = "unuseds0u1";
            dataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unuseds0u1.DefaultCellStyle = dataGridViewCellStyle13;
            this.unuseds0u1.HeaderText = "status=0/used=1";
            this.unuseds0u1.MinimumWidth = 8;
            this.unuseds0u1.Name = "unuseds0u1";
            this.unuseds0u1.ReadOnly = true;
            this.unuseds0u1.Width = 195;
            // 
            // unuseds1u1
            // 
            this.unuseds1u1.DataPropertyName = "unuseds1u1";
            dataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unuseds1u1.DefaultCellStyle = dataGridViewCellStyle14;
            this.unuseds1u1.HeaderText = "staus=1/used=1";
            this.unuseds1u1.MinimumWidth = 8;
            this.unuseds1u1.Name = "unuseds1u1";
            this.unuseds1u1.ReadOnly = true;
            this.unuseds1u1.Width = 190;
            // 
            // BTQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(144F, 144F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(1334, 600);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.labelStatus);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "BTQueryForm";
            this.Text = "产品蓝牙地址数量查询";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.BTQueryForm_FormClosing);
            this.Load += new System.EventHandler(this.GroupForm_Load);
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUsed)).EndInit();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUnused)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridViewUnused;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridViewUsed;
        private System.Windows.Forms.Timer timer1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label labelStatus;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox comboBoxGroup;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxProductList;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridViewTextBoxColumn usedproduct;
        private System.Windows.Forms.DataGridViewTextBoxColumn usedcount;
        private System.Windows.Forms.DataGridViewTextBoxColumn First_address_used;
        private System.Windows.Forms.DataGridViewTextBoxColumn Last_address_used;
        private System.Windows.Forms.DataGridViewTextBoxColumn useds0u0;
        private System.Windows.Forms.DataGridViewTextBoxColumn useds1u0;
        private System.Windows.Forms.DataGridViewTextBoxColumn useds0u1;
        private System.Windows.Forms.DataGridViewTextBoxColumn useds1u1;
        private System.Windows.Forms.DataGridViewTextBoxColumn unusedproduct;
        private System.Windows.Forms.DataGridViewTextBoxColumn unusedcount;
        private System.Windows.Forms.DataGridViewTextBoxColumn First_address_unused;
        private System.Windows.Forms.DataGridViewTextBoxColumn Last_address_unused;
        private System.Windows.Forms.DataGridViewTextBoxColumn unuseds0u0;
        private System.Windows.Forms.DataGridViewTextBoxColumn unuseds1u0;
        private System.Windows.Forms.DataGridViewTextBoxColumn unuseds0u1;
        private System.Windows.Forms.DataGridViewTextBoxColumn unuseds1u1;
    }
}