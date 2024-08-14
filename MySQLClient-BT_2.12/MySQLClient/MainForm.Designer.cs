namespace MySQLClient
{
    partial class MainForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.panelshow = new System.Windows.Forms.Panel();
            this.panelShowInfo = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripButtonUserInfo = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonQueryProduct = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonAdd = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonUpload = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonDownload = new System.Windows.Forms.ToolStripButton();
            this.toolStripComboBox1_Remove = new System.Windows.Forms.ToolStripComboBox();
            this.toolStripButtonExit = new System.Windows.Forms.ToolStripButton();
            this.toolStripButtonMail = new System.Windows.Forms.ToolStripButton();
            this.panelshow.SuspendLayout();
            this.panel1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelshow
            // 
            this.panelshow.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.panelshow.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelshow.Controls.Add(this.panelShowInfo);
            this.panelshow.Controls.Add(this.panel1);
            this.panelshow.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelshow.Location = new System.Drawing.Point(0, 0);
            this.panelshow.Name = "panelshow";
            this.panelshow.Size = new System.Drawing.Size(1144, 749);
            this.panelshow.TabIndex = 1;
            // 
            // panelShowInfo
            // 
            this.panelShowInfo.AutoScroll = true;
            this.panelShowInfo.BackColor = System.Drawing.Color.White;
            this.panelShowInfo.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelShowInfo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelShowInfo.Location = new System.Drawing.Point(0, 100);
            this.panelShowInfo.Name = "panelShowInfo";
            this.panelShowInfo.Size = new System.Drawing.Size(1142, 647);
            this.panelShowInfo.TabIndex = 2;
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.toolStrip1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1142, 100);
            this.panel1.TabIndex = 1;
            // 
            // toolStrip1
            // 
            this.toolStrip1.AutoSize = false;
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(36, 36);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButtonUserInfo,
            this.toolStripButtonQueryProduct,
            this.toolStripButtonAdd,
            this.toolStripButtonUpload,
            this.toolStripButtonDownload,
            this.toolStripComboBox1_Remove,
            this.toolStripButtonMail,
            this.toolStripButtonExit});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Padding = new System.Windows.Forms.Padding(0, 0, 3, 0);
            this.toolStrip1.Size = new System.Drawing.Size(1140, 95);
            this.toolStrip1.TabIndex = 0;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripButtonUserInfo
            // 
            this.toolStripButtonUserInfo.AutoSize = false;
            this.toolStripButtonUserInfo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.toolStripButtonUserInfo.Font = new System.Drawing.Font("Segoe UI", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripButtonUserInfo.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonUserInfo.Image")));
            this.toolStripButtonUserInfo.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonUserInfo.Name = "toolStripButtonUserInfo";
            this.toolStripButtonUserInfo.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonUserInfo.Text = "用户信息";
            this.toolStripButtonUserInfo.TextDirection = System.Windows.Forms.ToolStripTextDirection.Horizontal;
            this.toolStripButtonUserInfo.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonUserInfo.Click += new System.EventHandler(this.toolStripButtonUserInfo_Click);
            // 
            // toolStripButtonQueryProduct
            // 
            this.toolStripButtonQueryProduct.AutoSize = false;
            this.toolStripButtonQueryProduct.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonQueryProduct.Image")));
            this.toolStripButtonQueryProduct.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonQueryProduct.Name = "toolStripButtonQueryProduct";
            this.toolStripButtonQueryProduct.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonQueryProduct.Text = "信息查询";
            this.toolStripButtonQueryProduct.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonQueryProduct.Click += new System.EventHandler(this.toolStripButtonQueryProduct_Click);
            // 
            // toolStripButtonAdd
            // 
            this.toolStripButtonAdd.AutoSize = false;
            this.toolStripButtonAdd.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonAdd.Image")));
            this.toolStripButtonAdd.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonAdd.Name = "toolStripButtonAdd";
            this.toolStripButtonAdd.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonAdd.Text = "新增产品";
            this.toolStripButtonAdd.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonAdd.Click += new System.EventHandler(this.toolStripButtonAdd_Click);
            // 
            // toolStripButtonUpload
            // 
            this.toolStripButtonUpload.AutoSize = false;
            this.toolStripButtonUpload.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonUpload.Image")));
            this.toolStripButtonUpload.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonUpload.Name = "toolStripButtonUpload";
            this.toolStripButtonUpload.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonUpload.Text = "上传数据";
            this.toolStripButtonUpload.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonUpload.Click += new System.EventHandler(this.toolStripButtonUpload_Click);
            // 
            // toolStripButtonDownload
            // 
            this.toolStripButtonDownload.AutoSize = false;
            this.toolStripButtonDownload.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonDownload.Image")));
            this.toolStripButtonDownload.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonDownload.Name = "toolStripButtonDownload";
            this.toolStripButtonDownload.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonDownload.Text = "下载数据";
            this.toolStripButtonDownload.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonDownload.Click += new System.EventHandler(this.toolStripButtonDownload_Click);
            // 
            // toolStripComboBox1_Remove
            // 
            this.toolStripComboBox1_Remove.AutoSize = false;
            this.toolStripComboBox1_Remove.Items.AddRange(new object[] {
            "清空数据表",
            "清空Used表",
            "删除指定数据段",
            "删除Used表指定数据段"});
            this.toolStripComboBox1_Remove.Name = "toolStripComboBox1_Remove";
            this.toolStripComboBox1_Remove.Size = new System.Drawing.Size(120, 95);
            this.toolStripComboBox1_Remove.Text = "删除数据";
            this.toolStripComboBox1_Remove.SelectedIndexChanged += new System.EventHandler(this.toolStripComboBox1_Remove_SelectedIndexChanged);
            this.toolStripComboBox1_Remove.Click += new System.EventHandler(this.toolStripComboBox1_Remove_Click);
            // 
            // toolStripButtonExit
            // 
            this.toolStripButtonExit.AutoSize = false;
            this.toolStripButtonExit.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonExit.Image")));
            this.toolStripButtonExit.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButtonExit.Name = "toolStripButtonExit";
            this.toolStripButtonExit.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonExit.Text = "退出登录";
            this.toolStripButtonExit.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolStripButtonExit.Click += new System.EventHandler(this.toolStripButtonExit_Click);
            // 
            // toolStripButtonMail
            // 
            this.toolStripButtonMail.AutoSize = false;
            this.toolStripButtonMail.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButtonMail.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButtonMail.Image")));
            this.toolStripButtonMail.ImageTransparentColor = System.Drawing.Color.Maroon;
            this.toolStripButtonMail.Name = "toolStripButtonMail";
            this.toolStripButtonMail.Size = new System.Drawing.Size(80, 60);
            this.toolStripButtonMail.Text = "toolStripButton1";
            this.toolStripButtonMail.Click += new System.EventHandler(this.toolStripButtonMail_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1144, 749);
            this.Controls.Add(this.panelshow);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "MainForm";
            this.Text = "罗技(苏州)产品数据管理客户端";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.panelshow.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panelshow;
        private System.Windows.Forms.Panel panelShowInfo;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolStripButtonUserInfo;
        private System.Windows.Forms.ToolStripButton toolStripButtonQueryProduct;
        private System.Windows.Forms.ToolStripButton toolStripButtonAdd;
        private System.Windows.Forms.ToolStripButton toolStripButtonUpload;
        private System.Windows.Forms.ToolStripButton toolStripButtonDownload;
        private System.Windows.Forms.ToolStripButton toolStripButtonExit;
        private System.Windows.Forms.ToolStripComboBox toolStripComboBox1_Remove;
        private System.Windows.Forms.ToolStripButton toolStripButtonMail;
    }
}

