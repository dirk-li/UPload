namespace MySQLClient
{
    partial class BTRemoveTableForm
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.comboBox1_Group = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.comboBox2_productlist = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.unusedproduct = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.start_address = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.End_address = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unusedcount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.Query_Status = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.Clear_Data = new System.Windows.Forms.Button();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.comboBox1_Group);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.comboBox2_productlist);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(12, 15);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(572, 73);
            this.groupBox2.TabIndex = 19;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "删除数据表内容";
            // 
            // comboBox1_Group
            // 
            this.comboBox1_Group.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1_Group.FormattingEnabled = true;
            this.comboBox1_Group.Location = new System.Drawing.Point(97, 24);
            this.comboBox1_Group.Name = "comboBox1_Group";
            this.comboBox1_Group.Size = new System.Drawing.Size(81, 28);
            this.comboBox1_Group.TabIndex = 8;
            this.comboBox1_Group.SelectedIndexChanged += new System.EventHandler(this.comboBox1_Group_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(19, 27);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 20);
            this.label3.TabIndex = 7;
            this.label3.Text = "产品类别:";
            // 
            // comboBox2_productlist
            // 
            this.comboBox2_productlist.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox2_productlist.FormattingEnabled = true;
            this.comboBox2_productlist.Location = new System.Drawing.Point(321, 24);
            this.comboBox2_productlist.Name = "comboBox2_productlist";
            this.comboBox2_productlist.Size = new System.Drawing.Size(204, 28);
            this.comboBox2_productlist.TabIndex = 8;
            this.comboBox2_productlist.SelectedIndexChanged += new System.EventHandler(this.comboBox2_productlist_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(238, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(77, 20);
            this.label4.TabIndex = 7;
            this.label4.Text = "产品列表:";
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox1.Controls.Add(this.Clear_Data);
            this.groupBox1.Controls.Add(this.dataGridView);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 131);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(584, 148);
            this.groupBox1.TabIndex = 20;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "删除数据确认";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AllowUserToResizeColumns = false;
            this.dataGridView.AllowUserToResizeRows = false;
            this.dataGridView.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.unusedproduct,
            this.start_address,
            this.End_address,
            this.unusedcount});
            this.dataGridView.Location = new System.Drawing.Point(12, 19);
            this.dataGridView.Margin = new System.Windows.Forms.Padding(1);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.RowTemplate.Height = 28;
            this.dataGridView.Size = new System.Drawing.Size(370, 126);
            this.dataGridView.TabIndex = 3;
            // 
            // unusedproduct
            // 
            this.unusedproduct.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.unusedproduct.DataPropertyName = "unusedproduct";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unusedproduct.DefaultCellStyle = dataGridViewCellStyle2;
            this.unusedproduct.HeaderText = "机种";
            this.unusedproduct.Name = "unusedproduct";
            this.unusedproduct.ReadOnly = true;
            this.unusedproduct.Width = 61;
            // 
            // start_address
            // 
            this.start_address.HeaderText = "开始地址";
            this.start_address.Name = "start_address";
            this.start_address.ReadOnly = true;
            this.start_address.Width = 89;
            // 
            // End_address
            // 
            this.End_address.HeaderText = "结束地址";
            this.End_address.Name = "End_address";
            this.End_address.ReadOnly = true;
            this.End_address.Width = 89;
            // 
            // unusedcount
            // 
            this.unusedcount.DataPropertyName = "unusedcount";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unusedcount.DefaultCellStyle = dataGridViewCellStyle3;
            this.unusedcount.HeaderText = "总数";
            this.unusedcount.Name = "unusedcount";
            this.unusedcount.ReadOnly = true;
            this.unusedcount.Width = 61;
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // Query_Status
            // 
            this.Query_Status.AutoSize = true;
            this.Query_Status.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Query_Status.Location = new System.Drawing.Point(30, 319);
            this.Query_Status.Name = "Query_Status";
            this.Query_Status.Size = new System.Drawing.Size(117, 25);
            this.Query_Status.TabIndex = 21;
            this.Query_Status.Text = "查询状态：";
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Clear_Data
            // 
            this.Clear_Data.Location = new System.Drawing.Point(443, 33);
            this.Clear_Data.Name = "Clear_Data";
            this.Clear_Data.Size = new System.Drawing.Size(104, 35);
            this.Clear_Data.TabIndex = 4;
            this.Clear_Data.Text = "清空数据";
            this.Clear_Data.UseVisualStyleBackColor = true;
            this.Clear_Data.Click += new System.EventHandler(this.Clear_Data_Click);
            // 
            // BTRemoveTableForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(586, 399);
            this.Controls.Add(this.Query_Status);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Name = "BTRemoveTableForm";
            this.Text = "BTRemoveForm";
            this.Load += new System.EventHandler(this.BTRemoveForm_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox comboBox1_Group;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox comboBox2_productlist;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn unusedproduct;
        private System.Windows.Forms.DataGridViewTextBoxColumn start_address;
        private System.Windows.Forms.DataGridViewTextBoxColumn End_address;
        private System.Windows.Forms.DataGridViewTextBoxColumn unusedcount;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label Query_Status;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Button Clear_Data;
    }
}