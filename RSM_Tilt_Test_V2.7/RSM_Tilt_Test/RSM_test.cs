using AF;
using log4net;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace RSM_Tilt_Test
{
    public class RSM_test
    {
        private ILog m_log = LogManager.GetLogger("log");
        public MainWindow mainWindow;
        private static SerialPort s_port = new SerialPort();
        private bool nexttest = true;
        private String COM = WRConfig.GetValue("COM");
        private string BaudRate = WRConfig.GetValue("BaudRate");
        private volatile bool rsmSucc = false;
        private volatile bool tiltSucc = false;
        private volatile bool manualStopFlag = false;
        //public volatile bool isAllowSendNextMeasureCmd = true;
        public bool isAllowSendNextMeasureCmd = true;
        private volatile int CurrtiltDiff1, CurrtiltDiff2, CurrtiltDiff3, CurrtiltDiff4, CurrtiltDiff5 = 0;
        private volatile int CurrDiff1 = 0;
        private volatile int CurrDiff2 = 0;
        private volatile int CurrDiff3 = 0;
        private volatile int CurrDiff4 = 0;
        private volatile int CurrDiff5 = 0;
        private string TestRes = "Fail"; // PASS or FAIL
        private SolidColorBrush blue = new SolidColorBrush(Colors.Blue);
        private SolidColorBrush green = new SolidColorBrush(Colors.Green);
        private SolidColorBrush red = new SolidColorBrush(Colors.Red);
        private Uri iconUri1 = null;
        private Uri iconUri2 = null;
        private FileINI interactWithUTSFileIniObj;
        private int succ_times = 0;
        private string testend = "";
        public string  starttestflag = "";
        double corner_UP_spec, corner_Lower_spec, center_UP_spec, center_Lower_spec;
        double corner_UP = Convert.ToDouble(WRConfig.GetValue("corner_UP"));
        double corner_Lower = Convert.ToDouble(WRConfig.GetValue("corner_Lower"));
        double corner_recheck_UP = Convert.ToDouble(WRConfig.GetValue("corner_recheck_UP"));
        double corner_recheck_Lower = Convert.ToDouble(WRConfig.GetValue("corner_recheck_Lower"));
        double center_UP = Convert.ToDouble(WRConfig.GetValue("center_UP"));
        double center_Lower = Convert.ToDouble(WRConfig.GetValue("center_Lower"));
        double scale = Convert.ToInt32(WRConfig.GetValue("scale_spec"));
        double center_recheck_UP = Convert.ToInt32(WRConfig.GetValue("center_recheck_UP"));
        double center_recheck_Lower = Convert.ToInt32(WRConfig.GetValue("center_recheck_Lower"));
        double corner_tilt = Convert.ToInt32(WRConfig.GetValue("corner_tilt"));
        double center_tilt = Convert.ToInt32(WRConfig.GetValue("center_tilt"));

        //double min = -100;
        //double max = 100;
        //int scale = 10000;
        //private FileINI interactWithUTSFileIniObj;


        public RSM_test()//Main test 
        {

            interactWithUTSFileIniObj = new FileINI(@".\interactionwithUTS.ini");
            //starttestflag = interactWithUTSFileIniObj.ReadIni("MeasureTest", "StartTest", 1000);       
          
            //skip for try on 2022/6/3
            
            bool com_init = inital_comport();//inital com port of RSM equipment
               
            if (com_init)
            {
                //this.mainWindow.Timelabel.Content = "Start test";
                TimeSpan PortNoResponseTimeOut = TimeSpan.FromSeconds(5);
                DateTime LastRequestTime = DateTime.Now;
                DateTime startTime = DateTime.Now;

                byte[] remoteCmdDate = { 0x02, 0x41, 0x03, 0x42 };
                byte[] stopCmdDate = { 0x02, 0x42, 0x03, 0x41 };
                byte[] queryCmdData = { 0x02, 0x44, 0x03, 0x47 };
                byte[] measureCmdData = { 0x02, 0x48, 0x03, 0x4B };


                //s_port.Write(remoteCmdDate, 0, remoteCmdDate.Length);
                //s_port.Write(stopCmdDate, 0, stopCmdDate.Length);

                s_port.Write(measureCmdData, 0, measureCmdData.Length);
                s_port.Write(queryCmdData, 0, queryCmdData.Length);
                //s_port.Write(remoteCmdDate, 0, remoteCmdDate.Length);
                //send_query_RSM();

                //start query data from RSM equipment by COM port  
                Thread QueryProcess = new Thread(() => DataReceived(mainWindow));
                while ((QueryProcess.ThreadState & (ThreadState.Unstarted | ThreadState.Stopped)) != 0)
                {
                    QueryProcess = new Thread(() => DataReceived(mainWindow));
                    QueryProcess.Start();
                }

            }
            

        }





        public void SetMainWindow(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;
        }
        public void ManualStop()
        {
            manualStopFlag = true;
            close_app();
        }
        private void DataReceived_try(MainWindow mainWindow)
        {

            try
            {
                while (isAllowSendNextMeasureCmd && testend != "RSM_End")

                {

                    this.mainWindow.Dispatcher.Invoke(new Action(() =>
                    {              
                        string strRead = "\u000219.1515,19.1580,19.1540,19.1510,19.1560,0.0015,0.0080,0.0040,0.0010,0.0060\u0019\u0003\u0004";
                        string strdate = strRead.Substring(0, (strRead.IndexOf("\u0019") + 2));
                        // string strdate = strRead.Substring(0, (n + 5));
                        m_log.Info("received com data data string: " + strdate);
                        calculate_result(strdate, isAllowSendNextMeasureCmd);
                        //skip for try on 2022/06/03
                        //Thread.Sleep(100);
                        /*
                        int length = s_port.BytesToRead;
                        if (length >= 80)
                        {
                            //string result = "";
                            byte[] recData = new byte[length];

                            s_port.Read(recData, 0, length);

                            string strRead = System.Text.Encoding.Default.GetString(recData).Trim().ToString();

                            // int n = strRead.IndexOf("\u0003");

                            if (length == 80)
                            {
                                //string strdate = strRead.Substring(0, (n + 5));
                                m_log.Info("received com data string: " + strRead);
                                calculate_result(strRead, isAllowSendNextMeasureCmd);
                            }
                            else
                            {
                                string strdate = strRead.Substring(0, (strRead.IndexOf("\u0019") + 2));
                                // string strdate = strRead.Substring(0, (n + 5));
                                m_log.Info("received com data data string: " + strdate);
                                calculate_result(strdate, isAllowSendNextMeasureCmd);
                            }

                            //string str_receive = "\u000219.1515,19.1570,19.1550,19.1505,19.1560,0.0015,0.0070,0.0050,0.0005,0.0060\u0019\u0003\n\u000219.1510,19.1570,19.1535,19.1510,19.1570,0.0010,0.0070,0.0035,0.0010,0.0070\u0019\u0003\n\u000219.1515,19.1575,19.1540,19.1515,19.1570,0.0015,0.0075,0.0040,0.0015,0.0070\u0019\u0003\n\u000219.1520,19.1575,19.1540,19.1495,19.1565,0.0020,0.0075,0.0040,-0.0005,0.0065\u0019\u0003/\u000219.1520,19.1570,19.1540,19.1510,19.1560,0.0020,0.0070,0.0040,0.0010,0.0060\u0019\u0003\n\u000219.1520,19.1565,19.1540,19.1510,19.1565,0.0020,0.0065,0.0040,0.0010,0.0065\u0019\u0003\n\u000219.1515,19.1570,19.1540,19.1510,19.1565,0.0015,0.0070,0.0040,0.0010,0.0065\u0019\u0003\n\u000219.1515,19.1575,19.1540,19.1515,19.1570,0.0015,0.0075,0.0040,0.0015,0.0070\u0019\u0003\n\u000219.1515,19.1575,19.1540,19.1505,19.1565,0.0015,0.0075,0.0040,0.0005,0.0065\u0019\u0003\n\u000219.1520,19.1570,19.1540,19.1510,19.1570,0.0020,0.0070,0.0040,0.0010,0.0070\u0019\u0003\n\u000219.1510,19.1575,19.1535,19.1505,19.1570,0.0010,0.0075,0.0035,0.0005,0.0070\u0019\u0003\n\u000219.1515,19.1575,19.1540,19.1520,19.1570,0.0015,0.0075,0.0040,0.0020,0.0070\u0019\u0003\n\u000219.1515,19.1575,19.1535,19.1495,19.1565,0.0015,0.0075,0.0035,-0.0005,0.0065\u0019\u0003/\u000219.1510,19.1570,19.1540,19.1505,19.1565,0.0010,0.0070,0.0040,0.0005,0.0065\u0019\u0003\n\u000219.1515,19.1570,19.1540,19.1505,19.1560,0.0015,0.0070,0.0040,0.0005,0.0060\u0019\u0003\n\u000219.1515,19.1580,19.1540,19.1510,19.1560,0.0015,0.0080,0.0040,0.0010,0.0060\u0019\u0003";

                            /*
                            bool isContain = outoffspec(strRead);
                            Paras paras_data = ReadoutPara(strRead);
                            afSucc = IsAFSucc(paras_data);//判断出来数据结果是否PASS
                            isAllowSendNextMeasureCmd = true;
                            updateUI(paras_data, isContain);
                            */
                        //this.mainWindow.textBox.Text = strRead;

                        //recData = null;
                        //}


                    }), DispatcherPriority.SystemIdle);
                }
            }
            catch (Exception e)
            {
                m_log.Info("Exception" + e.ToString());
            }


        }
        private void DataReceived(MainWindow mainWindow)
        {

            try
            {
                while (isAllowSendNextMeasureCmd && testend!= "RSM_End")
            
                {
                    
                    this.mainWindow.Dispatcher.Invoke(new Action(() =>
                    {                      
                        int length = s_port.BytesToRead;
                        if (length >= 80)
                        {
                            byte[] recData = new byte[length];
                            s_port.Read(recData, 0, length);
                            string strRead = System.Text.Encoding.Default.GetString(recData).Trim().ToString();
                            m_log.Info("com_data_string:" + strRead + "; Length:" + strRead.Length.ToString());
                            if (length >= 80 && length <=82)
                            {                               
                                calculate_result(strRead, isAllowSendNextMeasureCmd);
                            }
                            else
                            {
                                string strdate = strRead.Substring(0, (strRead.IndexOf("\u0019") + 2));
                                m_log.Info("com_data_string++: " + strdate);
                                calculate_result(strdate, isAllowSendNextMeasureCmd);
                            }
                            recData = null;
                        }
                    }), DispatcherPriority.SystemIdle);
                }
            }
            catch (Exception e)
            {
                m_log.Info("Exception"+e.ToString());
            }


        }
        public void calculate_result(string message,bool isAllowSendNextMeasureCmd)
        { //message = "19.1585,19.1760,19.1680,19.1610,19.1770,0.0085,0.0260,0.0180,0.0110,0.0270";
            //m_log.Info("Receve COM message:" + message);
            if (isAllowSendNextMeasureCmd)
            {
                bool isContain = outoffspec(message);
                if (rsmSucc == false)
                {
                    center_UP_spec = center_UP;
                    center_Lower_spec = center_Lower;
                    corner_UP_spec = corner_UP;
                    corner_Lower_spec = corner_Lower;
                }

                Paras paras_data = ReadoutPara(message);
                
               
                this.mainWindow.label_Copy4.Content = center_UP_spec.ToString()+"/-"+center_Lower_spec.ToString();
                //this.mainWindow.label_Copy4.Content = "+/-" + center.ToString();
                this.mainWindow.label_Copy.Content = "+/-" + corner_UP_spec.ToString();
                this.mainWindow.label_Copy1.Content = "+/-" + corner_UP_spec.ToString();
                this.mainWindow.label_Copy2.Content = "+/-" + corner_UP_spec.ToString();
                this.mainWindow.label_Copy3.Content = "+/-" + corner_UP_spec.ToString();

                if (paras_data != null)
                {
                    Defocus defcous_data = GetDefocus(paras_data);
                    rsmSucc = IsAFSucc(paras_data);//判断出来数据结果是否PASS
                    m_log.Info("record test data check:" + rsmSucc.ToString());
                    tiltSucc = IsTiltSucc(defcous_data,paras_data);
                    m_log.Info("record tiltSucc check:" + tiltSucc.ToString());
                    //isAllowSendNextMeasureCmd = true;
                    //updateUI(paras_data, isContain,rsmSucc,defcous_data);
                    updateUItilt(paras_data, isContain, tiltSucc, defcous_data);
                    if (tiltSucc)//rsmSucc改为tiltSucc
                    {
                        corner_UP_spec = corner_recheck_UP;
                        corner_Lower_spec = corner_recheck_Lower;
                        center_UP_spec = center_recheck_UP;
                        center_Lower_spec = center_recheck_Lower;
                        //center = center+center_offset;
                        //corner = corner + corner_offset;
                        this.mainWindow.label_Copy4.Content = center_UP_spec.ToString() + "/-" + center_Lower_spec.ToString();
                        this.mainWindow.label_Copy.Content = "+/-" + corner_UP_spec.ToString();
                        this.mainWindow.label_Copy1.Content= "+/-" + corner_UP_spec.ToString();
                        this.mainWindow.label_Copy2.Content= "+/-" + corner_UP_spec.ToString();
                        this.mainWindow.label_Copy3.Content= "+/-" + corner_UP_spec.ToString();
                        this.mainWindow.Timelabel.Content = "Reheck";
                        this.mainWindow.Timelabel.Foreground = new SolidColorBrush(Color.FromArgb(0xff, 0x26, 0x04, 0xf9));
                        this.mainWindow.Timelabel.FontSize = 25;
                        this.mainWindow.Timelabel.FontWeight = FontWeights.Bold;

                        succ_times += 1;
                        m_log.Info("Test success loop times:" + succ_times.ToString());
                        this.mainWindow.image_1.Source = null;
                        this.mainWindow.image_2.Source = null;
                        this.mainWindow.image_3.Source = null;
                    }
                    else
                    {
                        succ_times = 0;
                    }
                    if (succ_times ==5)
                    {
                        MessageBox.Show("Tilt recheck PASS,请移走螺丝刀");
                    }
                    if (succ_times >6)
                    {
                        string res = rsmSucc ? "1" : "0";
                        isAllowSendNextMeasureCmd = false;
                        this.mainWindow.image_1.Source = null;
                        this.mainWindow.image_2.Source = null;
                        this.mainWindow.image_3.Source = null;
                        m_log.Info("write test log to interactionwithUTS.ini");
                        interactWithUTSFileIniObj.WriteIni("MeasureTest", "TestFinished", "1", 1000);
                        interactWithUTSFileIniObj.WriteIni("MeasureTest", "TestResult", res, 1000);//write test result to interactionwithUTS
                        string resData = CurrDiff1 + ";" + CurrDiff2 + ";" + CurrDiff3 + ";" + CurrDiff4 + ";" + CurrDiff5;//update by v1.3
                                                                                                                           //string resData = CurrDiff1 + "," + CurrDiff2 + "," + CurrDiff3 + "," + CurrDiff4 + "," + CurrDiff5;
                        interactWithUTSFileIniObj.WriteIni("TestData", "Diff", resData, 1000);
                        testend = "RSM_End";
                        this.mainWindow.Timelabel.Content = "Test end";
                        this.mainWindow.Timelabel.Foreground = new SolidColorBrush(Color.FromArgb(0xff, 0x05, 0x81, 0x05));
                        this.mainWindow.Timelabel.FontSize = 25;
                        this.mainWindow.Timelabel.FontWeight = FontWeights.Bold;
                        close_app();
                    }

                }
                else
                    m_log.Error("Incorrect format!");
            }
            else
            {

            }
        }
        private bool IsTiltSucc(Defocus defocus,Paras para)
        {
            if (defocus == null)
                return false;
            CurrDiff1 = (int)Math.Round(para.Diff1 * scale, MidpointRounding.AwayFromZero);
            CurrDiff2 = (int)Math.Round(para.Diff2 * scale, MidpointRounding.AwayFromZero);
            CurrDiff3 = (int)Math.Round(para.Diff3 * scale, MidpointRounding.AwayFromZero);
            CurrDiff4 = (int)Math.Round(para.Diff4 * scale, MidpointRounding.AwayFromZero);
            CurrDiff5 = (int)Math.Round(para.Diff5 * scale, MidpointRounding.AwayFromZero);
            CurrtiltDiff1 = (int)Math.Round(defocus.Def1 * scale, MidpointRounding.AwayFromZero);
            CurrtiltDiff2 = (int)Math.Round(defocus.Def2 * scale, MidpointRounding.AwayFromZero);
            CurrtiltDiff3 = (int)Math.Round(defocus.Def3 * scale, MidpointRounding.AwayFromZero);
            CurrtiltDiff4 = (int)Math.Round(defocus.Def4 * scale, MidpointRounding.AwayFromZero);
            CurrtiltDiff5 = (int)Math.Round(defocus.Def5 * scale, MidpointRounding.AwayFromZero);
            if ( CurrtiltDiff1 > (-1) * corner_tilt && CurrtiltDiff1 < corner_tilt
                && CurrtiltDiff2 > (-1) * corner_tilt && CurrtiltDiff2 < corner_tilt
                && CurrtiltDiff4 > (-1) * corner_tilt && CurrtiltDiff4 < corner_tilt
                && CurrtiltDiff5 > (-1) * corner_tilt && CurrtiltDiff5 < corner_tilt
                && CurrDiff1 > (-1) * corner_Lower_spec && CurrDiff1 < corner_UP_spec
                && CurrDiff2 > (-1) * corner_Lower_spec && CurrDiff2 < corner_UP_spec
                && CurrDiff3 > (-1) * center_Lower_spec && CurrDiff3 < center_UP_spec
                && CurrDiff4 > (-1) * corner_Lower_spec && CurrDiff4 < corner_UP_spec
                && CurrDiff5 > (-1) * corner_Lower_spec && CurrDiff5 < corner_UP_spec
                )
                return true;
            else
                return false;
        }
        private bool IsAFSucc(Paras para)
        {
            //double min = -100;
            //double max = 100;
            //int scale = 10000;
            if (para == null)
                return false;
            CurrDiff1 = (int)Math.Round(para.Diff1 * scale, MidpointRounding.AwayFromZero);
            CurrDiff2 = (int)Math.Round(para.Diff2 * scale, MidpointRounding.AwayFromZero);
            CurrDiff3 = (int)Math.Round(para.Diff3 * scale, MidpointRounding.AwayFromZero);
            CurrDiff4 = (int)Math.Round(para.Diff4 * scale, MidpointRounding.AwayFromZero);
            CurrDiff5 = (int)Math.Round(para.Diff5 * scale, MidpointRounding.AwayFromZero);
            if (CurrDiff1 > (-1)* corner_Lower_spec && CurrDiff1 < corner_UP_spec
               && CurrDiff2 > (-1) * corner_Lower_spec && CurrDiff2 < corner_UP_spec
               //&& CurrDiff3 > (min+60) && CurrDiff3 < (max-60)
               && CurrDiff3 > (-1)* center_Lower_spec && CurrDiff3 < center_UP_spec
               && CurrDiff4 > (-1) * corner_Lower_spec && CurrDiff4 < corner_UP_spec
               && CurrDiff5 > (-1) * corner_Lower_spec && CurrDiff5 < corner_UP_spec)
                return true;
            else
                return false;
            //if (CurrDiff1 > min && CurrDiff1 < max
            //    && CurrDiff2 > min && CurrDiff2 < max
            //    && CurrDiff3 > min && CurrDiff3 < max
            //    && CurrDiff4 > min && CurrDiff4 < max
            //    && CurrDiff5 > min && CurrDiff5 < max)
            //    return true;
            //else
            //    return false;
        }
        public byte[] CommandCheck(string strCMD, string endstr)
        {
            List<byte> testCMD = new List<byte>();
            byte[] byteArray = null;
            byteArray = System.Text.Encoding.ASCII.GetBytes(strCMD.Trim().ToString());

            foreach (byte item in byteArray)
            {
                testCMD.Add(item);
            }
            if (endstr.Trim().ToString().Length != 0)
            {
                string[] subendstr = endstr.Trim().ToString().Split(' ');
                foreach (string substr in subendstr)
                {
                    byte bend = Convert.ToByte(substr, 16);
                    testCMD.Add(bend);
                }
            }
            //sp.Write(byteArray, 0, byteArray.Length);
            return testCMD.ToArray();
        }
        private Defocus GetDefocus(Paras para)
        {
            Defocus d = new Defocus();
            double max_value = 0;

            double val = Math.Abs(para.Diff1);
            if (val > Math.Abs(max_value))
            {
                max_value = para.Diff1;
            }
            val = Math.Abs(para.Diff2);
            if ( val> Math.Abs(max_value))
            {
                max_value = para.Diff2;
            }
            val = Math.Abs(para.Diff4);
            if (val > Math.Abs(max_value))
            {
                max_value = para.Diff4;
            }
            val = Math.Abs(para.Diff5);
            if (val > Math.Abs(max_value))
            {
                max_value = para.Diff5;
            }
            m_log.Info("defoucs Max value="+(max_value*10000).ToString());
            d.Def1 = para.Diff1 - max_value;
            d.Def2 = para.Diff2 - max_value;
            d.Def3 = para.Diff3 - max_value;
            d.Def4 = para.Diff4 - max_value;
            d.Def5 = para.Diff5 - max_value;
            return d;


        }
        private Paras ReadoutPara(string comMess)
        {
            //string s = "19.1630,19.1645,19.1615,19.1610,19.1620,0.0130,0.0145,0.0115,0.0110,0.012019.1635,19.1640,19.1620,19.1610,19.1610,0.0135,0.0140,0.0120,0.0110,0.0110";
            //bool isContain = comMess.Contains("-88.88");
            //if (String.IsNullOrEmpty(comMess))
            //{
            //    m_log.Error("COM message is empty");
            //    return null;
            //}
            char stx = (char)0x2;
            char c1 = (char)0x3;
            char c2 = (char)0x19;
            char end = '\b';
            char ack = (char)0x6;
            char nak = (char)0x15;
            bool f1 = comMess[0] == stx || comMess[0] == ack || comMess[0] == nak;
            bool f2 = comMess.Contains(c1);
            if (!(f1 && f2))
            {
                m_log.Error("COM message not start with STX,or end with ETX");
                return null;
            }

            comMess = comMess.Substring(0, comMess.LastIndexOf(c1));
            comMess = comMess.Replace(stx, ' ');
            comMess = comMess.Replace(c1, ' ');
            comMess = comMess.Replace(c2, ' ');
            comMess = comMess.Replace(end, ' ');
            comMess = comMess.Replace(ack, ' ');
            comMess = comMess.Replace(nak, ' ');
            comMess = comMess.Trim();

            String[] tokens = comMess.Split(',');
            if (tokens.Length < 10)
            {
                m_log.Error("the tokens of value less than 10");
                return null;
            }

            Paras p = new Paras();
            double val = 0;
            Double.TryParse(tokens[0], out val);
            p.Val1 = val;
            val = 0;

            Double.TryParse(tokens[1], out val);
            p.Val2 = val;
            val = 0;

            Double.TryParse(tokens[2], out val);
            p.Val3 = val;
            val = 0;

            Double.TryParse(tokens[3], out val);
            p.Val4 = val;
            val = 0;

            Double.TryParse(tokens[4], out val);
            p.Val5 = val;
            val = 0;

            Double.TryParse(tokens[5], out val);
            p.Diff1 = val;
            val = 0;

            Double.TryParse(tokens[6], out val);
            p.Diff2 = val;
            val = 0;

            Double.TryParse(tokens[7], out val);
            p.Diff3 = val;
            val = 0;

            Double.TryParse(tokens[8], out val);
            p.Diff4 = val;
            val = 0;

            Double.TryParse(tokens[9], out val);
            p.Diff5 = val;
            val = 0;

            return p;
        }
        private bool outoffspec(string data)
        {
            bool check_result = data.Contains("-88.88");
            this.mainWindow.Dispatcher.Invoke(new Action(() =>
            {
                //this.mainWindow.label_1.Content = Math.Round(paras.val1 * scale, MidpointRounding.AwayFromZero);
                //this.mainWindow.label_2.Content = Math.Round(paras.val2 * scale, MidpointRounding.AwayFromZero);
                //this.mainWindow.textBox1.Text = "Outoff spec";
            }), DispatcherPriority.SystemIdle);
            return check_result;
        }
        private bool inital_comport()
        {
            bool com_initial = false;
            string[] ports_list = System.IO.Ports.SerialPort.GetPortNames();

            foreach (string sName in ports_list)
            {
                if (sName==COM)
                {
                    s_port.PortName = COM;
                    m_log.Info("Found COM port " + sName);
                    try
                    {
                        if (s_port.IsOpen == (true))
                        {
                        }
                        else
                        {
                            //s_port.PortName = COM;
                            s_port.BaudRate = Convert.ToInt32(BaudRate);
                            s_port.DataBits = 8;
                            s_port.Parity = Parity.None;
                            s_port.Handshake = Handshake.None;
                            s_port.StopBits = StopBits.One;
                            s_port.Open();
                            m_log.Info("Serial Port IsOpen " + s_port.IsOpen);
                            //m_log.Info("Serial Port CanRead " + s_port.CanRead);
                            m_log.Info("Serial Port ReadBufferSize " + s_port.ReadBufferSize);
                            com_initial = true;
                        }
                    }
                    catch (Exception e)
                    {
                        m_log.Info("Initial COM port " + e.ToString());
                    }
                    return com_initial;
                    
                }
                m_log.Info("Not Found COM port " + COM);
                MessageBox.Show("请检查串口设置");
                continue;
            }
           
            return com_initial;

        }

        public void send_query_RSM()
        {
            //send query command to RSM equipment by COM port
            
            bool send_query = false;
            do
            {
                byte[] measureCmdData = { 0x02, 0x48, 0x03, 0x4B };
                byte[] queryCmdData = { 0x02, 0x44, 0x03, 0x47 };
                byte[] remoteCmdDate = { 0x02, 0x41, 0x03, 0x42};
                try
                {
                    
                    s_port.Write(measureCmdData, 0, measureCmdData.Length);
                    s_port.Write(queryCmdData, 0, queryCmdData.Length);
                    s_port.Write(remoteCmdDate, 0, remoteCmdDate.Length);
                    send_query = true;
                }
                catch (Exception e)
                {
                    m_log.Info("Exception" + e.ToString());
                    MessageBox.Show("请按RSM仪器上的Start 按钮开始测试");
                    close_app();
                }

            } while (send_query == false);
            
        }

        public void updateUI(Paras paras, bool outoffspec, bool isPass, Defocus defocus)
        {
            //double min = -100;
            //double max = 100;
            //int scale = 10000;
            this.mainWindow.Dispatcher.Invoke(new Action(() =>
            {

                this.mainWindow.label_posi1_value.Content = Math.Round(paras.Diff1 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi2_value.Content = Math.Round(paras.Diff2 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi3_value.Content = Math.Round(paras.Diff3 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi4_value.Content = Math.Round(paras.Diff4 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi5_value.Content = Math.Round(paras.Diff5 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi1_value.Content = Math.Round(defocus.Def1 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi2_value.Content = Math.Round(defocus.Def2 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi3_value.Content = Math.Round(defocus.Def3 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi4_value.Content = Math.Round(defocus.Def4 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi5_value.Content = Math.Round(defocus.Def5 * scale, MidpointRounding.AwayFromZero);

                bool f1 = (-1) * corner_Lower_spec < paras.Diff1 * scale && paras.Diff1 * scale < corner_UP_spec;
                if (f1)
                    RefreshBtnColor(this.mainWindow._btn_Posi1, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi1, System.Windows.Media.Brushes.Red);
                }

                bool f2 = (-1) * corner_Lower_spec < paras.Diff2 * scale && paras.Diff2 * scale < corner_UP_spec; ;
                if (f2)
                    RefreshBtnColor(this.mainWindow._btn_Posi2, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi2, System.Windows.Media.Brushes.Red);
                }
                bool f3 = (-1) * center_Lower_spec < paras.Diff3 * scale && paras.Diff3 * scale < center_UP_spec; ;
                if (f3)
                    RefreshBtnColor(this.mainWindow._btn_Posi3, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi3, System.Windows.Media.Brushes.Red);
                }

                bool f4 = (-1) * corner_Lower_spec < paras.Diff4 * scale && paras.Diff4 * scale < corner_UP_spec; ;
                if (f4)
                    RefreshBtnColor(this.mainWindow._btn_Posi4, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi4, System.Windows.Media.Brushes.Red);
                }

                bool f5 = (-1) * corner_Lower_spec < paras.Diff5 * scale && paras.Diff5 * scale < corner_UP_spec; ;
                if (f5)
                    RefreshBtnColor(this.mainWindow._btn_Posi5, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi5, System.Windows.Media.Brushes.Red);
                }

                //outoff spec label display
                if (outoffspec)
                {
                    this.mainWindow.labelOutRange.Visibility = Visibility.Visible;
                }
                else
                {
                    this.mainWindow.labelOutRange.Visibility = Visibility.Hidden;
                    int cornerIndex = GetMaxDiffPosiIndex(paras);
                    RefreshPic(cornerIndex, paras);
                }

                TestRes = isPass ? "PASS" : "FAIL";//判断测试结果是PASS还是Fail
                //显示测试结果的Label
                this.mainWindow.label_test_res.Content = TestRes;
                this.mainWindow.label_test_res.Foreground = isPass ? green : red;
                this.mainWindow.Background = new SolidColorBrush(Color.FromArgb(0xff, 0xe9, 0xf5, 0xf0));
            }), DispatcherPriority.SystemIdle);
        }
        public void updateUItilt(Paras paras, bool outoffspec,bool isPass,Defocus defocus)
        {
            //double min = -100;
            //double max = 100;
            //int scale = 10000;
            this.mainWindow.Dispatcher.Invoke(new Action(() =>
            {

                this.mainWindow.label_posi1_value.Content = Math.Round(paras.Diff1 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi2_value.Content = Math.Round(paras.Diff2 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi3_value.Content = Math.Round(paras.Diff3 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi4_value.Content = Math.Round(paras.Diff4 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.label_posi5_value.Content = Math.Round(paras.Diff5 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi1_value.Content = Math.Round(defocus.Def1*scale,MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi2_value.Content = Math.Round(defocus.Def2 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi3_value.Content = Math.Round(defocus.Def3 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi4_value.Content = Math.Round(defocus.Def4 * scale, MidpointRounding.AwayFromZero);
                this.mainWindow.Defocus_posi5_value.Content = Math.Round(defocus.Def5 * scale, MidpointRounding.AwayFromZero);

                bool f1 = (-1) * corner_Lower_spec < defocus.Def1 * scale && defocus.Def1 * scale < corner_UP_spec;
                if (f1)
                    RefreshBtnColor(this.mainWindow._btn_Posi1, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi1, System.Windows.Media.Brushes.Red);
                }

                bool f2 = (-1) * corner_Lower_spec < defocus.Def2 * scale && defocus.Def2 * scale < corner_UP_spec; ;
                if (f2)
                    RefreshBtnColor(this.mainWindow._btn_Posi2, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi2, System.Windows.Media.Brushes.Red);
                }
                //bool f3 = (-1)* center_Lower_spec < defocus.Def3 * scale && defocus.Def3 * scale < center_UP_spec; ;
                //if (f3)
                //    RefreshBtnColor(this.mainWindow._btn_Posi3, System.Windows.Media.Brushes.Green);
                //else
                //{
                //    RefreshBtnColor(this.mainWindow._btn_Posi3, System.Windows.Media.Brushes.Red);
                //}

                bool f4 = (-1) * corner_Lower_spec < defocus.Def4 * scale && defocus.Def4* scale < corner_UP_spec; ;
                if (f4)
                    RefreshBtnColor(this.mainWindow._btn_Posi4, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi4, System.Windows.Media.Brushes.Red);
                }

                bool f5 = (-1) * corner_Lower_spec < defocus.Def5 * scale && defocus.Def5* scale < corner_UP_spec; ;
                if (f5)
                    RefreshBtnColor(this.mainWindow._btn_Posi5, System.Windows.Media.Brushes.Green);
                else
                {
                    RefreshBtnColor(this.mainWindow._btn_Posi5, System.Windows.Media.Brushes.Red);
                }

                //outoff spec label display
                if (outoffspec)
                {
                    this.mainWindow.labelOutRange.Visibility = Visibility.Visible;
                }
                else
                {
                    this.mainWindow.labelOutRange.Visibility = Visibility.Hidden;
                    int cornerIndex = GetMaxDiffPosiIndex(paras);
                    RefreshPic(cornerIndex, paras);
                }                    
              
                TestRes = isPass ? "PASS" : "FAIL";//判断测试结果是PASS还是Fail
                //显示测试结果的Label
                this.mainWindow.label_test_res.Content = TestRes;
                this.mainWindow.label_test_res.Foreground = isPass ? green : red;
                this.mainWindow.Background = new SolidColorBrush(Color.FromArgb(0xff, 0xe9, 0xf5, 0xf0));
            }), DispatcherPriority.SystemIdle);
        }
        private void RefreshBtnColor(Button btn, SolidColorBrush color)
        {
            Ellipse rec = (Ellipse)btn.Template.FindName("ButtonEllipse", btn);
            if (color == System.Windows.Media.Brushes.Green)
                rec.Fill = color;
            else if (color == System.Windows.Media.Brushes.Red)
            {
                if (rec.Fill == System.Windows.Media.Brushes.Red)
                {
                    rec.Fill = System.Windows.Media.Brushes.Yellow;
                }
                else
                {
                    rec.Fill = System.Windows.Media.Brushes.Red;
                }
            }

        }

        private void RefreshPic(int posiIndex, Paras paras)
        {
            iconUri1 = new Uri(@"./f.png", UriKind.RelativeOrAbsolute);
            iconUri2 = new Uri(@"./b.png", UriKind.RelativeOrAbsolute);
            var bitmapF = BitmapFrame.Create(
                iconUri1, BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.OnLoad);

            var bitmapB = BitmapFrame.Create(
                iconUri2, BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.OnLoad);

            if (posiIndex > -1)
            {
                switch (posiIndex)
                {
                    case 1:
                        {
                            this.mainWindow.image_1.Source = (paras.Diff1 > 0) ? bitmapF : bitmapB;
                            this.mainWindow.image_2.Source = null;
                            this.mainWindow.image_3.Source = null;
                            break;
                        }
                    case 2:
                        {
                            this.mainWindow.image_1.Source = (paras.Diff2 > 0) ? bitmapF : bitmapB;
                            this.mainWindow.image_2.Source = null;
                            this.mainWindow.image_3.Source = null;
                            break;
                        }
                    case 3:
                        {
                            this.mainWindow.image_1.Source = (paras.Diff3 > 0) ? bitmapF : bitmapB;
                            this.mainWindow.image_2.Source = null;
                            this.mainWindow.image_3.Source = null;
                            break;
                        }
                    case 4:
                        {
                            this.mainWindow.image_2.Source = (paras.Diff4 > 0) ? bitmapF : bitmapB;
                            this.mainWindow.image_1.Source = null;
                            this.mainWindow.image_3.Source = null;
                            break;
                        }
                    case 5:
                        {
                            this.mainWindow.image_3.Source = (paras.Diff5 > 0) ? bitmapF : bitmapB;
                            this.mainWindow.image_1.Source = null;
                            this.mainWindow.image_2.Source = null;
                            break;
                        }
                }
            }
        }
        private int GetMaxDiffPosiIndex(Paras paras)
        {
            double[] arr = { Math.Abs(paras.Diff1), Math.Abs(paras.Diff2), Math.Abs(paras.Diff3),
                Math.Abs(paras.Diff4),Math.Abs(paras.Diff5) };
            double max = 0;
            int index = 0;
            for (int i = 0; i < arr.Length; i++)
            {
                double x = arr[i];
                if (x > max)
                {
                    max = x;
                    index = i + 1;
                }
            }
            return index;
        }

        private void close_app()
        {
            m_log.Info("Close COM Port");
            try
            {
                //byte[] stopCmdDate = { 0x02, 0x42, 0x03, 0x41 };
                //s_port.Write(stopCmdDate, 0, stopCmdDate.Length);
                //System.Threading.Thread.Sleep(1000);
                s_port.Close();
            }
            catch (Exception e)
            {
                m_log.Info("Exception" + e.ToString());
            }
            
            System.Environment.Exit(0);
            
        }
    }
}
