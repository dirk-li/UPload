using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.IO.Ports;
using inifile;
using System.Reflection;
using Excel = Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.Windows.Forms.DataVisualization.Charting;
using Microsoft.VisualBasic;

namespace Bolide_motor_static_torque
{
    public partial class Bolide_motor_static_torque : Form
    {
        private float X;//当前窗体的宽度
        private float Y;//当前窗体的高度

        [DllImport("kernel32.dll")]
        public static extern IntPtr _lopen(string IpPathname, int iReadWrite);

        [DllImport("kernel32.dll")]
        public static extern bool CloseHandle(IntPtr hObject);
        public const int OF_READWRITE = 2;
        public const int OF_SHARE_DENY_NONE = 0x40;
        public readonly IntPtr HFILE_ERROR = new IntPtr(-1);

        private static SerialPort port;
       // private static SerialPort //port1;
        public Bolide_motor_static_torque()
        {
            InitializeComponent();

            openport_btn.Text = "打开串口";

            //toolStripComboBox1.Text = "COM10";

        }

        private void Start_btn_Click(object sender, EventArgs e)
        {
            cleardata();
            tspb1.Maximum = 10;
            tspb1.Value = 0;
            tspb1.Step = 1;
            if (openport_btn.Text == "关闭串口")
            {
                string currentPath = Directory.GetCurrentDirectory();

                //Pan static friction force
                tspb1.Value = 1;
                string sn = Interaction.InputBox("请输入Serial Number", "Serial Number", "", 10, 10);
                string filepath = currentPath + "\\static_torque_spec.ini";
                string pan_max_spec = inifile.Class1.ReadIniData("static_torque_spec", "Pan_force_max_spec", null, filepath);
                string pan_min_spec = inifile.Class1.ReadIniData("static_torque_spec", "Pan_force_min_spec", null, filepath);
                string[] pan_max_spec_array = new string[] { pan_max_spec };
                string[] pan_min_spec_array = new string[] { pan_min_spec };
                string[] panstatictorque_value1 = get_value("pan static torque", currentPath + "\\panstatictorque_value.txt");
                //string filename = sn + "pan.txt";

               // File.Copy(currentPath + "\\panstatictorque_value.txt", currentPath + "\\" + filename);
                string[] panstatictorque_value2 = removearray(panstatictorque_value1,"2040");
                string delpanmax = removemax(panstatictorque_value2);
                string[] panstatictorque_value3 = removearray(panstatictorque_value2, delpanmax);//20180430 delete the unusual max value
                string[] panstatictorque_value = minusArray(panstatictorque_value3, 1); //20180430 minus the toside difference value
                string[] pantorque_average = getaverage(panstatictorque_value);  //20180504  get average
                string[] panstatictorque = getpeak(panstatictorque_value);
                string[] panstatictorque_mergearray = merge_array(pan_max_spec_array, pan_min_spec_array, panstatictorque, pantorque_average);
                int[] panfrictionforce = TointArray(panstatictorque_mergearray);

                result_compare(panfrictionforce, "The pan static frictional force");
                int[] panstatictorque_chart = TointArray(panstatictorque_value);
                chart1_torque(panstatictorque_chart);



                //Tilt static friction force
                
                MessageBox.Show("TIlT");
                tspb1.Value = 7;
                string tilt_max_spec = inifile.Class1.ReadIniData("static_torque_spec", "Tilt_force_max_spec", null, filepath);
                string tilt_min_spec = inifile.Class1.ReadIniData("static_torque_spec", "Tilt_force_min_spec", null, filepath);
                string[] tilt_max_spec_array = new string[] { tilt_max_spec };
                string[] tilt_min_spec_array = new string[] { tilt_min_spec };
                string[] tiltstatictorque_value1 = get_value("tilt static torque", currentPath + "\\tiltstatictorque_value.txt");
                //filename = sn + "tilt.txt";

                //File.Copy(currentPath + "\\tiltstatictorque_value.txt", currentPath + "\\" + filename);
                string[] tiltstatictorque_value2 = removearray(tiltstatictorque_value1,"2040");
                string deltiltmax = removemax(tiltstatictorque_value2);
                string[] tiltstatictorque_value3 = removearray(tiltstatictorque_value2, deltiltmax);//20180430 delete the unusual max value
                string[] tiltstatictorque_value = minusArray(tiltstatictorque_value3, 1); //20180430 minus the toside difference value
                string[] tilttorque_average = getaverage(tiltstatictorque_value);  //20180504  get average
                string[] tiltstatictorque = getpeak(tiltstatictorque_value);
                string[] tiltstatictorque_mergearray = merge_array(tilt_max_spec_array, tilt_min_spec_array, tiltstatictorque, tilttorque_average);
                int[] tiltfrictionforce = TointArray(tiltstatictorque_mergearray);

                result_compare(tiltfrictionforce, "The tilt static frictional force");
              
                int[] tiltstatictorque_chart = TointArray(tiltstatictorque_value);
                chart5_torque(tiltstatictorque_chart);

         

                string result_string=result_rtb.Text;
                if (result_string.Contains("FAIL"))
                    {
                        Result_btn.Text = "FAIL";
                        Result_btn.BackColor = Color.Red;

                    }
                else if (result_string.Contains("Retest"))
                {
                    Result_btn.Text = "Retest";
                    Result_btn.BackColor = Color.Blue;
                }
                    else
                    {
                        Result_btn.Text = "PASS";
                        Result_btn.BackColor = Color.GreenYellow;

                    }


                string[] showitem = new string[] { "MAX SPEC", "MIN SPEC", "MAX","AVERAGE" };
                //show_datagardview(showitem, panstatictorque_mergearray, panlowspeed_mergearray, panmediumspeed_mergearray, panhighspeed_mergearray, tiltstatictorque_mergearray, tiltlowspeed_mergearray, tiltmediumspeed_mergearray, tilthighspeed_mergearray);
                show_datagardview(showitem, panstatictorque_mergearray, tiltstatictorque_mergearray);

                //使用Chart 画 出测试数据的波形图
               // chart1_torque(panstatictorque_chart, tiltstatictorque_chart, pan_low_speed_value_chart, pan_medium_speed_value_chart, pan_high_speed_value_chart, tilt_low_speed_value_chart, tilt_medium_speed_value_chart, tilt_high_speed_value_chart);
                
                
                
                
                
                string[] myrow = File.ReadAllLines(currentPath + "\\row.txt");
                int row = int.Parse(myrow[0]);
                string[] writedata = coalescing_array(sn, panstatictorque, tiltstatictorque, pantorque_average,tilttorque_average,Result_btn.Text);
                int[] col = creatcolumn(writedata.Length,2);
                WriteExcel(currentPath + "\\static_torque-results.csv", row, col, writedata);
                row = row + 1;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());
                tspb1.Value = 10;
           
               
            }
            else
            {
                MessageBox.Show("请打开串口");
            }


           
        }


        public static string[] get_value(string inputstr,string filepath)
        {
            port.Write(inputstr);
            
            string[] recvalue = new string[234]; // update 52 value to 234 2018/5/2
                       
            //System.Threading.Thread.Sleep(1000);

            for (int i = 0; i < 234; i++)
            {
                string recdata = port.ReadLine();
               // MessageBox.Show(recdata);
                string recstr = ((int.Parse(recdata)*2040/1023)).ToString();

                if (recstr.Length == 0)
                {
                    recvalue[i] = "0";
                }
                    else
                {
                    recvalue[i] = recstr;
                }

                System.Threading.Thread.Sleep(30);
            }
            File.WriteAllLines(filepath,recvalue);
            
           
            return recvalue;
            
        }


        private string[] removearray(string[] list, string key)
        {
            List<string> l = new List<string>();
            foreach (string s in list)
            {
                if (s != key)
                {
                    l.Add(s);
                }
            }
            return l.ToArray();
        }
        private string removemax(string[] array)
        {
            int[] intarray1;
            intarray1 = Array.ConvertAll<string, int>(array, s => int.Parse(s));
            int max = 0;
            for (int i = 0; i < intarray1.Length; i++)
            {
                max = max > intarray1[i] ? max : intarray1[i];
            }
            return max.ToString();
        }
        private string[] getaverage(string[] array)
        {
            int[] intarray1;
            string[] average = new string[1];
            intarray1 = Array.ConvertAll<string, int>(array, s => int.Parse(s));
            int sum = 0;
            int arrayleg=intarray1.Length-50;
            for (int i = 50; i < intarray1.Length; i++)
            {
                sum = sum + intarray1[i];
            }
            average[0] = (sum / arrayleg).ToString();
            return average;
        }
        /*     
        public static string[] getcomdata(string[] strarray)
        {
            String[] recdata = new string[1];
            int a = 0;
            int b = 0;
            for (int i = 0; i < strarray.Length; i++)
            {
                if (a < int.Parse(strarray[i]))
                {
                    a = int.Parse(strarray[i]);
                }
                recdata[0] = a.ToString();        

            }

            //File.WriteAllLines(filepanth, recdata);
            return recdata;
        }*/
        public static string getcomdata(string[] strarray)
        {
            int a = 0;
            int b = 0;
            for (int i = 0; i < strarray.Length; i++)
            {
                if (a < int.Parse(strarray[i]))
                {
                    a = int.Parse(strarray[i]);
                }
                b = i;
            }
           return a.ToString();
        }
        public static string[] getpeak(string[] strarray)
        {
            String[] recdata = new string[1];

            string a = getcomdata(strarray);
            int position=Array.IndexOf(strarray,a);
             if ( position >=(strarray.Length-1))
            {

                recdata[0] = a.ToString();
            }
  
            //else if (strarray[position] == strarray[position + 1])
            //{
                //recdata[0] = "1";
            //}

             else if (int.Parse(a) > int.Parse(strarray[position - 1]) && int.Parse(a) > int.Parse(strarray[position + 1]))
                 //else if (int.Parse(a) > int.Parse(strarray[position - 1]) && int.Parse(a) > int.Parse(strarray[position + 1]))
            {               
                
                recdata[0] = a.ToString();        
                
            }
            else
            {
                recdata[0] = "2";
            }
            return recdata;
            
        }

        public static string[] merge_array(string[] array1, string[] array2, string[] array3, string[] array4)
        {
            string[] array = new string[4];
            array[0] = array1[0];
            array[1] = array2[0];
            array[2] = array3[0];
            array[3] = array4[0];
            return array;
        }
        public static string[] torque(string[] array)
        {

            String[] maxdata = new string[1];

            maxdata[0] = ((int.Parse(array[0]) + int.Parse(array[1]) + int.Parse(array[2]) + int.Parse(array[3]) + int.Parse(array[4])) / 5).ToString();

           // MessageBox.Show("MAX" + maxdata[0]);
            //File.WriteAllLines(filepanth, recdata);
            return maxdata;
        }

        //将字符串数组转化成int 数组 
        public static int[] TointArray(string[] strarray)
        {

            int[] data = new int[strarray.Length];

            for (int i = 0; i < strarray.Length; i++)
            {

                data[i] =int.Parse(strarray[i]);

            }
            return data;
        }
        //减去一个差异值 
        public static string[] minusArray(string[] array,int minvalue)
        {

            int[] data = new int[array.Length];
            string[] strdata = new string[array.Length];
            for (int i = 0; i < array.Length; i++)
            {
                data[i] = int.Parse(array[i]) + minvalue;
            }
            for (int i = 0; i < array.Length; i++)
            {
                if (data[i] < Math.Abs(minvalue))
                {
                    data[i] = 0;
                }
            }
            for (int i = 0; i < array.Length; i++)
            {
                strdata[i] = data[i].ToString();
            }
            return strdata;
        }

        //比对静态摩擦力的平均值   20180505changed
        public void result_compare(int[] value,string returnstr)
        {
            if (value[3] == 0)
            {
                richshow(returnstr + " Retest angin", Color.Blue);
                return;
            }
            else if (value[3] > value[0])
                {
                    richshow(returnstr+ " Test FAIL", Color.Red);
                    return;
                }
                else if (value[3] < value[1])
                {
                    richshow(returnstr + " Test FAIL", Color.Red);
                    return;
                }
                else
                {
                    richshow(returnstr + " Test PASS", Color.Green);
                }
        }

        //在richbox 显示每一项测试结果
        public void richshow(string context,Color color)
        {
            result_rtb.SelectionColor = color;
            result_rtb.AppendText(context+"\r\n");
 
        }
        //在Griddataview 里显示测试数值 
        public void show_datagardview(string[] data1, string[] data2, string[] data3)
        {
            dataGridView1.Rows.Clear();
            //DataGridViewContentAlignment.MiddleCenter;
            //dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnMode.AllCells);
            string[][] data = value(data1, data2, data3);
            for (int i = 0; i < data1.Length; i++)
            {
                dataGridView1.Rows.Add(data[i]);
            }
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.DefaultCellStyle.SelectionForeColor = Color.Black;
            dataGridView1.DefaultCellStyle.SelectionBackColor = Color.AliceBlue;
        }
        public static string[][] value(string[] array1, string[] array2, string[] array3)
        {
            string[][] array = new string[4][];
            for (int i = 0; i < 4; i++)
            {

                array[i] = new string[] { array1[i], array2[i], array3[i] };
            }
            return array;
        }

        //将MAX，MIN，DATA数组 合并到一个数组
        /*
        public static string[] merge_array(string[] array1,string[] array2,string[] array3 )
        { 
            string[] array=new string[3];
            array[0] = array1[0];
            array[1] = array2[0];
            array[2] = array3[0];
            return array;
        }
        */

        public static string[] coalescing_array(string snnum, string[] array1, string[] array2, string[] array3, string[] array4, string result)
        {

            string[] array = new string[6];
            array[0] = snnum;
            array[1] = array1[0];
            array[2] = array2[0];
            array[3] = array3[0];
            array[4] = array4[0];            
            array[5] = result;
            return array;
        }
        public static int[] creatcolumn(int length,int value)
        {
            int[] column = new int[length];
            for (int i = 0; i < length; i++)
            {
                column[i] = i + value;

            }
            return column;
        }
        public void chart1_torque(int[] value1)
        {
            chart1.Series.Clear();
            chart1.Legends[0].Enabled = true;
            chart1.Legends[0].BackColor = Color.Transparent;
            chart1.BackColor = Color.Transparent;
            chart1.ChartAreas[0].AxisX.Minimum = 0;
            chart1.ChartAreas[0].AxisX.Maximum = 234;
            chart1.ChartAreas[0].AxisY.Minimum = 0;
            chart1.ChartAreas[0].AxisY.Maximum = 2040;
            chart1.ChartAreas[0].AxisX.Interval = 1;
            chart1.ChartAreas[0].AxisY.Interval = 120;
            chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].BackColor = Color.Transparent;

            Series series1 = new Series("pan static torque");
           
            series1.ChartType = SeriesChartType.Line;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            //series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }
            chart1.Series.Add(series1);
       
        }
      
        public void chart5_torque(int[] value1)
        {
            chart5.Series.Clear();
            chart5.Legends[0].Enabled = true;
            chart5.Legends[0].BackColor = Color.Transparent;
            chart5.BackColor = Color.Transparent;
            chart5.ChartAreas[0].AxisX.Minimum = 0;
            chart5.ChartAreas[0].AxisX.Maximum = 234;
            chart5.ChartAreas[0].AxisY.Minimum = 0;
            chart5.ChartAreas[0].AxisY.Maximum = 2040;
            chart5.ChartAreas[0].AxisX.Interval = 1;
            chart5.ChartAreas[0].AxisY.Interval = 120;
            chart5.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart5.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart5.ChartAreas[0].BackColor = Color.Transparent;
            Series series1 = new Series("tilt static torque");
            series1.ChartType = SeriesChartType.Line;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Green;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
           // series1.IsValueShownAsLabel = true;
            //series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }
            chart5.Series.Add(series1);
        }

   

        public void WriteExcel(string filename, int row, int[] col, string[] mystr)
        {
            //new an excel object
            Excel.Workbook workBook;
            Excel.Application excelApp = new Excel.ApplicationClass();
            excelApp.Visible = false;
            if (excelApp == null)
            {
                // if equal null means EXCEL is not installed.
                MessageBox.Show("Excel is not properly installed!");
                return;
            }
            // open a workbook,if not exist, create a new one Excel.Workbook workBook;
            if (File.Exists(filename))
            {
                workBook = excelApp.Workbooks.Open(filename, 0, false, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
            }
            else
            {
                workBook = excelApp.Workbooks.Add(true);
            }

            //new a worksheet
            Excel.Worksheet workSheet = workBook.ActiveSheet as Excel.Worksheet;

            //write data
            workSheet = (Excel.Worksheet)workBook.Worksheets.get_Item(1);//获得第i个sheet，准备写入
            for (int i = 0; i < col.Length; i++)
            {
                workSheet.Cells[row, col[i]] = mystr[i];
            }

            //set visible the Excel will run in background
            excelApp.Visible = false;
            //set false the alerts will not display
            excelApp.DisplayAlerts = false;

            workBook.SaveAs(filename, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Excel.XlSaveAsAccessMode.xlNoChange, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value);
            //workBook.SaveAs(filename);
            workBook.Close(false, Missing.Value, Missing.Value);

            //quit and clean up objects
            excelApp.Quit();
            workSheet = null;
            workBook = null;
            excelApp = null;
            GC.Collect();
        }

        public void WriteExcel_tilt(string filename, int row, int[] col, string[] str_header)
        {
            //new an excel object
            Excel.Workbook workBook;
            Excel.Application excelApp = new Excel.ApplicationClass();
            excelApp.Visible = false;
            if (excelApp == null)
            {
                // if equal null means EXCEL is not installed.
                MessageBox.Show("Excel is not properly installed!");
                return;
            }
            // open a workbook,if not exist, create a new one Excel.Workbook workBook;
            if (File.Exists(filename))
            {
                workBook = excelApp.Workbooks.Open(filename, 0, false, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
            }
            else
            {
                workBook = excelApp.Workbooks.Add(true);
            }

            //new a worksheet
            Excel.Worksheet workSheet = workBook.ActiveSheet as Excel.Worksheet;
            workSheet.Columns.EntireColumn.AutoFit();//列宽自适应
            //write data
            workSheet = (Excel.Worksheet)workBook.Worksheets.get_Item(1);//获得第i个sheet，准备写入

            for (int i = 0; i < col.Length; i++)
            {
                workSheet.Cells[row, col[i]] = str_header[i];
            }

            //set visible the Excel will run in background
            excelApp.Visible = false;
            //set false the alerts will not display
            excelApp.DisplayAlerts = false;

            workBook.SaveAs(filename, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Excel.XlSaveAsAccessMode.xlNoChange, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value);
            //workBook.SaveAs(filename);
            workBook.Close(false, Missing.Value, Missing.Value);

            //quit and clean up objects
            excelApp.Quit();
            workSheet = null;
            workBook = null;
            excelApp = null;
            GC.Collect();
        }
        private void Result_btn_Click(object sender, EventArgs e)
        {


        }
        public static string[] excelhandel(string str1,string str2,string str3)
        {
            string[] array=new string[9];
            array[0] = str1;
            array[1] = " ";
            array[4] = str2;
            array[5] = str3;
            return array;
        }


        private void Bolide_motor_static_torque_Load(object sender, EventArgs e)
        {
            X = this.Width;//获取窗体的宽度
            Y = this.Height;//获取窗体的高度
            setTag(this);//调用方法

            //this.WindowState = FormWindowState.Maximized;
            string currentPath = Directory.GetCurrentDirectory();
            string filepath = currentPath + "\\static_torque_spec.ini";
            string[] spec_handel = new string[] { " ","Serial num","pan_max", "tilt_max","pan_average","tilt_average","reuslt" };
            string pan_max_spec = inifile.Class1.ReadIniData("static_torque_spec", "Pan_force_max_spec", null, filepath);
            string pan_min_spec = inifile.Class1.ReadIniData("static_torque_spec", "Pan_force_min_spec", null, filepath);
            string tilt_max_spec = inifile.Class1.ReadIniData("static_torque_spec", "Tilt_force_max_spec", null, filepath);
            string tilt_min_spec = inifile.Class1.ReadIniData("static_torque_spec", "Tilt_force_min_spec", null, filepath);

           string[] handel_max = excelhandel("MAX_SPEC",pan_max_spec,tilt_max_spec);
           string[] handel_min = excelhandel("MIN_SPEC",pan_min_spec, tilt_min_spec);

            string filename = "static_torque - results_"+DateTime.Now.ToString("yyyyMMddHHmmss")+".csv";
            if (File.Exists(currentPath + "\\static_torque-results.csv"))
            {
                //File.Copy(currentPath + "\\static_torque-results.csv", currentPath+"\\static_torque-results_backup.csv");
                File.Copy(currentPath + "\\static_torque-results.csv", currentPath + "\\"+filename);
            }
            int[] col = creatcolumn(spec_handel.Length,1);
            //int[] col = creatcolumn(static_torque_limitMax.Length);
            IntPtr vHandle = _lopen(currentPath + "\\static_torque-results.csv", OF_READWRITE | OF_SHARE_DENY_NONE);
            if (vHandle == HFILE_ERROR)
            {
                Process[] p_array = Process.GetProcesses();
                for (int i = 0; i < p_array.Length; i++)
                {
                    if (p_array[i].ProcessName == "EXCEL")
                    {
                        p_array[i].Kill();

                    }
                }
            }
            CloseHandle(vHandle);
            //Reading what row is input row in Excel
            if (File.Exists(currentPath + "\\static_torque-results.csv"))
            {
                string[] myrow = File.ReadAllLines(currentPath + "\\row.txt");

                int row = int.Parse(myrow[0]) + 2;

                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row, col, spec_handel);
                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row + 1, col,handel_max);
                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row + 2, col, handel_min);
                row = row + 3;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());
            }
            else
            {
                int row = 1;

                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row, col, spec_handel);
                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row + 1, col, handel_max);
                WriteExcel_tilt(currentPath + "\\static_torque-results.csv", row + 2, col, handel_min);
                row = row + 3;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());
            }
        }

        private void openport_btn_Click(object sender, EventArgs e)
        {
            //this.WindowState = FormWindowState.Maximized;

            string[] sp = SerialPort.GetPortNames();
            if (sp.Contains("COM10"))
            {
                if (openport_btn.Text == "打开串口")
                {
                    port = new SerialPort("COM10");
                    port.BaudRate = 9600;
                    port.DataBits = 8;
                    port.Handshake = Handshake.None;
                    port.Open();
                    //port1 = new SerialPort("COM5");
                    //port1.BaudRate = 9600;
                    //port1.DataBits = 8;
                    //port1.Handshake = Handshake.None;
                    //port1.Open();
                    openport_btn.Text = "关闭串口";
                    if (port.IsOpen == false)
                    {
                        MessageBox.Show("串口无法打开，请检查串口状态");
                    }
                }

                else if (openport_btn.Text == "关闭串口")
                {
                    port.Close();
                    //port1.Close();
                    openport_btn.Text = "打开串口";
                }
            }
            else
            {
                MessageBox.Show("请检查你的串口号是否正确");
            }

        }
        public void cleardata()
        {
            result_rtb.Text = "";
            result_rtb.AppendText("");
            Result_btn.Text = "Testing";
            Result_btn.BackColor = Color.Transparent;
        }
        // 将控件的宽，高，左边距，顶边距和字体大小暂存到tag属性中
        private void setTag(Control cons)
        {
            foreach (Control con in cons.Controls)
            {
                con.Tag = con.Width + ":" + con.Height + ":" + con.Left + ":" + con.Top + ":" + con.Font.Size;
                if (con.Controls.Count > 0)
                    setTag(con);
            }
        }
        //根据窗体大小调整控件大小
        private void setControls(float newx, float newy, Control cons)
        {
            //遍历窗体中的控件，重新设置控件的值
            foreach (Control con in cons.Controls)
            {

                string[] mytag = con.Tag.ToString().Split(new char[] { ':' });//获取控件的Tag属性值，并分割后存储字符串数组
                float a = System.Convert.ToSingle(mytag[0]) * newx;//根据窗体缩放比例确定控件的值，宽度
                con.Width = (int)a;//宽度
                a = System.Convert.ToSingle(mytag[1]) * newy;//高度
                con.Height = (int)(a);
                a = System.Convert.ToSingle(mytag[2]) * newx;//左边距离
                con.Left = (int)(a);
                a = System.Convert.ToSingle(mytag[3]) * newy;//上边缘距离
                con.Top = (int)(a);
                Single currentSize = System.Convert.ToSingle(mytag[4]) * newy;//字体大小
                con.Font = new Font(con.Font.Name, currentSize, con.Font.Style, con.Font.Unit);
                if (con.Controls.Count > 0)
                {
                    setControls(newx, newy, con);
                }
            }
        }

        private void Bolide_motor_static_torque_Resize(object sender, EventArgs e)
        {
            float newx = (this.Width) / X; //窗体宽度缩放比例
            float newy = (this.Height) / Y;//窗体高度缩放比例
            setControls(newx, newy, this);//随窗体改变控件大小
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
