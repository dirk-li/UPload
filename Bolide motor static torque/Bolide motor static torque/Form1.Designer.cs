namespace Bolide_motor_static_torque
{
    partial class Bolide_motor_static_torque
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
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Bolide_motor_static_torque));
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea9 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend9 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series9 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea10 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend10 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series10 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.Start_btn = new System.Windows.Forms.Button();
            this.Result_btn = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.result_rtb = new System.Windows.Forms.RichTextBox();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.openport_btn = new System.Windows.Forms.ToolStripButton();
            this.tspb1 = new System.Windows.Forms.ToolStripProgressBar();
            this.label4 = new System.Windows.Forms.Label();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.chart5 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Column9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.toolStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart5)).BeginInit();
            this.SuspendLayout();
            // 
            // Start_btn
            // 
            this.Start_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Start_btn.ForeColor = System.Drawing.Color.Black;
            this.Start_btn.Location = new System.Drawing.Point(581, 502);
            this.Start_btn.Name = "Start_btn";
            this.Start_btn.Size = new System.Drawing.Size(63, 41);
            this.Start_btn.TabIndex = 0;
            this.Start_btn.Text = "Start";
            this.Start_btn.UseVisualStyleBackColor = true;
            this.Start_btn.Click += new System.EventHandler(this.Start_btn_Click);
            // 
            // Result_btn
            // 
            this.Result_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Result_btn.Location = new System.Drawing.Point(547, 373);
            this.Result_btn.Name = "Result_btn";
            this.Result_btn.Size = new System.Drawing.Size(121, 98);
            this.Result_btn.TabIndex = 1;
            this.Result_btn.UseVisualStyleBackColor = true;
            this.Result_btn.Click += new System.EventHandler(this.Result_btn_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column9,
            this.Column7,
            this.Column8});
            this.dataGridView1.GridColor = System.Drawing.Color.Blue;
            this.dataGridView1.Location = new System.Drawing.Point(0, 56);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(312, 108);
            this.dataGridView1.TabIndex = 8;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // result_rtb
            // 
            this.result_rtb.Location = new System.Drawing.Point(509, 82);
            this.result_rtb.Name = "result_rtb";
            this.result_rtb.Size = new System.Drawing.Size(223, 239);
            this.result_rtb.TabIndex = 9;
            this.result_rtb.Text = "";
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.openport_btn,
            this.tspb1});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(743, 25);
            this.toolStrip1.TabIndex = 10;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // openport_btn
            // 
            this.openport_btn.BackColor = System.Drawing.SystemColors.Control;
            this.openport_btn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.openport_btn.Image = ((System.Drawing.Image)(resources.GetObject("openport_btn.Image")));
            this.openport_btn.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.openport_btn.Name = "openport_btn";
            this.openport_btn.Size = new System.Drawing.Size(23, 22);
            this.openport_btn.Click += new System.EventHandler(this.openport_btn_Click);
            // 
            // tspb1
            // 
            this.tspb1.Name = "tspb1";
            this.tspb1.Size = new System.Drawing.Size(100, 22);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(569, 596);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(163, 26);
            this.label4.TabIndex = 15;
            this.label4.Text = "By Dirk Li mail:dli6@logitech.com\r\nLogitech(sz) MEC-TE  TEL:2211";
            // 
            // chart1
            // 
            this.chart1.BackColor = System.Drawing.Color.Transparent;
            chartArea9.AxisX.MajorGrid.Enabled = false;
            chartArea9.AxisY.MajorGrid.Enabled = false;
            chartArea9.BackColor = System.Drawing.SystemColors.Control;
            chartArea9.BorderColor = System.Drawing.Color.Transparent;
            chartArea9.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea9);
            legend9.BackColor = System.Drawing.SystemColors.Control;
            legend9.DockedToChartArea = "ChartArea1";
            legend9.Docking = System.Windows.Forms.DataVisualization.Charting.Docking.Top;
            legend9.Enabled = false;
            legend9.Name = "Legend1";
            this.chart1.Legends.Add(legend9);
            this.chart1.Location = new System.Drawing.Point(12, 179);
            this.chart1.Name = "chart1";
            series9.BorderColor = System.Drawing.SystemColors.Control;
            series9.ChartArea = "ChartArea1";
            series9.Legend = "Legend1";
            series9.Name = "Series1";
            this.chart1.Series.Add(series9);
            this.chart1.Size = new System.Drawing.Size(385, 216);
            this.chart1.TabIndex = 16;
            this.chart1.Text = "chart1";
            // 
            // chart5
            // 
            this.chart5.BackColor = System.Drawing.Color.Transparent;
            chartArea10.BackColor = System.Drawing.SystemColors.Control;
            chartArea10.Name = "ChartArea1";
            this.chart5.ChartAreas.Add(chartArea10);
            legend10.DockedToChartArea = "ChartArea1";
            legend10.Docking = System.Windows.Forms.DataVisualization.Charting.Docking.Top;
            legend10.Enabled = false;
            legend10.Name = "Legend1";
            this.chart5.Legends.Add(legend10);
            this.chart5.Location = new System.Drawing.Point(12, 401);
            this.chart5.Name = "chart5";
            series10.ChartArea = "ChartArea1";
            series10.Legend = "Legend1";
            series10.Name = "Series1";
            this.chart5.Series.Add(series10);
            this.chart5.Size = new System.Drawing.Size(385, 205);
            this.chart5.TabIndex = 20;
            this.chart5.Text = "chart5";
            // 
            // Column9
            // 
            this.Column9.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.Column9.Frozen = true;
            this.Column9.HeaderText = "item";
            this.Column9.Name = "Column9";
            this.Column9.Width = 51;
            // 
            // Column7
            // 
            this.Column7.HeaderText = "静摩察力(pan)";
            this.Column7.Name = "Column7";
            // 
            // Column8
            // 
            this.Column8.FillWeight = 60F;
            this.Column8.HeaderText = "静摩察力(tilt)";
            this.Column8.Name = "Column8";
            // 
            // Bolide_motor_static_torque
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(743, 631);
            this.Controls.Add(this.chart5);
            this.Controls.Add(this.chart1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.result_rtb);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.Result_btn);
            this.Controls.Add(this.Start_btn);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Bolide_motor_static_torque";
            this.Text = "Bolide_motor_static_torque";
            this.Load += new System.EventHandler(this.Bolide_motor_static_torque_Load);
            this.Resize += new System.EventHandler(this.Bolide_motor_static_torque_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart5)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Start_btn;
        private System.Windows.Forms.Button Result_btn;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.RichTextBox result_rtb;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton openport_btn;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart5;
        private System.Windows.Forms.ToolStripProgressBar tspb1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column9;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
    }
}

