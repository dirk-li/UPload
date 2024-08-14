namespace MySQLClient
{
    partial class GSImportForm
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
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.buttonSelectFile = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.buttonAddRow = new System.Windows.Forms.Button();
            this.buttonInsertRow = new System.Windows.Forms.Button();
            this.buttonDeleteRow = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.richTextBoxMoveNumber = new System.Windows.Forms.RichTextBox();
            this.richTextBoxColumnName = new System.Windows.Forms.RichTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.buttonMoveColumn = new System.Windows.Forms.Button();
            this.buttonDeleteColumn = new System.Windows.Forms.Button();
            this.buttonAddColumn = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.comboBoxGroup = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBoxProductList = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonCancel = new System.Windows.Forms.Button();
            this.buttonConfrim = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBox4);
            this.panel1.Controls.Add(this.dataGridView1);
            this.panel1.Controls.Add(this.groupBox3);
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.buttonCancel);
            this.panel1.Controls.Add(this.buttonConfrim);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1030, 646);
            this.panel1.TabIndex = 0;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.buttonSelectFile);
            this.groupBox4.Location = new System.Drawing.Point(525, 5);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(491, 83);
            this.groupBox4.TabIndex = 20;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "文件导入";
            // 
            // buttonSelectFile
            // 
            this.buttonSelectFile.Location = new System.Drawing.Point(167, 26);
            this.buttonSelectFile.Name = "buttonSelectFile";
            this.buttonSelectFile.Size = new System.Drawing.Size(127, 44);
            this.buttonSelectFile.TabIndex = 0;
            this.buttonSelectFile.Text = "选择文件";
            this.buttonSelectFile.UseVisualStyleBackColor = true;
            this.buttonSelectFile.Click += new System.EventHandler(this.buttonSelectFile_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(17, 234);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(999, 342);
            this.dataGridView1.TabIndex = 19;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.buttonAddRow);
            this.groupBox3.Controls.Add(this.buttonInsertRow);
            this.groupBox3.Controls.Add(this.buttonDeleteRow);
            this.groupBox3.Location = new System.Drawing.Point(519, 94);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(497, 134);
            this.groupBox3.TabIndex = 18;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "行操作";
            // 
            // buttonAddRow
            // 
            this.buttonAddRow.Location = new System.Drawing.Point(75, 59);
            this.buttonAddRow.Name = "buttonAddRow";
            this.buttonAddRow.Size = new System.Drawing.Size(98, 40);
            this.buttonAddRow.TabIndex = 14;
            this.buttonAddRow.Text = "新增行";
            this.buttonAddRow.UseVisualStyleBackColor = true;
            this.buttonAddRow.Click += new System.EventHandler(this.buttonAddRow_Click);
            // 
            // buttonInsertRow
            // 
            this.buttonInsertRow.Location = new System.Drawing.Point(303, 59);
            this.buttonInsertRow.Name = "buttonInsertRow";
            this.buttonInsertRow.Size = new System.Drawing.Size(98, 40);
            this.buttonInsertRow.TabIndex = 13;
            this.buttonInsertRow.Text = "插入行";
            this.buttonInsertRow.UseVisualStyleBackColor = true;
            this.buttonInsertRow.Click += new System.EventHandler(this.buttonInsertRow_Click);
            // 
            // buttonDeleteRow
            // 
            this.buttonDeleteRow.Location = new System.Drawing.Point(189, 59);
            this.buttonDeleteRow.Name = "buttonDeleteRow";
            this.buttonDeleteRow.Size = new System.Drawing.Size(98, 40);
            this.buttonDeleteRow.TabIndex = 12;
            this.buttonDeleteRow.Text = "删除行";
            this.buttonDeleteRow.UseVisualStyleBackColor = true;
            this.buttonDeleteRow.Click += new System.EventHandler(this.buttonDeleteRow_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.richTextBoxMoveNumber);
            this.groupBox2.Controls.Add(this.richTextBoxColumnName);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.buttonMoveColumn);
            this.groupBox2.Controls.Add(this.buttonDeleteColumn);
            this.groupBox2.Controls.Add(this.buttonAddColumn);
            this.groupBox2.Location = new System.Drawing.Point(14, 94);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(499, 134);
            this.groupBox2.TabIndex = 17;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "列操作";
            // 
            // richTextBoxMoveNumber
            // 
            this.richTextBoxMoveNumber.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.richTextBoxMoveNumber.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBoxMoveNumber.Location = new System.Drawing.Point(103, 83);
            this.richTextBoxMoveNumber.Multiline = false;
            this.richTextBoxMoveNumber.Name = "richTextBoxMoveNumber";
            this.richTextBoxMoveNumber.Size = new System.Drawing.Size(151, 37);
            this.richTextBoxMoveNumber.TabIndex = 21;
            this.richTextBoxMoveNumber.Text = "";
            // 
            // richTextBoxColumnName
            // 
            this.richTextBoxColumnName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.richTextBoxColumnName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBoxColumnName.Location = new System.Drawing.Point(103, 34);
            this.richTextBoxColumnName.Multiline = false;
            this.richTextBoxColumnName.Name = "richTextBoxColumnName";
            this.richTextBoxColumnName.Size = new System.Drawing.Size(151, 37);
            this.richTextBoxColumnName.TabIndex = 20;
            this.richTextBoxColumnName.Text = "";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 89);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 29);
            this.label4.TabIndex = 18;
            this.label4.Text = "列序号:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 37);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(91, 29);
            this.label3.TabIndex = 16;
            this.label3.Text = "列名称:";
            // 
            // buttonMoveColumn
            // 
            this.buttonMoveColumn.Location = new System.Drawing.Point(263, 86);
            this.buttonMoveColumn.Name = "buttonMoveColumn";
            this.buttonMoveColumn.Size = new System.Drawing.Size(111, 40);
            this.buttonMoveColumn.TabIndex = 15;
            this.buttonMoveColumn.Text = "移动列";
            this.buttonMoveColumn.UseVisualStyleBackColor = true;
            this.buttonMoveColumn.Click += new System.EventHandler(this.buttonMoveColumn_Click);
            // 
            // buttonDeleteColumn
            // 
            this.buttonDeleteColumn.Location = new System.Drawing.Point(381, 31);
            this.buttonDeleteColumn.Name = "buttonDeleteColumn";
            this.buttonDeleteColumn.Size = new System.Drawing.Size(111, 40);
            this.buttonDeleteColumn.TabIndex = 15;
            this.buttonDeleteColumn.Text = "删除列";
            this.buttonDeleteColumn.UseVisualStyleBackColor = true;
            this.buttonDeleteColumn.Click += new System.EventHandler(this.buttonDeleteColumn_Click);
            // 
            // buttonAddColumn
            // 
            this.buttonAddColumn.Location = new System.Drawing.Point(263, 31);
            this.buttonAddColumn.Name = "buttonAddColumn";
            this.buttonAddColumn.Size = new System.Drawing.Size(111, 40);
            this.buttonAddColumn.TabIndex = 15;
            this.buttonAddColumn.Text = "新增列";
            this.buttonAddColumn.UseVisualStyleBackColor = true;
            this.buttonAddColumn.Click += new System.EventHandler(this.buttonAddColumn_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.comboBoxGroup);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.comboBoxProductList);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(14, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(499, 82);
            this.groupBox1.TabIndex = 16;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "产品信息";
            // 
            // comboBoxGroup
            // 
            this.comboBoxGroup.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxGroup.FormattingEnabled = true;
            this.comboBoxGroup.Location = new System.Drawing.Point(132, 33);
            this.comboBoxGroup.Name = "comboBoxGroup";
            this.comboBoxGroup.Size = new System.Drawing.Size(119, 37);
            this.comboBoxGroup.TabIndex = 8;
            this.comboBoxGroup.DropDown += new System.EventHandler(this.comboBoxGroup_DropDown);
            this.comboBoxGroup.SelectionChangeCommitted += new System.EventHandler(this.comboBoxGroup_SelectionChangeCommitted);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(115, 29);
            this.label2.TabIndex = 7;
            this.label2.Text = "产品类别:";
            // 
            // comboBoxProductList
            // 
            this.comboBoxProductList.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxProductList.FormattingEnabled = true;
            this.comboBoxProductList.Location = new System.Drawing.Point(378, 33);
            this.comboBoxProductList.Name = "comboBoxProductList";
            this.comboBoxProductList.Size = new System.Drawing.Size(111, 37);
            this.comboBoxProductList.TabIndex = 8;
            this.comboBoxProductList.DropDown += new System.EventHandler(this.comboBoxProductList_DropDown);
            this.comboBoxProductList.SelectedIndexChanged += new System.EventHandler(this.comboBoxProductList_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(257, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(115, 29);
            this.label1.TabIndex = 7;
            this.label1.Text = "产品列表:";
            // 
            // buttonCancel
            // 
            this.buttonCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Location = new System.Drawing.Point(583, 582);
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.Size = new System.Drawing.Size(105, 52);
            this.buttonCancel.TabIndex = 10;
            this.buttonCancel.Text = "取消";
            this.buttonCancel.UseVisualStyleBackColor = true;
            this.buttonCancel.Click += new System.EventHandler(this.buttonCancel_Click);
            // 
            // buttonConfrim
            // 
            this.buttonConfrim.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonConfrim.Location = new System.Drawing.Point(375, 582);
            this.buttonConfrim.Name = "buttonConfrim";
            this.buttonConfrim.Size = new System.Drawing.Size(105, 52);
            this.buttonConfrim.TabIndex = 11;
            this.buttonConfrim.Text = "确认";
            this.buttonConfrim.UseVisualStyleBackColor = true;
            this.buttonConfrim.Click += new System.EventHandler(this.buttonConfrim_Click);
            // 
            // GSImportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(144F, 144F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(1030, 646);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(5, 4, 5, 4);
            this.Name = "GSImportForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "产品样品数据导入";
            this.Load += new System.EventHandler(this.ImportForm_Load);
            this.panel1.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button buttonDeleteRow;
        private System.Windows.Forms.Button buttonInsertRow;
        private System.Windows.Forms.Button buttonAddRow;
        private System.Windows.Forms.Button buttonCancel;
        private System.Windows.Forms.Button buttonConfrim;
        private System.Windows.Forms.ComboBox comboBoxGroup;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBoxProductList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonAddColumn;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button buttonMoveColumn;
        private System.Windows.Forms.Button buttonDeleteColumn;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.RichTextBox richTextBoxColumnName;
        private System.Windows.Forms.RichTextBox richTextBoxMoveNumber;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button buttonSelectFile;
    }
}