using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace LogParserAndTransfer
{
    /// <summary>
    /// Interaction logic for ReworkidInputDialog.xaml
    /// </summary>
    public partial class ReworkidInputDialog : Window
    {
        private ILog m_log = LogManager.GetLogger("log");
        private volatile bool isClickedButton = false;
        private JObject info;
        private int RetryCount = 0;
        private UTSCSVFileParser parser = UTSCSVFileParser.GetInstance();
        private TestCamLog recored;
        private bool isVerifyReworkId = false;
        private ReworkStatus status = null;
        private volatile bool DialogResultMark = false;
        private System.Timers.Timer timer1 = new System.Timers.Timer(1000);
        private delegate void DoMywork();
        private volatile int count = 0;
        private bool IsMustCreateNewReowrkID = false;
        private DateTime lastEventTime = DateTime.MinValue;
        private readonly TimeSpan eventInteral = new TimeSpan(0, 0, 1);
        private volatile bool EIS_Control_Txt_File_Changed = false;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            isClickedButton = true;
            Handle();
        }

        public ReworkidInputDialog(JObject jObject, TestCamLog recored, bool isVerifyReworkId = false)
        {
            InitializeComponent();
            Uri iconUri = new Uri("./mouse.gif", UriKind.RelativeOrAbsolute);
            Title = "Rework ID Input";
            Icon = BitmapFrame.Create(iconUri);
            //WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            Topmost = true;
            Left = 0;
            Top = 0;

            this.info = jObject;
            this.recored = recored;
            this.isVerifyReworkId = isVerifyReworkId;

            QueryRework reworkObj = new QueryRework();
            reworkObj.failedstationname = TestContext.Stationname;
            reworkObj.product = TestContext.Product;
            reworkObj.uid = TestContext.UID;
            try
            {
                this.status = QISHandler.GetRework(reworkObj);
            }
            catch(Exception e)
            {
                m_log.Error(e.ToString());
            }
            textBox.Text = info["uid"].ToString();
            if(status!=null)
            {
                if (status.reworkstatus != "")
                {
                    string mess = "-";
                    if (status.reworkstatus == "-1")
                        mess = @"未进入Rework系统";
                    else if(status.reworkstatus == "0")
                        mess = @"已进入Rework系统,还未维修";
                    else if (status.reworkstatus == "1")
                        mess = @"正在维修";
                    else if (status.reworkstatus == "2")
                        mess = @"维修完成";
                    textBox_Copy.Text = mess;
                }
                if(!string.IsNullOrEmpty(status.reworkid))
                    ReworkIdTextBoxForExisted.Text = status.reworkid;
                else
                {
                    label.Content = @"请输入 Rework ID";
                    ReworkIdTextBox.Focus();

                    if (TestContext.Platform == "Kinetic")
                    {
                        String path = @"C:\tstplan\EIS_Control.txt";
                        Tool.WriteTxtFileLine(path, 7, "CheckedIn=1");
                        EIS_Control_Txt_File_Changed = true;
                    }
                }
                    
            }
            else
                ReworkIdTextBox.Focus();

            timer1.Elapsed += new System.Timers.ElapsedEventHandler(CheckCloseCondition);

            
            if(recored.Status == "F" && status.reworkstatus == "2" &&
                (TestContext.HistoricProductTestInfo.frequency+1)%3==0)
            {
                label.Content = "创建新的ReworkID(维修完成的DUT仍然Fail)";
                IsMustCreateNewReowrkID = true;
            }

            Tool.MoveUTSWindow();
        }

        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            if (!isClickedButton || DialogResult==false || DialogResult==null)
                e.Cancel = true;
        }

        private void Handle()
        {
            m_log.Info("Enter Handle()");

            //1.insert QIS 2.update current test info to EIS rework = 1 3.update EIS DB
            if (ReworkIdTextBox.Text == "")
            {
                Tool.ShowWarningMessage("Warning", @"请输入ReworkId");
                DialogResult = false;
                return;
            }
            if(isVerifyReworkId)
            {
                try
                {
                    //ReworkStatus status = QISHandler.GetRework(reworkObj);
                    if (status.reworkid != ReworkIdTextBox.Text)
                    {
                        string mess1 = "";
                        bool isSucc1 = InsertReworkID(ReworkIdTextBox.Text, out mess1);
                        if (isSucc1)
                        {
                            //Tool.ShowWarningMessage("Info", @"刷新ReworkId成功.");
                        }
                            
                        else
                            Tool.ShowWarningMessage("Warning", @"刷新ReworkId失败,message:" + mess1);
                    }
                }
                catch(Exception e)
                {
                    m_log.Error(e.ToString());
                }
                finally
                {
                    DialogResult = true;
                }
                return;
            }

            string message = "";
            bool isSucc = InsertReworkID(ReworkIdTextBox.Text, out message);
            if (isSucc)
            {
                DialogResult = true;
                return;
            }
            else
            {
                RetryCount++;
                if(RetryCount<4)
                    Tool.ShowWarningMessage("Warning", @"QIS系统创建Reworkid失败,message:"+ message);
                else
                {
                    Tool.ShowWarningMessage("Warning", @"Retry 3 times 创建Reworkid,失败.message:" + message);
                    DialogResult = true;
                }
            }
        }

        private void CheckCloseCondition(object source, System.Timers.ElapsedEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.Invoke(DispatcherPriority.Normal, (ThreadStart)delegate ()
            {
                if (DialogResultMark && count==0)
                {
                    Thread.Sleep(1000);
                    DialogResult = true;
                    timer1.Enabled = false;
                    count++;

                    if(this.EIS_Control_Txt_File_Changed)
                    {
                        String path = @"C:\tstplan\EIS_Control.txt";
                        Tool.WriteTxtFileLine(path, 7, "CheckedIn=0");
                        EIS_Control_Txt_File_Changed = false;
                    }
                }
            });
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        private void Handle1()
        {
            
            String inputReworkID = ReworkIdTextBox.Text;
            if (!String.IsNullOrEmpty(inputReworkID))
                inputReworkID = inputReworkID.ToUpper();
            if (!IsReworkIDFormatCorrect(inputReworkID))
            {
                //Tool.ShowWarningMessageOnThread("Warning", @"输入的ReworkId格式错误");
                return;
            }
            m_log.Info("Enter Handle1()-"+ inputReworkID.Length);

            if (lastEventTime == DateTime.MinValue)
            {
                lastEventTime = DateTime.Now;
            }
            else
            {
                if ((DateTime.Now - lastEventTime) < eventInteral)
                {
                    lastEventTime = DateTime.Now;
                    return;
                }
                else
                    lastEventTime = DateTime.Now;
            }

            isClickedButton = true;
            if (isVerifyReworkId)
            {
                try
                {
   
                    if (status.reworkid.ToUpper() != inputReworkID)
                    {
                        string mess1 = "";
                        bool isSucc1 = InsertReworkID(inputReworkID, out mess1);
                        if (isSucc1)
                        {
                            DialogResultMark = true;
                        }
                        else
                        {
                            DialogResultMark = false;
                            Tool.ShowWarningMessageOnThread("Warning", @"刷新ReworkId失败,message:" + mess1+"("+ inputReworkID+")");

                            System.Windows.Application.Current.Dispatcher.Invoke(System.Windows.Threading.DispatcherPriority.Render,
                    new Action(() => ReworkIdTextBox.Clear()));
                        }  
                    }
                    else
                    {
                        DialogResultMark = false;
                        Tool.ShowWarningMessageOnThread("Warning", @"输入的ReworkId与现有的相同" + "(" + inputReworkID + ")");
                        System.Windows.Application.Current.Dispatcher.Invoke(System.Windows.Threading.DispatcherPriority.Render,
                    new Action(() => ReworkIdTextBox.Clear()));
                    }
                }
                catch (Exception e)
                {
                    m_log.Error(e.ToString());
                    DialogResultMark = false;
                    Tool.ShowWarningMessageOnThread("Warning", @"创建ReworkId失败,message:" + e.ToString());
                }
            }
            else
            {
                string message = "";
                bool isSucc = InsertReworkID(inputReworkID, out message);
                if (isSucc)
                {
                    DialogResultMark = true;
                    return;
                }
                else
                {
                    RetryCount++;
                    if (RetryCount < 4)
                    {
                        Tool.ShowWarningMessageOnThread("Warning", @"QIS系统创建Reworkid失败,message:" + message+"(" + inputReworkID + ")");
                        System.Windows.Application.Current.Dispatcher.Invoke(System.Windows.Threading.DispatcherPriority.Render,
                    new Action(() => ReworkIdTextBox.Clear()));
                    }
                        
                    else
                    {
                        Tool.ShowWarningMessageOnThread("Warning", @"Retry 3 times 创建Reworkid,失败.message:" + message+ "(" + inputReworkID + ")");
                        //DialogResult = true;
                        DialogResultMark = true;
                    }
                }
            }
            isClickedButton = true;   
        }

        private bool InsertReworkID(string inputReworkId,out string mess)
        {
            InsertedRework reworkObj = new InsertedRework();
            reworkObj.reworkid = inputReworkId;
            reworkObj.errorcode = info["errorcode"].ToString();
            reworkObj.errordescription = info["errordescription"].ToString();
            reworkObj.failedstationname = info["failedstationname"].ToString();
            reworkObj.failedstationsequence = info["failedstationsequence"].ToString();
            reworkObj.failedvalue = info["failedvalue"].ToString();
            reworkObj.product = info["product"].ToString();
            reworkObj.uid = info["uid"].ToString();
            reworkObj.workid = info["workid"].ToString();
            string messTemp = "";
            bool isSucc = QISHandler.InsertRework(reworkObj, out messTemp);
            mess = messTemp;
            return isSucc;
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            if(ReworkIdTextBoxForExisted.Text=="-" || IsMustCreateNewReowrkID) 
            {
                DialogResult = false;
                Tool.ShowWarningMessage("Warning", @"请输入ReworkId");
                Focus();
                ReworkIdTextBox.Clear();
                ReworkIdTextBox.Focus();
            }
            else
            {
                isClickedButton = true;
                DialogResult = true;
            }
            return;
        }

        private void ReworkIdBoxTextChanged(object sender, TextChangedEventArgs e)
        {
            Thread t = new Thread(() =>
            {
                try
                {
                    try
                    {
                        System.Windows.Application.Current.Dispatcher.Invoke(
                            DispatcherPriority.Normal, new DoMywork(Handle1));
                    }
                    catch (Exception ex)
                    {
                        m_log.Error(ex.ToString());
                    }
                }
                catch (Exception ex)
                {
                    m_log.Error(ex.ToString());
                }
            });
            t.IsBackground = true;
            t.Start();

            timer1.Start();
        }

        private bool IsReworkIDFormatCorrect(string str)
        {
            if (string.IsNullOrEmpty(str))
                return false;
            bool isOK = false;
            // 75E4EF28-D30E-11EA-B6ED-70B5E82D13AA
            // 75FF2648-D30E-11EA-BE44-70B5E82D13AA
            string regex = "^[a-z|A-Z|0-9]{8}-[a-z|A-Z|0-9]{4}-[a-z|A-Z|0-9]{4}-[a-z|A-Z|0-9]{4}-[a-z|A-Z|0-9]{12}$";
            Match match = Regex.Match(str, regex, RegexOptions.IgnoreCase);
            if (match.Success)
                isOK = true;
            return isOK;
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.KeyboardDevice.IsKeyDown(Key.Escape))
                {
                    if(TestContext.HistoricProductTestInfo != null)
                        m_log.Info("Enter Esc for UID "+TestContext.UID+ ",HistoricProductTestInfo " +
                            "failtimes " + TestContext.HistoricProductTestInfo.failtimes+" "+
                            "frequency " + TestContext.HistoricProductTestInfo.frequency);

                    isClickedButton = true;
                    DialogResult = true;
                    Close();
                }
            }
            catch (Exception excep)
            {
                m_log.Error("Window_KeyDown exception:" + excep.ToString());
            }
        }

        private void ReworkIdBox_KeyDown(object sender, KeyEventArgs e)
        {
            string str = ReworkIdTextBox.Text;
            if (e.KeyboardDevice.IsKeyDown(Key.Enter))
            {
                if (str.Length == 0)
                    return;
                else if(!IsReworkIDFormatCorrect(str))
                {
                    m_log.Info("***"+ ReworkIdTextBox.Text+ "***"+ str.Length);
                    Tool.ShowWarningMessageOnThread("Warning", @"输入的ReworkId格式错误");
                    return;
                }
            }
        }
    }
}
