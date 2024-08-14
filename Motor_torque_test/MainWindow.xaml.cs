using System;
using System.Data;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using log4net;
using LiveCharts;
using LiveCharts.Wpf;
using System.IO.Ports;
using AF;
using System.IO;

namespace Motor_torque_test
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private ILog m_log = LogManager.GetLogger("log");
        private static SerialPort s_port = new SerialPort();
        private String COM = WRConfig.GetValue("COM");
        private string BaudRate = WRConfig.GetValue("BaudRate");
        private volatile bool testSucc = false;
        private string SN,Current_time,csvfilename= "Torque_test_"+DateTime.Now.Date.ToString("yyyyMMdd")+".csv";
        private string MAX_UPlimit = WRConfig.GetValue("MAX_UPlimit");
        private string MAX_Lowlimit = WRConfig.GetValue("MAX_Lowlimit");
        private string Average_UPlimit = WRConfig.GetValue("Average_UPlimit");
        private string Average_Lowlimit = WRConfig.GetValue("Average_Lowlimit");
        string[] max_iterm_name = { "Max_UPLimit", "Max_LowLimit", "Max_Value", "Average_UPLimit", "Average_LowLimit", "Average_Value" };
        private int pan_max_value = 0, pan_average_value = 0,tilt_max_value = 0, tilt_average_value = 0;
        private string pan_max_value_str, pan_average_value_str, tilt_max_value_str, tilt_average_value_str;
        private bool comport_openstatus = false;
        ObservableCollection<Result_data> result_value = new ObservableCollection<Result_data>();
        public SeriesCollection SeriesCollection { get; set; }
        public string starttestflag = "";
        private int[] Tilt_torque_data = new int[254];
        private int[] Pan_torque_data = new int[254];
        DataTable Result_table = new DataTable("TableName");
        public MainWindow()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            log4net.Config.XmlConfigurator.Configure();
            m_log.Info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            m_log.Info(" Fireball motor static torque App start running.");
            Title = "Fireball motor static torque V1.0";



            Result_table.Columns.Add("SN", typeof(string));
            Result_table.Columns.Add("Time", typeof(string));
            Result_table.Columns.Add("Pan_Max", typeof(string));
            Result_table.Columns.Add("Pan_Average", typeof(string));
            Result_table.Columns.Add("Tilt_Max", typeof(string));
            Result_table.Columns.Add("Tilt_Average", typeof(string));
            if (File.Exists(Directory.GetCurrentDirectory() + "\\log\\"+csvfilename))
            { }
            else
            {
                DataRow row_uplimit = Result_table.NewRow();
                row_uplimit["SN"] = "";
                row_uplimit["Time"] = "";
                row_uplimit["Pan_Max"] = MAX_UPlimit;
                row_uplimit["Pan_Average"] = Average_UPlimit;
                row_uplimit["Tilt_Max"] = MAX_UPlimit;
                row_uplimit["Tilt_Average"] = Average_UPlimit;
                Result_table.Rows.Add(row_uplimit);
                DataRow row_lowlimit = Result_table.NewRow();
                row_lowlimit["SN"] = "";
                row_lowlimit["Time"] = "";
                row_lowlimit["Pan_Max"] = MAX_Lowlimit;
                row_lowlimit["Pan_Average"] = Average_Lowlimit;
                row_lowlimit["Tilt_Max"] = MAX_Lowlimit;
                row_lowlimit["Tilt_Average"] = Average_Lowlimit;
                Result_table.Rows.Add(row_lowlimit);
                CSVHelper.WriteCSV(Directory.GetCurrentDirectory() + "\\log\\"+csvfilename, Result_table);
            }


            //torque_test_process = new Torque_test();
            //torque_test_process.SetMainWindow(this);
        }
        public void updateUI()
        {
            m_log.Info(" show test result .");
            Draw_TiltChart(Tilt_torque_data, "Tilt_Torque_Curves");
            Draw_PanChart(Pan_torque_data, "Pan_Torque_Curves");
            //show_result_data();
            WindowStartupLocation = WindowStartupLocation.Manual;
            show_GridData(max_iterm_name, MAX_UPlimit, MAX_Lowlimit, Average_UPlimit, Average_Lowlimit, pan_max_value_str, pan_average_value_str,tilt_max_value_str,tilt_average_value_str);
        }
        public void Draw_TiltChart(int[] data, string title_name)
        {
            SeriesCollection series = new SeriesCollection()
            {
                new LineSeries
                {
                    
                    //Values = new ChartValues<double> { 800, 905,707, 1434 ,1326,1260,1350,1100,1273,1500,999,1278,1689,1210,1120,1450,1523,1645,1352,1442,1232,1345,1326,1260,1350,1100, 1326, 1260, 1350, 1100, 1273, 1500, 999, 1278, 1689, 1210, 1120, 1450, 1523, 1645, 1352, 1442, 1232, 1345, 1326, 1260,1273,1500,999,1278,1689,1210,1120,1450,1523,1645,1352},
                    Values=new ChartValues<int>(data),
                    Fill= new SolidColorBrush(),
                    PointForeground=new SolidColorBrush(Colors.Red),
                    Stroke=new SolidColorBrush(Colors.Green),//线条颜色
                    Title=title_name,
                    PointGeometrySize=7,
                    LineSmoothness=0,//o：直线;1：曲线
                   
              
                    //Fill=new SolidColorBrush(Colors.IndianRed),
                    },
                };
            Tiltchart.Series = series;
        }
        public void Draw_PanChart(int[] data, string Title_name)
        {
            SeriesCollection myseries2 = new SeriesCollection()
            {
                new LineSeries
                {
                     Values=new ChartValues<int>(data),
                    Fill= new SolidColorBrush(),
                    PointForeground=new SolidColorBrush(Colors.Red),
                    Stroke=new SolidColorBrush(Colors.Green),//线条颜色
                    Title=Title_name,
                    PointGeometrySize=7,
                    LineSmoothness=0,//o：直线;1：曲线
                    },
                };
            PanChart.Series = myseries2;


            Title = "pan";
        }
        public void show_GridData(string[] iterm_name, string MAX_UPlimit, string MAX_Lowlimit, string Average_UPlimit, string Average_Lowlimit,string pan_max_str,string pan_average_str,string tilt_max_str,string tilt_average_str)
        {
            result_value.Clear();
            m_log.Info("Show Motor torque test result_data.");
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[0],
                Pan = MAX_UPlimit,
                Tilt = MAX_UPlimit
            });
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[1],
                Pan = MAX_Lowlimit,
                Tilt = MAX_Lowlimit
            });
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[2],
                Pan = pan_max_str,
                Tilt = tilt_max_str
            });
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[3],
                Pan = Average_UPlimit,
                Tilt = Average_UPlimit
            });
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[4],
                Pan = Average_Lowlimit,
                Tilt = Average_Lowlimit
            });
            result_value.Add(new Result_data()
            {
                Iterm = iterm_name[5],
                Pan = pan_average_str,
                Tilt = tilt_average_str
            });
            Torque_DataGrid.DataContext = result_value;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            com_port_label.Content = COM;
            inital_comport();
        }
        private bool inital_comport()
        {
            bool com_initial = false;
            string[] ports_list = System.IO.Ports.SerialPort.GetPortNames();

            foreach (string sName in ports_list)
            {
                if (sName == COM)
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

        //private void start_test_btn_Click(object sender, RoutedEventArgs e)
        //{
        //    InputBox.Visibility = System.Windows.Visibility.Visible;
        //}
        public static string[] get_value(string inputstr)
        {
            s_port.Write(inputstr);

            string[] recvalue = new string[234]; // update 52 value to 234 2018/5/2

            //System.Threading.Thread.Sleep(1000);


            for (int i = 0; i < 234; i++)
            {
                string recdata = s_port.ReadLine();
                // MessageBox.Show(recdata);
                string recstr = ((int.Parse(recdata) * 2040 / 1023)).ToString();

                if (recstr.Length == 0)
                {
                    recvalue[i] = "0";
                }
                else
                {
                    recvalue[i] = recstr;
                }

                System.Threading.Thread.Sleep(10);
            }
            //File.WriteAllLines(filepath, recvalue);

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
        //private string[] getaverage(string[] array)
        //{
        //    int[] intarray1;
        //    string[] average = new string[1];
        //    intarray1 = Array.ConvertAll<string, int>(array, s => int.Parse(s));
        //    int sum = 0;
        //    int arrayleg = intarray1.Length - 50;
        //    for (int i = 50; i < intarray1.Length; i++)
        //    {
        //        sum = sum + intarray1[i];
        //    }
        //    average[0] = (sum / arrayleg).ToString();
        //    return average;
        //}
        private int Get_average(int[] array)
        {
            int sum = 0,average=0;
            foreach (int value in array)
            {
                sum += value;
            }
            average = sum / (array.Length + 1);
            return average;
        }

        public static string[] minusArray(string[] array, int minvalue)
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
        public static string[] getpeak(string[] strarray)
        {
            String[] recdata = new string[1];

            string a = getcomdata(strarray);
            int position = Array.IndexOf(strarray, a);
            if (position >= (strarray.Length - 1))
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
        public static int[] TointArray(string[] strarray)
        {

            int[] data = new int[strarray.Length];

            for (int i = 0; i < strarray.Length; i++)
            {

                data[i] = int.Parse(strarray[i]);

            }
            return data;
        }
        public void result_compare(int[] value, string returnstr)
        {
            if (value[3] == 0)
            {
                Resut_lab.Content = returnstr + " Retest";
                return;
            }
            else if (value[3] > value[0])
            {
                Resut_lab.Content = returnstr + "FAIL";
                Resut_lab.Background = Brushes.Red;
                return;
            }
            else if (value[3] < value[1])
            {
                Resut_lab.Content = returnstr + "FAIL";
                Resut_lab.Background = Brushes.Red; ;
                return;
            }
            else
            {
                Resut_lab.Content = returnstr + "PASS";
                Resut_lab.Background = Brushes.Green;
            }
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
        public static int[] calculate_data(int[] value,int max_value)
        {
            int i_pos_max = 0,i_pos_0=0;
            //for (int i = 0; i < value.Length; i++)
            //{
            //    if (value[i] == max_value)
            //    {
            //        i_pos_max = i;
            //    }
            //}
            for (int i = 0; i < value.Length; i++)
            {
                if (value[i] < 1)
                {
                    i_pos_0 = i;
                }
            }
            int[] torque_data = new int[value.Length - i_pos_0];
            for (int j = 0; j < torque_data.Length; j++)
            {
                torque_data[j] = value[i_pos_0+ j];
            }
            return torque_data;
        }

        private bool IsTestPass()
        {
            if (pan_max_value > int.Parse(MAX_Lowlimit) && pan_max_value < int.Parse(MAX_UPlimit)
                && pan_average_value > int.Parse(Average_Lowlimit) && pan_average_value < int.Parse(Average_UPlimit)
                && tilt_max_value > int.Parse(MAX_Lowlimit) && tilt_max_value < int.Parse(MAX_UPlimit)
                && tilt_average_value > int.Parse(Average_Lowlimit) && tilt_average_value < int.Parse(Average_UPlimit))
                return true;
            else
                return false;
        }
        private void CoolButton_Click(object sender, RoutedEventArgs e)
        {
            // CoolButton Clicked! Let's show our InputBox. 
            InputBox.Visibility = System.Windows.Visibility.Visible;
        }

        private void YesButton_Click(object sender, RoutedEventArgs e)
        {
            // YesButton Clicked! Let's hide our InputBox and handle the input text. 
            InputBox.Visibility = System.Windows.Visibility.Collapsed;
            MyListBox.Items.Clear();

            // Do something with the Input 
            SN = InputTextBox.Text;
            MyListBox.Items.Add(SN); // Add Input to our ListBox. 

            // Clear InputBox. 
            InputTextBox.Text = String.Empty;
            /***
            //string sn = Interaction.InputBox("请输入Serial Number", "Serial Number", "", 10, 10);
            string[] pan_torque_row_data = get_value("pan static torque");
            string[] panstatictorque_value2 = removearray(pan_torque_row_data, "2040");
            ////string delpanmax = removemax(panstatictorque_value2);
            //string[] panstatictorque_value3 = removearray(panstatictorque_value2, delpanmax);//20180430 delete the unusual max value
            string[] panstatictorque_value = minusArray(panstatictorque_value3, 1); //20180430 minus the toside difference value
            string[] panstatictorque_value = minusArray(panstatictorque_value2, 1);
            string[] pantorque_average = getaverage(panstatictorque_value);  //20180504  get average
            string[] panstatictorque = getpeak(panstatictorque_value);
            string[] panstatictorque_mergearray = merge_array(pan_max_spec_array, pan_min_spec_array, panstatictorque, pantorque_average);
            int[] panfrictionforce = TointArray(panstatictorque_mergearray);
            result_compare(panfrictionforce, "The pan static frictional force");
            ***/
            //update code by 20231208
            string[] pan_torque_row_data = get_value("pan static torque");
            string[] panstatictorque_value2 = removearray(pan_torque_row_data, "2040");
            string[] panstatictorque_value = minusArray(panstatictorque_value2, 1);
            int[] pantorquerowdata = TointArray(panstatictorque_value);

            pan_max_value = pantorquerowdata.Max();
            pan_max_value_str = pan_max_value.ToString();
            Pan_torque_data = calculate_data(pantorquerowdata, pan_max_value);
            pan_average_value = Get_average(Pan_torque_data);
            pan_average_value_str = pan_average_value.ToString();
            MessageBox.Show("Tilt");
            string[] tilt_torque_row_data = get_value("tilt static torque");
            string[] tiltstatictorque_value2 = removearray(tilt_torque_row_data, "2040");
            string[] tiltstatictorque_value = minusArray(tiltstatictorque_value2, 1);
            int[] tilttorquerowdata = TointArray(tiltstatictorque_value);
            tilt_max_value = tilttorquerowdata.Max();
            tilt_max_value_str = tilt_max_value.ToString();
            Tilt_torque_data = calculate_data(tilttorquerowdata, tilt_max_value);
            tilt_average_value = Get_average(Tilt_torque_data);
            tilt_average_value_str = tilt_average_value.ToString();

            Current_time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            //DataTable Result_table = new DataTable("TableName");

            //Result_table.Columns.Add("SN", typeof(string));
            //Result_table.Columns.Add("Time",typeof(string));
            //Result_table.Columns.Add("Pan_Max",typeof(string));
            //Result_table.Columns.Add("Pan_Average",typeof(string));
            //Result_table.Columns.Add("Tilt_Max",typeof(string));
            //Result_table.Columns.Add("Tilt_Average",typeof(string));
            Result_table.Rows.Clear();
            DataRow row = Result_table.NewRow();
            row["SN"]=SN;
            row["Time"] = Current_time;
            row["Pan_Max"] = pan_max_value_str;
            row["Pan_Average"] = pan_average_value_str;
            row["Tilt_Max"] = tilt_max_value_str;
            row["Tilt_Average"] = tilt_average_value_str;
            Result_table.Rows.Add(row);
            CSVHelper.WriteCSV(Directory.GetCurrentDirectory() + "\\log\\" + csvfilename, Result_table);

            testSucc = IsTestPass();

            updateUI();
            m_log.Info(" Test_result="+testSucc.ToString());
            if (testSucc == true)
            {
                Resut_lab.Content = "PASS";
                Resut_lab.Background = Brushes.Green;
            }
            else
            {
                Resut_lab.Content = "FAIL";
                Resut_lab.Background = Brushes.Red;
            }


        }
    }
    public class Result_data
    {
        public string Iterm { get; set; }
        public string Pan { get; set; }
        public string Tilt { get; set; }

    }

}
