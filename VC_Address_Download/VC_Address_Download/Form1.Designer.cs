namespace VC_Address_Download
{
    partial class Address_Download
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.gb1_productusinfo = new System.Windows.Forms.GroupBox();
            this.cb_product_table = new System.Windows.Forms.ComboBox();
            this.cb_product_class = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gb1_downloadinfo = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_download = new System.Windows.Forms.Button();
            this.btn_process = new System.Windows.Forms.Button();
            this.gb1_productusinfo.SuspendLayout();
            this.gb1_downloadinfo.SuspendLayout();
            this.SuspendLayout();
            // 
            // gb1_productusinfo
            // 
            this.gb1_productusinfo.Controls.Add(this.cb_product_table);
            this.gb1_productusinfo.Controls.Add(this.cb_product_class);
            this.gb1_productusinfo.Controls.Add(this.label2);
            this.gb1_productusinfo.Controls.Add(this.label1);
            this.gb1_productusinfo.Font = new System.Drawing.Font("Arial Narrow", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gb1_productusinfo.Location = new System.Drawing.Point(37, 30);
            this.gb1_productusinfo.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.gb1_productusinfo.Name = "gb1_productusinfo";
            this.gb1_productusinfo.Padding = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.gb1_productusinfo.Size = new System.Drawing.Size(327, 178);
            this.gb1_productusinfo.TabIndex = 0;
            this.gb1_productusinfo.TabStop = false;
            this.gb1_productusinfo.Text = "产品信息";
            // 
            // cb_product_table
            // 
            this.cb_product_table.FormattingEnabled = true;
            this.cb_product_table.Location = new System.Drawing.Point(137, 105);
            this.cb_product_table.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.cb_product_table.Name = "cb_product_table";
            this.cb_product_table.Size = new System.Drawing.Size(141, 33);
            this.cb_product_table.TabIndex = 3;
            this.cb_product_table.DropDown += new System.EventHandler(this.cb_product_table_DropDown);
            // 
            // cb_product_class
            // 
            this.cb_product_class.FormattingEnabled = true;
            this.cb_product_class.Location = new System.Drawing.Point(137, 40);
            this.cb_product_class.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.cb_product_class.Name = "cb_product_class";
            this.cb_product_class.Size = new System.Drawing.Size(141, 33);
            this.cb_product_class.TabIndex = 2;
            this.cb_product_class.DropDown += new System.EventHandler(this.cb_product_class_DropDown);
            this.cb_product_class.SelectionChangeCommitted += new System.EventHandler(this.cb_product_class_SelectionChangeCommitted);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 101);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 24);
            this.label2.TabIndex = 1;
            this.label2.Text = "产品列表：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(7, 37);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 24);
            this.label1.TabIndex = 0;
            this.label1.Text = "产品类别：";
            // 
            // gb1_downloadinfo
            // 
            this.gb1_downloadinfo.Controls.Add(this.textBox1);
            this.gb1_downloadinfo.Controls.Add(this.label3);
            this.gb1_downloadinfo.Font = new System.Drawing.Font("Arial Narrow", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gb1_downloadinfo.Location = new System.Drawing.Point(403, 37);
            this.gb1_downloadinfo.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.gb1_downloadinfo.Name = "gb1_downloadinfo";
            this.gb1_downloadinfo.Padding = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.gb1_downloadinfo.Size = new System.Drawing.Size(311, 171);
            this.gb1_downloadinfo.TabIndex = 1;
            this.gb1_downloadinfo.TabStop = false;
            this.gb1_downloadinfo.Text = "下载信息";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(120, 31);
            this.textBox1.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(116, 32);
            this.textBox1.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(7, 33);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(105, 24);
            this.label3.TabIndex = 0;
            this.label3.Text = "下载数量：";
            // 
            // btn_download
            // 
            this.btn_download.BackColor = System.Drawing.Color.Lime;
            this.btn_download.Font = new System.Drawing.Font("Arial", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_download.Location = new System.Drawing.Point(468, 249);
            this.btn_download.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.btn_download.Name = "btn_download";
            this.btn_download.Size = new System.Drawing.Size(181, 88);
            this.btn_download.TabIndex = 2;
            this.btn_download.Text = "下载";
            this.btn_download.UseVisualStyleBackColor = false;
            this.btn_download.Click += new System.EventHandler(this.btn_download_Click);
            // 
            // btn_process
            // 
            this.btn_process.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btn_process.Font = new System.Drawing.Font("Arial Narrow", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_process.Location = new System.Drawing.Point(37, 249);
            this.btn_process.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.btn_process.Name = "btn_process";
            this.btn_process.Size = new System.Drawing.Size(327, 88);
            this.btn_process.TabIndex = 3;
            this.btn_process.UseVisualStyleBackColor = false;
            // 
            // Address_Download
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(743, 375);
            this.Controls.Add(this.btn_process);
            this.Controls.Add(this.btn_download);
            this.Controls.Add(this.gb1_downloadinfo);
            this.Controls.Add(this.gb1_productusinfo);
            this.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "Address_Download";
            this.Text = "离线地址下载";
            this.Load += new System.EventHandler(this.VC_address_download_Load);
            this.gb1_productusinfo.ResumeLayout(false);
            this.gb1_productusinfo.PerformLayout();
            this.gb1_downloadinfo.ResumeLayout(false);
            this.gb1_downloadinfo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gb1_productusinfo;
        private System.Windows.Forms.ComboBox cb_product_table;
        private System.Windows.Forms.ComboBox cb_product_class;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gb1_downloadinfo;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btn_download;
        private System.Windows.Forms.Button btn_process;
    }
}

