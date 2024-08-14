using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.IO.Ports;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.Reflection;
using Microsoft.VisualBasic;
using Excel = Microsoft.Office.Interop.Excel;
using System.Windows.Forms.DataVisualization.Charting;

namespace Bolide_Angle_Test
{
    public partial class Frm_Main : Form
    {
        //1.声明自适应类实例  
        AutoSizeFormClass asc = new AutoSizeFormClass(); //第四种改变程式控件缩放方法
        private static char[] HexChar = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };

        public static SerialPort port;
        public static SerialPort port1;
        private float X;//当前窗体的宽度
        private float Y;//当前窗体的高度
        public static string[] vrnoarray = new string[40];
        public static string[] vr_max_pan = new string[40];
        public static string[] vr_min_pan = new string[40];
        public static string[] vr_max_tilt = new string[40];
        public static string[] vr_min_tilt = new string[40];
        public static string[] vr_value_pan = new string[40];
        public static string[] vr_value_tilt = new string[40];
        public static string[] vr_value_tilt_first = new string[40];

        public static string[] angle_max_pan = new string[40];
        public static string[] angle_min_pan = new string[40];
        public static string[] angle_pan = new string[40];
        public static string[] speed_max = new string[40];
        public static string[] speed_min = new string[40];
        public static string[] speed_pan = new string[40];

        public static string[] angle_max_tilt = new string[40];
        public static string[] angle_min_tilt = new string[40];
        public static string[] angle_tilt = new string[40];
        public static string[] speed_tilt = new string[40];


        [DllImport("kernel32.dll")]
        public static extern IntPtr _lopen(string IpPathname, int iReadWrite);

        [DllImport("kernel32.dll")]
        public static extern bool CloseHandle(IntPtr hObject);
        public const int OF_READWRITE = 2;
        public const int OF_SHARE_DENY_NONE = 0x40;
        public readonly IntPtr HFILE_ERROR = new IntPtr(-1);
        public Frm_Main()
        {
            InitializeComponent();
            opencomport.Text = "打开串口";
        }

        private void Frm_Main_Load(object sender, EventArgs e)
        {
            asc.controllInitializeSize(this); //第四种改变程式控件缩放方法
            X = this.Width;//获取窗体的宽度
            Y = this.Height;//获取窗体的高度
            setTag(this);//调用方法
            string currentPath = Directory.GetCurrentDirectory();
            string[] angletilt = new string[42];
            angletilt[0] = "item";
            angletilt[1] = "Serial Num";
            for (int i = 2; i < 42; i++)
            {
                angletilt[i] = "num" + (i - 1).ToString();
            }
            string filename = "angle_results_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".csv";
            if (File.Exists(currentPath + "\\angle_results.csv"))
            {

                File.Copy(currentPath + "\\angle_results.csv", currentPath + "\\" + filename);
            }
            int[] col = creatcolumn(angletilt.Length, 1);

            IntPtr vHandle = _lopen(currentPath + "\\angle_results.csv", OF_READWRITE | OF_SHARE_DENY_NONE);
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
            if (File.Exists(currentPath + "\\angle_results.csv"))
            {
                string[] myrow = File.ReadAllLines(currentPath + "\\row.txt");

                int row = int.Parse(myrow[0]) + 2;

                WriteExcel_tilt(currentPath + "\\angle_results.csv", row, col, angletilt);
                row = row + 3;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());
            }
            else
            {
                int row = 1;

                WriteExcel_tilt(currentPath + "\\angle_results.csv", row, col, angletilt);
                row = row + 3;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());
            }
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
        private void opencomport_Click(object sender, EventArgs e)
        {
            asc.controlAutoSize(this);//第四种改变程式控件缩放方法
            this.WindowState = FormWindowState.Maximized;
            string[] sp = SerialPort.GetPortNames();
            if (sp.Contains("COM10") && sp.Contains("COM5"))
            {
                if (opencomport.Text == "打开串口")
                {
                    port = new SerialPort("COM10");
                    port.BaudRate = 9600;
                    port.DataBits = 8;
                    port.Handshake = Handshake.None;
                    port.Open();
                    port1 = new SerialPort("COM5");
                    port1.BaudRate = 9600;
                    port1.DataBits = 8;
                    port1.Handshake = Handshake.None;
                    port1.Open();
                    opencomport.Text = "关闭串口";
                    if (port.IsOpen == false | port1.IsOpen == false)
                    {
                        MessageBox.Show("串口无法打开，请检查串口状态");
                    }
                }

                else if (opencomport.Text == "关闭串口")
                {
                    port.Close();
                    port1.Close();
                    opencomport.Text = "打开串口";
                }
            }
            else
            {
                MessageBox.Show("请检查你的串口号是否正确");
            }
        }

        private void Frm_Main_Resize(object sender, EventArgs e)
        {
            float newx = (this.Width) / X; //窗体宽度缩放比例
            float newy = (this.Height) / Y;//窗体高度缩放比例
            setControls(newx, newy, this);//随窗体改变控件大小
        }

        private void button1_Click(object sender, EventArgs e)
        {
            toolStripProgressBar1.Maximum = 7;
            toolStripProgressBar1.Value = 0;
            toolStripProgressBar1.Step = 1;
            result_rtb.Text = "";
            this.result_btn.BackColor = Color.Transparent;
            this.result_btn.Text = "testing";
            string sn = Interaction.InputBox("请输入Serial Number", "Serial Number", "", 10, 10);
            if (opencomport.Text == "关闭串口")
            {
                string currentPath = Directory.GetCurrentDirectory();
                string inifilepath = currentPath + "\\Angle_spec.ini";

                toolStripProgressBar1.Value = 1;
                //pan的 VR、 角度、角速度测试
                string vr_max_pan_spec = inifile.Class1.ReadIniData("angle_spec", "vr_max_pan_spec", null, inifilepath);
                string[] vrmaxpanspec = vr_max_pan_spec.Split(',');
                string vr_min_pan_spec = inifile.Class1.ReadIniData("angle_spec", "vr_min_pan_spec", null, inifilepath);
                string[] vrminpanspec = vr_min_pan_spec.Split(',');
                //vr_max_pan = getspec(int.Parse(vrmaxspec[0]), int.Parse(vrmaxspec[1]));
                //vr_min = getspec(int.Parse(vrminspec[0]), int.Parse(vrminspec[1]) * (-1));
                vrnoarray = vrno(40);
                string angle_spec_pan = inifile.Class1.ReadIniData("angle_spec", "angle_spec_pan", null, inifilepath);
                string[] anglespecpan = angle_spec_pan.Split(',');
                angle_max_pan = getspec(double.Parse(anglespecpan[0]), int.Parse(anglespecpan[1]));
                angle_min_pan = getspec(double.Parse(anglespecpan[0]), int.Parse(anglespecpan[1]) * (-1));
                toolStripProgressBar1.Value = 2;
                clearangle("0110000A0002040000000073D0", "0110000A000261CA");
                if (File.Exists(currentPath + "\\vr_pan.txt") == false)
                    File.Create(currentPath + "\\vr_pan.txt");

                if (File.Exists(currentPath + "\\resultdata.txt") == false)
                    File.Create(currentPath + "\\resultdata.txt");
                if (File.Exists(currentPath + "\\angle_pan.txt") == false)
                    File.Create(currentPath + "\\angle_pan.txt");
                if (File.Exists(currentPath + "\\speed_pan.txt") == false)
                    File.Create(currentPath + "\\speed_pan.txt");
                System.Threading.Thread.Sleep(100);
                getvrangledata(currentPath + "\\vr_pan.txt", currentPath + "\\resultdata.txt", currentPath + "\\angle_pan.txt", currentPath + "\\speed_pan.txt", "vrpan", "01030000000305CB");
                vr_value_pan = getdata(currentPath + "\\vr_pan.txt");
                // vr_max_pan = vrlimit(vr_value_pan, vr_max_pan_spec);
                // vr_min_pan = vrlimit(vr_value_pan, vr_min_pan_spec);
                vr_max_pan = vrlimit("85", "930", vr_max_pan_spec);
                vr_min_pan = vrlimit("85", "930", vr_min_pan_spec);
                // File.WriteAllLines(currentPath + "\\vr_max_pan.txt", vr_max_pan);
                // File.WriteAllLines(currentPath + "\\vr_min_pan.txt", vr_min_pan);     


                //angle_pan = getangledata(currentPath + "\\angle_pan.txt");
                angle_pan = getdata(currentPath + "\\angle_pan.txt");
                speed_pan = getdata(currentPath + "\\speed_pan.txt");


                double[] vr_value_pan_double = ToDoubleArray(vr_value_pan);
                double[] vr_max_pan_double = ToDoubleArray(vr_max_pan);
                double[] vr_min_pan_double = ToDoubleArray(vr_min_pan);
                toolStripProgressBar1.Value = 3;
                result_compare(vr_value_pan_double, vr_max_pan_double, vr_min_pan_double, "The pan vr");
                chart1_torque(vr_value_pan_double, vr_max_pan_double, vr_min_pan_double);

                double[] angle_max_pan_double = ToDoubleArray(angle_max_pan);
                double[] angle_min_pan_double = ToDoubleArray(angle_min_pan);
                double[] angle_pan_double = ToDoubleArray(angle_pan);

                string speed_spec = inifile.Class1.ReadIniData("angle_spec", "speed_spec", null, inifilepath);
                string[] speedspec = speed_spec.Split(',');
                speed_max = getspeedspec(speedspec[0]);
                speed_min = getspeedspec(speedspec[1]);
                speed_pan = speeddata(currentPath + "\\resultdata.txt", currentPath + "\\speed_pan.txt");
                //speed_pan = speeddata(currentPath + "\\resultdata.txt", currentPath + "\\speed_pan.txt", "panangle");
                double[] speed_max_double = ToDoubleArray(speed_max);
                double[] speed_min_double = ToDoubleArray(speed_min);
                double[] speed_pan_double = ToDoubleArray(speed_pan);

                toolStripProgressBar1.Value = 4;

                result_compare(angle_pan_double, angle_max_pan_double, angle_min_pan_double, "The pan angle");
                chart2_torque(angle_pan_double, angle_max_pan_double, angle_min_pan_double);
                result_compare(speed_pan_double, speed_max_double, speed_min_double, "the pan speed");
                chart3_torque(speed_pan_double, speed_max_double, speed_min_double);


                MessageBox.Show("开始测试Tilt角度、角速度，请确认产品是否放置OK？");
                //tilt 角度、角速度测试
                toolStripProgressBar1.Value = 5;
                string vr_max_tilt_spec = inifile.Class1.ReadIniData("angle_spec", "vr_max_tilt_spec", null, inifilepath);
                string[] vrmaxtiltspec = vr_max_tilt_spec.Split(',');
                string vr_min_tilt_spec = inifile.Class1.ReadIniData("angle_spec", "vr_min_tilt_spec", null, inifilepath);
                string[] vrmintiltspec = vr_min_tilt_spec.Split(',');

                string angle_spec_tilt = inifile.Class1.ReadIniData("angle_spec", "angle_spec_tilt", null, inifilepath);
                string[] anglespectilt = angle_spec_tilt.Split(',');
                angle_max_tilt = getspec(double.Parse(anglespectilt[0]), int.Parse(anglespectilt[1]));
                angle_min_tilt = getspec(double.Parse(anglespectilt[0]), int.Parse(anglespectilt[1]) * (-1));

                clearangle("0210000A000204000000007C94", "0210000A000261F9");
                if (File.Exists(currentPath + "\\vr_tilt.txt") == false)
                    File.Create(currentPath + "\\vr_tilt.txt");
                if (File.Exists(currentPath + "\\resultdata.txt") == false)
                    File.Create(currentPath + "\\resultdata.txt");
                if (File.Exists(currentPath + "\\angle_tilt.txt") == false)
                    File.Create(currentPath + "\\angle_tilt.txt");
                if (File.Exists(currentPath + "\\speed_tilt.txt") == false)
                    File.Create(currentPath + "\\speed_tilt.txt");
                System.Threading.Thread.Sleep(100);
                getvrangledata(currentPath + "\\vr_tilt.txt", currentPath + "\\resultdata.txt", currentPath + "\\angle_tilt.txt", currentPath + "\\speed_tilt.txt", "vrtilt", "02030000000305F8");
                vr_value_tilt = getdata(currentPath + "\\vr_tilt.txt");
                // Array.Reverse(vr_value_tilt);

                vr_max_tilt = vrlimit("60", "930", vr_max_tilt_spec);
                vr_min_tilt = vrlimit("60", "930", vr_min_tilt_spec);
                //  File.WriteAllLines(currentPath + "\\ vr_max_tilt.txt", vr_max_tilt);
                //   File.WriteAllLines(currentPath + "\\vr_min_tilt.txt", vr_min_tilt);   
                //angle_tilt = getangledata(currentPath + "\\angle_tilt.txt");
                angle_tilt = getdata(currentPath + "\\angle_tilt.txt");
                speed_tilt = getdata(currentPath + "\\speed_tilt.txt");

                // vr_value_tilt = getvrdata(currentPath + "\\vr_tilt.txt", "vrtilt");
                // angle_tilt = angledata(currentPath + "\\resultdata.txt", currentPath + "\\angle_tilt.txt", "02030000000305F8");
                // speed_tilt = speeddata(currentPath + "\\resultdata.txt", currentPath + "\\speed_tilt.txt");

                double[] angle_max_tilt_double = ToDoubleArray(angle_max_tilt);
                double[] angle_min_tilt_double = ToDoubleArray(angle_min_tilt);

                double[] angle_tilt_double = ToDoubleArray(angle_tilt);
                double[] speed_tilt_double = ToDoubleArray(speed_tilt);
                double[] vr_value_tilt_double = ToDoubleArray(vr_value_tilt);
                double[] vr_max_tilt_double = ToDoubleArray(vr_max_tilt);
                double[] vr_min_tilt_double = ToDoubleArray(vr_min_tilt);

                toolStripProgressBar1.Value = 6;
                result_compare(vr_value_tilt_double, vr_max_tilt_double, vr_min_tilt_double, "The tilt vr");
                chart6_torque(vr_value_tilt_double, vr_max_tilt_double, vr_min_tilt_double);
                //使用Chart 画 出测试数据的波形图


                result_compare(angle_tilt_double, angle_max_tilt_double, angle_min_tilt_double, "The tilt angle");
                chart4_torque(angle_tilt_double, angle_max_tilt_double, angle_min_tilt_double);
                result_compare(speed_tilt_double, speed_max_double, speed_min_double, "the tilt speed");
                chart5_torque(speed_tilt_double, speed_max_double, speed_min_double);

                toolStripProgressBar1.Value = 7;
                string folderroot = currentPath + "\\backuplog";
                string foldername = DateTime.Now.ToString("yyyyMMddHHmmss");
                Directory.CreateDirectory(folderroot + "\\" + foldername);
                // File.Copy(currentPath + "\\vr_pan.txt", folderroot + "\\" + foldername + "\\vr_pan.txt");
                // File.Copy(currentPath + "\\vr_tilt.txt", folderroot + "\\" + foldername + "\\vr_tilt.txt");
                // File.Copy(currentPath + "\\angle_pan.txt", folderroot + "\\" + foldername + "\\angle_pan.txt");
                // File.Copy(currentPath + "\\angle_tilt.txt", folderroot + "\\" + foldername + "\\angle_tilt.txt");
                // File.Copy(currentPath + "\\speed_tilt.txt", folderroot + "\\" + foldername + "\\speed_tilt.txt");
                //  File.Copy(currentPath + "\\speed_pan.txt", folderroot + "\\" + foldername + "\\speed_pan.txt");

                string[] myrow = File.ReadAllLines(currentPath + "\\row.txt");
                int row = int.Parse(myrow[0]);
                string[] angle_panex = new string[angle_pan.Length + 2];
                angle_panex = extrenarray("angle_pan", sn, angle_pan);
                //string[] writedata = coalescing_array(panstatictorque, tiltstatictorque, panlowspeed, panmediumspeed, panhighspeed, tiltlowspeed, tiltmediumspeed, tilthighspeed);
                int[] col = creatcolumn(angle_panex.Length, 1);

                WriteExcel(currentPath + "\\angle_results.csv", row, col, angle_panex);

                row = row + 1;
                string[] angle_tiltex = new string[angle_tilt.Length + 2];
                angle_tiltex = extrenarray("angle_tilt", sn, angle_tilt);
                WriteExcel(currentPath + "\\angle_results.csv", row, col, angle_tiltex);

                row = row + 1;
                string[] vr_value_panex = new string[vr_value_pan.Length + 2];
                vr_value_panex = extrenarray("vr_value_pan", sn, vr_value_pan);
                WriteExcel(currentPath + "\\angle_results.csv", row, col, vr_value_panex);

                row = row + 1;
                string[] vr_value_tiltex = new string[vr_value_tilt.Length + 2];
                vr_value_tiltex = extrenarray("vr_value_tilt", sn, vr_value_tilt);
                WriteExcel(currentPath + "\\angle_results.csv", row, col, vr_value_tiltex);

                row = row + 2;
                File.WriteAllText(currentPath + "\\row.txt", row.ToString());

                string result_string = result_rtb.Text;

                if (result_string.Contains("FAIL"))
                {
                    result_btn.Text = "FAIL";

                    result_btn.BackColor = Color.Red;

                }
                else
                {
                    result_btn.Text = "PASS";
                    result_btn.BackColor = Color.Green;

                }
            }
            else
            {
                MessageBox.Show("请打开串口");
            }
        }
        public static string[] vrno(int no)
        {
            string[] array = new string[no];
            for (int i = 0; i < no; i++)
            {
                array[i] = (i + 1).ToString();
            }
            return array;
        }
        public static string[] vrlimit(string minvalue, string maxvalue, string limit)
        {

            string[] returnarray = new string[41];
            double num1 = int.Parse(minvalue);
            double num2 = int.Parse(maxvalue);

            double k = (num2 - num1) / 41;
            for (int i = 1; i < 42; i++)
            {

                double num = (k * i) + num1 + double.Parse(limit);
                returnarray[i - 1] = num.ToString();
                //MessageBox.Show(returnarray[i]);
            }
            return returnarray;
        }
        public static string[] getspec(double value, int spec)
        {
            string[] array = new string[40];
            for (int i = 0; i < 40; i++)
            {
                array[i] = (i * value + spec).ToString();
            }
            return array;
        }
        public static string[] getdata(string filepanth)
        {
            string[] recdata = new string[40];
            recdata = File.ReadAllLines(filepanth);
            recdata = recdata.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            return recdata;
        }
        public static string[] getangledata(string filepanth)
        {
            string[] recdata = new string[40];
            string[] data = new string[40];
            recdata = File.ReadAllLines(filepanth);
            recdata = recdata.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            for (int i = 0; i < recdata.Length; i++)
            {
                data[i] = ((Convert.ToDouble(recdata[i])) * 360 / 1024).ToString();

            }
            return data;
        }

        public static void getvrangledata(string vrfilepanth, string anglerecpanth, string angledatapanth, string anglespeedpanth, string vrstr, string anglestr)
        {
            string[] vrdata = new string[41];
            //string[] angledata = new string[41];
            string[] anglerec = new string[41];
            for (int i = 0; i < 41; i++)
            {
                port.Write(vrstr);
                System.Threading.Thread.Sleep(200);
                string vrrecstr = port.ReadLine();

                if (vrrecstr.Length == 0)
                {
                    vrdata[i] = "0";
                }
                else if (vrstr.Contains("UNKNOWN CODE"))
                {
                    vrdata[i] = "2";
                }
                else
                {
                    vrdata[i] = vrrecstr;
                }
                File.WriteAllLines(vrfilepanth, vrdata);


                char hexH;
                char hexL;
                byte recivebyte;
                string anglerecstr = "";

                string datapacket = anglestr;
                byte[] array = HexStringToByteArray(datapacket);
                port1.Write(array, 0, array.Length);


                while (port1.BytesToRead > 0)
                {

                    recivebyte = (byte)port1.ReadByte();

                    hexH = HexChar[recivebyte / 16];
                    hexL = HexChar[recivebyte % 16];
                    anglerecstr += hexH.ToString() + hexL.ToString();
                }

                anglerec[i] = anglerecstr;


            }
            anglerec = anglerec.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            File.WriteAllLines(anglerecpanth, anglerec, Encoding.Default);
            string[] anglerecdata = File.ReadAllLines(anglerecpanth);
            string[] angledata = new string[anglerecdata.Length];
            string[] anglespeed = new string[anglerecdata.Length];
            for (int i = 0; i < angledata.Length; i++)
            {
                string str = anglerecdata[i];

                string str1 = str.Substring(8, 4);
                string str2 = str.Substring(14, 4);
                angledata[i] = (Convert.ToInt32(str1, 16) * 360 / 1024).ToString();
                anglespeed[i] = Convert.ToInt32(str2, 16).ToString();
            }
            for (int i = 0; i < angledata.Length; i++)
            {

                File.WriteAllLines(angledatapanth, angledata, Encoding.Default);
                File.WriteAllLines(anglespeedpanth, anglespeed, Encoding.Default);
            }

        }
        public static void getvrangledata1(string vrfilepanth, string anglerecpanth, string angledatapanth, string anglespeedpanth, string vrstr, string anglestr)
        {
            string[] vrdata = new string[41];
            //string[] angledata = new string[41];
            string[] anglerec = new string[41];
            for (int i = 0; i < 41; i++)
            {
                port.Write(vrstr);
                System.Threading.Thread.Sleep(200);
                string vrrecstr = port.ReadLine();

                if (vrrecstr.Length == 0)
                {
                    vrdata[i] = "0";
                }
                else if (vrstr.Contains("UNKNOWN CODE"))
                {
                    vrdata[i] = "2";
                }
                else
                {
                    vrdata[i] = vrrecstr;
                }
                File.WriteAllLines(vrfilepanth, vrdata);


                char hexH;
                char hexL;
                byte recivebyte;
                string anglerecstr = "";

                string datapacket = anglestr;
                byte[] array = HexStringToByteArray(datapacket);
                port1.Write(array, 0, array.Length);


                while (port1.BytesToRead > 0)
                {

                    recivebyte = (byte)port1.ReadByte();

                    hexH = HexChar[recivebyte / 16];
                    hexL = HexChar[recivebyte % 16];
                    anglerecstr += hexH.ToString() + hexL.ToString();
                }

                anglerec[i] = anglerecstr;


            }
            anglerec = anglerec.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            File.WriteAllLines(anglerecpanth, anglerec, Encoding.Default);
           // string[] anglerecdata = File.ReadAllLines(anglerecpanth);
            string[] angledata = new string[anglerec.Length];
            string[] anglespeed = new string[anglerec.Length];
            for (int i = 0; i < angledata.Length; i++)
            {
                string str = anglerec[i];

                string str1 = str.Substring(8, 4);
                string str2 = str.Substring(14, 4);
                angledata[i] = (Convert.ToInt32(str1, 16) * 360 / 1024).ToString();
                anglespeed[i] = Convert.ToInt32(str2, 16).ToString();
            }
            for (int i = 0; i < angledata.Length; i++)
            {

                File.WriteAllLines(angledatapanth, angledata, Encoding.Default);
                File.WriteAllLines(anglespeedpanth, anglespeed, Encoding.Default);
            }

        }
        //将字符串数组转化成Double 数组 
        public static double[] ToDoubleArray(string[] strarray)
        {

            double[] data = new double[strarray.Length];

            for (int i = 0; i < strarray.Length; i++)
            {

                if (strarray.Length == 0)
                {
                    data[i] = Convert.ToDouble("0");
                }
                else
                {
                    data[i] = Convert.ToDouble(strarray[i]);
                }
            }
            return data;
        }
        //比对三个数组的值大小
        public void result_compare(double[] value1, double[] value2, double[] value3, string returnstr)
        {
            for (int i = 0; i < value1.Length; i++)
            {
                if (value1[i] != 0)
                {

                    if (value1[i] > value2[i])
                    {
                        richshow(returnstr + " Test FAIL", Color.Red);
                        return;
                    }
                    else if (value1[i] < value3[i])
                    {
                        richshow(returnstr + " Test FAIL", Color.Red);
                        return;
                    }
                }
                else
                {
                    //MessageBox.Show("没有抓到数据，舍弃该数据");
                }
            }
            richshow(returnstr + " Test end", Color.GreenYellow);

        }
        //在richbox 显示每一项测试结果
        public void richshow(string context, Color color)
        {
            result_rtb.SelectionColor = color;
            result_rtb.AppendText(context + "\r\n");
        }
        public static string[] getspeedspec(string spec)
        {
            string[] array = new string[40];
            for (int i = 1; i < 41; i++)
            {
                array[i - 1] = spec;
            }
            return array;
        }
        //将字符串转化成16进制
        public static byte[] HexStringToByteArray(string s)
        {
            s = s.Replace(" ", "");
            byte[] buffer = new byte[s.Length / 2];
            for (int i = 0; i < s.Length; i += 2)
                buffer[i / 2] = (byte)Convert.ToByte(s.Substring(i, 2), 16);
            return buffer;
        }
        public static string[] angledata(string filepanth, string filepath2, string command)
        {

            string[] recdata = new string[41];
            for (int j = 0; j < 41; j++)
            {
                char hexH;
                char hexL;
                byte recivebyte;
                string recstr = "";
                string datapacket = command;
                byte[] array = HexStringToByteArray(datapacket);
                port1.Write(array, 0, array.Length);


                while (port1.BytesToRead > 0)
                {
                    recivebyte = (byte)port1.ReadByte();
                    hexH = HexChar[recivebyte / 16];
                    hexL = HexChar[recivebyte % 16];
                    recstr += hexH.ToString() + hexL.ToString();
                }
                // MessageBox.Show(recstr);
                recdata[j] = recstr;

                System.Threading.Thread.Sleep(200);
            }
            recdata = recdata.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            File.WriteAllLines(filepanth, recdata, Encoding.Default);

            string[] angledata = new string[recdata.Length];
            //string[] anglespeed = new string[recdata.Length];
            for (int i = 0; i < recdata.Length; i++)
            {
                string str = recdata[i];
                if (str.Length != 22)
                {
                    str = "0103060000000000002175";
                }
                string str1 = str.Substring(8, 4);
                //string str2 = str.Substring(14, 4);
                angledata[i] = ((Convert.ToInt32(str1, 16)) * 360 / 1024).ToString();
                //anglespeed[i] = Convert.ToInt32(str2, 16).ToString();

            }
            File.WriteAllLines(filepath2, angledata);
            //port.Write("STEPR");
            return angledata;

        }

        private static void clearangle(string command, string command2)
        {
            string[] recdata = new string[2];
            for (int j = 0; j < 2; j++)
            {
                char hexH;
                char hexL;
                byte recivebyte;
                string recstr = "";
                string datapacket = command;
                byte[] array = HexStringToByteArray(datapacket);
                port1.Write(array, 0, array.Length);
                while (port1.BytesToRead > 0)
                {
                    recivebyte = (byte)port1.ReadByte();
                    hexH = HexChar[recivebyte / 16];
                    hexL = HexChar[recivebyte % 16];
                    recstr += hexH.ToString() + hexL.ToString();
                }
                recdata[j] = recstr;
                System.Threading.Thread.Sleep(500);
            }
            recdata = recdata.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            for (int i = 0; i < recdata.Length; i++)
            {
                if (recdata[i] == command2)
                {
                    port1.DiscardInBuffer();
                    port1.DiscardOutBuffer();

                }
            }
        }

        public static string[] speeddata(string filepath, string filepath2)
        {

            //string[] recdata=new string[40];
            //string[] recdata = File.ReadAllLines(filepath);
            String[] recdata = File.ReadAllLines(filepath);
            recdata = recdata.Where(s => !string.IsNullOrEmpty(s)).ToArray();
            string[] speeddata = new string[recdata.Length];
            for (int i = 0; i < recdata.Length; i++)
            {

                string str = recdata[i];
                string str2 = str.Substring(14, 4);

                speeddata[i] = Convert.ToInt32(str2, 16).ToString();
            }
            File.WriteAllLines(filepath2, speeddata);
            return speeddata;
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
        public static int[] creatcolumn(int length, int value)
        {
            int[] column = new int[length];
            for (int i = 0; i < length; i++)
            {
                column[i] = i + value;

            }
            return column;
        }

        public static string[] extrenarray(string exstr, string snnum, string[] array)
        {
            string[] exarray = new string[array.Length + 2];
            exarray[0] = exstr;
            exarray[1] = snnum;
            for (int i = 2; i < exarray.Length; i++)
            {
                exarray[i] = array[i - 2];
            }
            return exarray;
        }

        //private void displaydata_Click(object sender, EventArgs e)
        //{
        //    string password = Interaction.InputBox("请输入密码", "密码", "******", 10, 10);
        //    if (password == "bolide")
        //    {
        //        Form2 frm = new Form2();
        //        frm.Show();
        //    }
        //    else
        //    {
        //        MessageBox.Show("Password Error");
        //    }
        //}
        public void chart1_torque(double[] value1, double[] value2, double[] value3)
        {
            chart1.Series.Clear();
            chart1.BackColor = Color.Transparent;
            chart1.Legends[0].BackColor = Color.Transparent;
            chart1.Legends[0].Enabled = false;
            chart1.ChartAreas[0].AxisX.Minimum = 0;
            chart1.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart1.ChartAreas[0].AxisY.Minimum = 50;
            chart1.ChartAreas[0].AxisY.Maximum = 980;
            chart1.ChartAreas[0].AxisX.Interval = 1;
            chart1.ChartAreas[0].AxisY.Interval = 46.5;
            chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].BackColor = Color.Transparent;
            //chart1.ChartAreas[0].AxisX.Title = "VR曲线图";
            //chart1.ChartAreas[0].AxisX.TitleForeColor = Color.Brown;
            Series series1 = new Series("vrpan");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("vrmax");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("vrmin");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart1.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart1.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart1.Series.Add(series3);
        }
        public void chart2_torque(double[] value1, double[] value2, double[] value3)
        {
            chart2.Series.Clear();
            chart2.BackColor = Color.Transparent;
            chart2.Legends[0].BackColor = Color.Transparent;
            chart2.Legends[0].Enabled = false;
            chart2.ChartAreas[0].AxisX.Minimum = 0;
            chart2.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart2.ChartAreas[0].AxisY.Minimum = 0;
            chart2.ChartAreas[0].AxisY.Maximum = 186;
            chart2.ChartAreas[0].AxisX.Interval = 1;
            chart2.ChartAreas[0].AxisY.Interval = 4.5;
            chart2.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart2.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart2.ChartAreas[0].BackColor = Color.Transparent;

            Series series1 = new Series("angle pan");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("angel max");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("angle min");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart2.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart2.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart2.Series.Add(series3);

        }
        public void chart3_torque(double[] value1, double[] value2, double[] value3)
        {
            chart3.Series.Clear();
            chart3.BackColor = Color.Transparent;
            chart3.Legends[0].BackColor = Color.Transparent;
            chart3.Legends[0].Enabled = false;
            chart3.ChartAreas[0].AxisX.Minimum = 0;
            chart3.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart3.ChartAreas[0].AxisY.Minimum = 0;
            chart3.ChartAreas[0].AxisY.Maximum = 100;
            chart3.ChartAreas[0].AxisX.Interval = 1;
            chart3.ChartAreas[0].AxisY.Interval = 5;
            chart3.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart3.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart3.ChartAreas[0].BackColor = Color.Transparent;

            Series series1 = new Series("angle speed");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("speed max");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("speed min");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart3.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart3.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart3.Series.Add(series3);

        }
        public void chart4_torque(double[] value1, double[] value2, double[] value3)
        {
            chart4.Series.Clear();
            chart4.BackColor = Color.Transparent;
            chart4.Legends[0].BackColor = Color.Transparent;
            chart4.Legends[0].Enabled = false;
            chart4.ChartAreas[0].AxisX.Minimum = 0;
            chart4.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart4.ChartAreas[0].AxisY.Minimum = 0;
            chart4.ChartAreas[0].AxisY.Maximum = 146;
            chart4.ChartAreas[0].AxisX.Interval = 1;
            chart4.ChartAreas[0].AxisY.Interval = 3.5;
            chart4.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart4.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart4.ChartAreas[0].BackColor = Color.Transparent;

            Series series1 = new Series("angle tilt");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("angel max");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("angle min");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart4.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart4.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart4.Series.Add(series3);

        }
        public void chart5_torque(double[] value1, double[] value2, double[] value3)
        {
            chart5.Series.Clear();
            chart5.BackColor = Color.Transparent;
            chart5.Legends[0].BackColor = Color.Transparent;
            chart5.Legends[0].Enabled = false;
            chart5.ChartAreas[0].AxisX.Minimum = 0;
            chart5.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart5.ChartAreas[0].AxisY.Minimum = 0;
            chart5.ChartAreas[0].AxisY.Maximum = 100;
            chart5.ChartAreas[0].AxisX.Interval = 1;
            chart5.ChartAreas[0].AxisY.Interval = 5;
            chart5.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart5.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart5.ChartAreas[0].BackColor = Color.Transparent;

            Series series1 = new Series("tilt speed");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("speed max");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("speed min");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart5.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart5.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart5.Series.Add(series3);

        }
        public void chart6_torque(double[] value1, double[] value2, double[] value3)
        {
            chart6.Series.Clear();
            chart6.BackColor = Color.Transparent;
            chart6.Legends[0].BackColor = Color.Transparent;
            chart6.Legends[0].Enabled = false;
            chart6.ChartAreas[0].AxisX.Minimum = 0;
            chart6.ChartAreas[0].AxisX.Maximum = value2.Length + 1;
            chart6.ChartAreas[0].AxisY.Minimum = 50;
            chart6.ChartAreas[0].AxisY.Maximum = 980;
            chart6.ChartAreas[0].AxisX.Interval = 1;
            chart6.ChartAreas[0].AxisY.Interval = 46.5;
            chart6.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart6.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart6.ChartAreas[0].BackColor = Color.Transparent;
            //chart6.ChartAreas[0].AxisX.Title = "VR曲线图";
            //chart6.ChartAreas[0].AxisX.TitleForeColor = Color.Brown;
            Series series1 = new Series("vrtilt");
            series1.ChartType = SeriesChartType.Spline;
            series1.BorderWidth = 1;
            series1.ShadowOffset = 1;
            series1.Color = Color.Red;
            series1.MarkerStyle = MarkerStyle.Circle;
            series1.MarkerColor = Color.Blue;
            series1.MarkerBorderWidth = 1;
            series1.MarkerSize = 3;
            //series1.IsValueShownAsLabel = true;
            series1.ToolTip = "当前值：#VAL\n 最高值：#MAX\n 最低值：#MIN\n";

            Series series2 = new Series("vrmax");
            series2.ChartType = SeriesChartType.Spline;
            series2.BorderWidth = 1;
            series2.ShadowOffset = 1;
            series2.Color = Color.Black;

            Series series3 = new Series("vrmin");
            series3.ChartType = SeriesChartType.Spline;
            series3.BorderWidth = 1;
            series3.ShadowOffset = 1;
            series3.Color = Color.Black;
            //判断测试值是否超出了limit 范围
            for (int i = 0; i < value1.Length; i++)
            {
                series1.Points.AddY(value1[i]);
            }

            chart6.Series.Add(series1);

            for (int i = 0; i < value2.Length; i++)
            {
                series2.Points.AddY(value2[i]);
            }

            chart6.Series.Add(series2);

            for (int i = 0; i < value3.Length; i++)
            {
                series3.Points.AddY(value3[i]);
            }

            chart6.Series.Add(series3);
        }

        private void displaydata_Click_1(object sender, EventArgs e)
        {
            string password = Interaction.InputBox("请输入密码", "密码", "******", 10, 10);
            if (password == "bolide")
            {
                Form2 frm = new Form2();
                frm.Show();
            }
            else
            {
                MessageBox.Show("Password Error");
            }
        }
    }
    class AutoSizeFormClass //第四种改变程式控件缩放方法
    {
        //(1).声明结构,只记录窗体和其控件的初始位置和大小。
        public struct controlRect
        {
            public int Left;
            public int Top;
            public int Width;
            public int Height;
        }
        //(2).声明 1个对象
        //注意这里不能使用控件列表记录 List nCtrl;，因为控件的关联性，记录的始终是当前的大小。
        //      public List oldCtrl= new List();//这里将西文的大于小于号都过滤掉了，只能改为中文的，使用中要改回西文
        public List<controlRect> oldCtrl = new List<controlRect>();
        int ctrlNo = 0;//1;
        //(3). 创建两个函数
        //(3.1)记录窗体和其控件的初始位置和大小,
        public void controllInitializeSize(Control mForm)
        {
            controlRect cR;
            cR.Left = mForm.Left; cR.Top = mForm.Top; cR.Width = mForm.Width; cR.Height = mForm.Height;
            oldCtrl.Add(cR);//第一个为"窗体本身",只加入一次即可
            AddControl(mForm);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用
            //this.WindowState = (System.Windows.Forms.FormWindowState)(2);//记录完控件的初始位置和大小后，再最大化
            //0 - Normalize , 1 - Minimize,2- Maximize
        }
        private void AddControl(Control ctl)
        {
            foreach (Control c in ctl.Controls)
            {  //**放在这里，是先记录控件的子控件，后记录控件本身
                //if (c.Controls.Count > 0)
                //    AddControl(c);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用
                controlRect objCtrl;
                objCtrl.Left = c.Left; objCtrl.Top = c.Top; objCtrl.Width = c.Width; objCtrl.Height = c.Height;
                oldCtrl.Add(objCtrl);
                //**放在这里，是先记录控件本身，后记录控件的子控件
                if (c.Controls.Count > 0)
                    AddControl(c);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用
            }
        }
        //(3.2)控件自适应大小,
        public void controlAutoSize(Control mForm)
        {
            if (ctrlNo == 0)
            { //*如果在窗体的Form1_Load中，记录控件原始的大小和位置，正常没有问题，但要加入皮肤就会出现问题，因为有些控件如dataGridView的的子控件还没有完成，个数少
                //*要在窗体的Form1_SizeChanged中，第一次改变大小时，记录控件原始的大小和位置,这里所有控件的子控件都已经形成
                controlRect cR;
                //  cR.Left = mForm.Left; cR.Top = mForm.Top; cR.Width = mForm.Width; cR.Height = mForm.Height;
                cR.Left = 0; cR.Top = 0; cR.Width = mForm.PreferredSize.Width; cR.Height = mForm.PreferredSize.Height;

                oldCtrl.Add(cR);//第一个为"窗体本身",只加入一次即可
                AddControl(mForm);//窗体内其余控件可能嵌套其它控件(比如panel),故单独抽出以便递归调用
            }
            float wScale = (float)mForm.Width / (float)oldCtrl[0].Width;//新旧窗体之间的比例，与最早的旧窗体
            float hScale = (float)mForm.Height / (float)oldCtrl[0].Height;//.Height;
            ctrlNo = 1;//进入=1，第0个为窗体本身,窗体内的控件,从序号1开始
            AutoScaleControl(mForm, wScale, hScale);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用
        }
        private void AutoScaleControl(Control ctl, float wScale, float hScale)
        {
            int ctrLeft0, ctrTop0, ctrWidth0, ctrHeight0;
            //int ctrlNo = 1;//第1个是窗体自身的 Left,Top,Width,Height，所以窗体控件从ctrlNo=1开始
            foreach (Control c in ctl.Controls)
            { //**放在这里，是先缩放控件的子控件，后缩放控件本身
                //if (c.Controls.Count > 0)
                //   AutoScaleControl(c, wScale, hScale);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用
                ctrLeft0 = oldCtrl[ctrlNo].Left;
                ctrTop0 = oldCtrl[ctrlNo].Top;
                ctrWidth0 = oldCtrl[ctrlNo].Width;
                ctrHeight0 = oldCtrl[ctrlNo].Height;
                //c.Left = (int)((ctrLeft0 - wLeft0) * wScale) + wLeft1;//新旧控件之间的线性比例
                //c.Top = (int)((ctrTop0 - wTop0) * h) + wTop1;
                c.Left = (int)((ctrLeft0) * wScale);//新旧控件之间的线性比例。控件位置只相对于窗体，所以不能加 + wLeft1
                c.Top = (int)((ctrTop0) * hScale);//
                c.Width = (int)(ctrWidth0 * wScale);//只与最初的大小相关，所以不能与现在的宽度相乘 (int)(c.Width * w);
                c.Height = (int)(ctrHeight0 * hScale);//
                ctrlNo++;//累加序号
                //**放在这里，是先缩放控件本身，后缩放控件的子控件
                if (c.Controls.Count > 0)
                    AutoScaleControl(c, wScale, hScale);//窗体内其余控件还可能嵌套控件(比如panel),要单独抽出,因为要递归调用

                if (ctl is DataGridView)
                {
                    DataGridView dgv = ctl as DataGridView;
                    System.Windows.Forms.Cursor.Current = Cursors.WaitCursor;

                    int widths = 0;
                    for (int i = 0; i < dgv.Columns.Count; i++)
                    {
                        dgv.AutoResizeColumn(i, DataGridViewAutoSizeColumnMode.AllCells);  // 自动调整列宽  
                        widths += dgv.Columns[i].Width;   // 计算调整列后单元列的宽度和                       
                    }
                    if (widths >= ctl.Size.Width)  // 如果调整列的宽度大于设定列宽  
                        dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.DisplayedCells;  // 调整列的模式 自动  
                    else
                        dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;  // 如果小于 则填充  

                    System.Windows.Forms.Cursor.Current = Cursors.Default;
                }
            }


        }
    }
}
