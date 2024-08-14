using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Timers;
using System.Diagnostics;
using System.Threading;

namespace Backup_Tescam_Log
{
    public partial class Form1 : Form
    {
        public string filepath = "c:\\CSV_LOG\\";
        public string Backup_filepath = "C:\\CSV_LOG_backup\\";
        Process process = new Process();
        private const int CP_NOCLOSE_BUTTON = 0x200;
        public Form1()
        {
            InitializeComponent();
            this.ControlBox = false;   // 设置不出现关闭按钮
            timer1.Enabled = true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Thread.Sleep(3000);
            movefile(filepath, Backup_filepath);
             
            DateTime now = DateTime.Now;

            //指定要启动的时间（白班设定为早上07:45）
            DateTime startTime_day = new DateTime(now.Year, now.Month, now.Day, 07, 45, 00);
            if (startTime_day < now)
                startTime_day = startTime_day.AddDays(1); // 若已经过去今天的目标时间，则将其调整到明天
            TimeSpan timeUntilStart = startTime_day - now;
            System.Timers.Timer timer_day = new System.Timers.Timer();
            timer_day.Interval = timeUntilStart.TotalMilliseconds;
            timer_day.Elapsed += OnTimerElapsed_day;
            timer_day.AutoReset = false; // 只触发一次
            timer_day.Enabled = true;

            //指定要启动的时间（夜班设定为19:20）
            DateTime startTime_night = new DateTime(now.Year, now.Month, now.Day, 19, 20, 00);
            if (startTime_night < now)
                startTime_night = startTime_night.AddDays(1); // 若已经过去今天的目标时间，则将其调整到明天
            TimeSpan timeUntilStart_night = startTime_night - now;
            System.Timers.Timer timer_night = new System.Timers.Timer();
            timer_night.Interval = timeUntilStart_night.TotalMilliseconds;
            timer_night.Elapsed += OnTimerElapsed_night;
            timer_night.AutoReset = false; // 只触发一次
            timer_night.Enabled = true;


        }
        public static void movefile(string sourcefilepath,string dstfilepath)
        {
            //string file_name = "";
            if (Directory.Exists(sourcefilepath))
            {
                if (Directory.Exists(dstfilepath))
                {
                    DirectoryInfo directory = new DirectoryInfo(sourcefilepath);
                    FileInfo[] files = directory.GetFiles();
                    for (int i = 0; i < files.Length; i++)
                    {
                        string file_name = files[i].ToString();
                        string currenttime = DateTime.Now.ToString("yyyyMMddHHmmss");

                        if (File.Exists(dstfilepath + file_name))
                        {
                            File.Move(sourcefilepath + file_name, dstfilepath + file_name.Remove(file_name.Length-4) +"_"+ currenttime+".csv");
                        }
                        else
                        {
                            File.Move(sourcefilepath + file_name, dstfilepath + file_name);
                        }
                    }
                    
                }
                else
                {
                    Directory.CreateDirectory(dstfilepath);
                }
            }
        }
        protected override CreateParams CreateParams
        {
            get
            {
                CreateParams myCp = base.CreateParams;
                myCp.ClassStyle = myCp.ClassStyle | CP_NOCLOSE_BUTTON;
                return myCp;
            }
        }
        public static void ontimestart(string filepath, string Backup_filepath)
        {
            DateTime now = DateTime.Now;
            int hour = now.Hour;
            int minute = now.Minute;
            while (true)
            {
                if (hour == 14 && minute == 37)
                {
                    movefile(filepath, Backup_filepath);
                    //TimeSpan timeUntilStart = startTime - now;

                    //System.Timers.Timer timer = new System.Timers.Timer();
                    //timer.Interval = timeUntilStart.TotalMilliseconds;
                    //timer.Elapsed += OnTimerElapsed;
                    //timer.AutoReset = false; // 只触发一次
                    //timer.Enabled = true;

                }
                Thread.Sleep(30000);
                now = DateTime.Now;
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            movefile(filepath, Backup_filepath);
        }
        private void TimeEvent(object source, ElapsedEventArgs e)
        {
            int intHour = e.SignalTime.Hour;

            int intMinute = e.SignalTime.Minute;
            int intSecond = e.SignalTime.Second;

            // 定制时间； 比如 在10：30 ：00 的时候执行某个函数
            int iHour = int.Parse("11");
            int iMinute = int.Parse("36");
            int iSecond = int.Parse("00");
            if (intHour == iHour && intMinute == iMinute && intSecond == iSecond)
            {

                //process.StartInfo.FileName = Directory.GetCurrentDirectory() + "\\" + filename_textbox.Text;

                // 设置其他参数（如命令行参数、工作目录等）
                process.StartInfo.Arguments = "";
                process.StartInfo.WorkingDirectory = "";

                // 开始运行外部程序
                process.Start();

                // 等待外部程序结束后获取返回值或输出信息
                //int exitCode = process.ExitCode;
                //string output = process.StandardOutput.ReadToEnd();

                // 关闭进程
                process.Close();

            }

        }
        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void OnTimerElapsed_day(object sender, ElapsedEventArgs e)
        {
            // 在此处编写需要在特定时间启动的代码
            //MessageBox.Show(DateTime.Now.ToString());
            //Console.WriteLine("现在是 " + DateTime.Now.ToString());
            movefile(filepath, Backup_filepath);
        }
        private void OnTimerElapsed_night(object sender, ElapsedEventArgs e)
        {
            // 在此处编写需要在特定时间启动的代码
            //MessageBox.Show(DateTime.Now.ToString());
            //Console.WriteLine("现在是 " + DateTime.Now.ToString());
            movefile(filepath, Backup_filepath);
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            //movefile(filepath, Backup_filepath);
        }
    }
}
