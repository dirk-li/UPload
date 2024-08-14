namespace MySQLClient
{
    partial class BTRemove_AddreesForm
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.comboBox1_Group = new System.Windows.Forms.ComboBox();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.start_address = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.End_address = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unusedcount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.comboBox2_productlist = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.Clear_Data = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.remove_status = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2_end = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1_start = new System.Windows.Forms.TextBox();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.comboBox1_Group);
            this.groupBox2.Controls.Add(this.dataGridView);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.comboBox2_productlist);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(1, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(572, 161);
            this.groupBox2.TabIndex = 20;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "删除数据表内容";
            // 
            // comboBox1_Group
            // 
            this.comboBox1_Group.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1_Group.FormattingEnabled = true;
            this.comboBox1_Group.Location = new System.Drawing.Point(84, 51);
            this.comboBox1_Group.Name = "comboBox1_Group";
            this.comboBox1_Group.Size = new System.Drawing.Size(158, 28);
            this.comboBox1_Group.TabIndex = 8;
            this.comboBox1_Group.SelectedIndexChanged += new System.EventHandler(this.comboBox1_Group_SelectedIndexChanged);
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AllowUserToResizeColumns = false;
            this.dataGridView.AllowUserToResizeRows = false;
            this.dataGridView.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.start_address,
            this.End_address,
            this.unusedcount});
            this.dataGridView.Location = new System.Drawing.Point(285, 51);
            this.dataGridView.Margin = new System.Windows.Forms.Padding(1);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.RowTemplate.Height = 28;
            this.dataGridView.Size = new System.Drawing.Size(268, 61);
            this.dataGridView.TabIndex = 3;
            // 
            // start_address
            // 
            this.start_address.HeaderText = "开始地址";
            this.start_address.Name = "start_address";
            this.start_address.ReadOnly = true;
            this.start_address.Width = 98;
            // 
            // End_address
            // 
            this.End_address.HeaderText = "结束地址";
            this.End_address.Name = "End_address";
            this.End_address.ReadOnly = true;
            this.End_address.Width = 98;
            // 
            // unusedcount
            // 
            this.unusedcount.DataPropertyName = "unusedcount";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.unusedcount.DefaultCellStyle = dataGridViewCellStyle4;
            this.unusedcount.HeaderText = "总数";
            this.unusedcount.Name = "unusedcount";
            this.unusedcount.ReadOnly = true;
            this.unusedcount.Width = 66;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 51);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 20);
            this.label3.TabIndex = 7;
            this.label3.Text = "产品类别:";
            // 
            // comboBox2_productlist
            // 
            this.comboBox2_productlist.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox2_productlist.FormattingEnabled = true;
            this.comboBox2_productlist.Location = new System.Drawing.Point(84, 106);
            this.comboBox2_productlist.Name = "comboBox2_productlist";
            this.comboBox2_productlist.Size = new System.Drawing.Size(158, 28);
            this.comboBox2_productlist.TabIndex = 8;
            this.comboBox2_productlist.SelectedIndexChanged += new System.EventHandler(this.comboBox2_productlist_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 106);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(77, 20);
            this.label4.TabIndex = 7;
            this.label4.Text = "产品列表:";
            // 
            // Clear_Data
            // 
            this.Clear_Data.Location = new System.Drawing.Point(357, 93);
            this.Clear_Data.Name = "Clear_Data";
            this.Clear_Data.Size = new System.Drawing.Size(104, 35);
            this.Clear_Data.TabIndex = 4;
            this.Clear_Data.Text = "清空数据";
            this.Clear_Data.UseVisualStyleBackColor = true;
            this.Clear_Data.Click += new System.EventHandler(this.Clear_Data_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox3.Controls.Add(this.remove_status);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.textBox2_end);
            this.groupBox3.Controls.Add(this.label1);
            this.groupBox3.Controls.Add(this.textBox1_start);
            this.groupBox3.Controls.Add(this.Clear_Data);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(4, 190);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(569, 149);
            this.groupBox3.TabIndex = 22;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "删除数据确认";
            // 
            // remove_status
            // 
            this.remove_status.AutoSize = true;
            this.remove_status.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.remove_status.Location = new System.Drawing.Point(15, 93);
            this.remove_status.Name = "remove_status";
            this.remove_status.Size = new System.Drawing.Size(117, 25);
            this.remove_status.TabIndex = 23;
            this.remove_status.Text = "查询状态：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(278, 34);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 20);
            this.label2.TabIndex = 11;
            this.label2.Text = "结束地址:";
            // 
            // textBox2_end
            // 
            this.textBox2_end.Location = new System.Drawing.Point(361, 34);
            this.textBox2_end.Name = "textBox2_end";
            this.textBox2_end.Size = new System.Drawing.Size(100, 26);
            this.textBox2_end.TabIndex = 10;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 20);
            this.label1.TabIndex = 9;
            this.label1.Text = "开始地址:";
            // 
            // textBox1_start
            // 
            this.textBox1_start.Location = new System.Drawing.Point(108, 34);
            this.textBox1_start.Name = "textBox1_start";
            this.textBox1_start.Size = new System.Drawing.Size(100, 26);
            this.textBox1_start.TabIndex = 5;
            // 
            // BTRemove_AddreesForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(579, 350);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Name = "BTRemove_AddreesForm";
            this.Text = "BTRemove_AddreesForm";
            this.Load += new System.EventHandler(this.BTRemove_AddreesForm_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox comboBox1_Group;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox comboBox2_productlist;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button Clear_Data;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2_end;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1_start;
        private System.Windows.Forms.DataGridViewTextBoxColumn start_address;
        private System.Windows.Forms.DataGridViewTextBoxColumn End_address;
        private System.Windows.Forms.DataGridViewTextBoxColumn unusedcount;
        private System.Windows.Forms.Label remove_status;
    }
}