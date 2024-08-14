using LiveCharts;
using LiveCharts.Wpf;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Threading;
using System.Windows.Media;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.IO.Ports;
using System.Windows;

namespace Motor_torque_test
{
    public class Torque_test
    {
        private ILog m_log = LogManager.GetLogger("log");
        public MainWindow mainWindow;
        public bool isAllowSendNextMeasureCmd = true;
        private int succ_times = 0;
        private string testend = "";
        public string starttestflag = "";
        private double[] temp = { 3, 5, 7, 4, 6, 20, 50, 100, 73, 100, 99, 78, 89, 110, 120, 150, 123, 145, 132, 142, 132, 145, 34, 32, 2, 1 };
        private double[] temp2 = { 800, 905, 707, 1434, 1326, 1260, 1350, 1100, 1273, 1500, 999, 1278, 1689, 1210, 1120, 1450, 1523, 1645, 1352, 1442, 1232, 1345, 1326, 1260, 1350, 1100, 1326, 1260, 1350, 1100, 1273, 1500, 999, 1278, 1689, 1210, 1120, 1450, 1523, 1645, 1352, 1442, 1232, 1345, 1326, 1260, 1273, 1500, 999, 1278, 1689, 1210, 1120, 1450, 1523, 1645, 1352 };
        public Torque_test()//main test
        {


            Thread motor_torque_test_process = new Thread(() => DataReceived(mainWindow));
            while ((motor_torque_test_process.ThreadState & (ThreadState.Unstarted | ThreadState.Stopped)) != 0)
            {
                motor_torque_test_process = new Thread(() => DataReceived(mainWindow));
                motor_torque_test_process.Start();
            }


        }
        public void SetMainWindow(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;
        }
        private void DataReceived(MainWindow mainWindow)
        {

            try
            {
               
                while (isAllowSendNextMeasureCmd && testend != "RSM_End")

                {

                    this.mainWindow.Dispatcher.Invoke(new Action(() =>
                    {
                       
                    }), DispatcherPriority.SystemIdle);
                }
            }
            catch (Exception e)
            {
                m_log.Info("Exception" + e.ToString());
            }


        }

        public void updateUI()
        {
            this.mainWindow.com_port_label.Content = "COM10";
            draw_Panchart(temp2,"Pan_torque_curves");
        }
        public void draw_Tiltchart(double[] data, string title_name)
        {
            SeriesCollection series = new SeriesCollection()
            {
                new LineSeries
                {
                    
                    //Values = new ChartValues<double> { 800, 905,707, 1434 ,1326,1260,1350,1100,1273,1500,999,1278,1689,1210,1120,1450,1523,1645,1352,1442,1232,1345,1326,1260,1350,1100, 1326, 1260, 1350, 1100, 1273, 1500, 999, 1278, 1689, 1210, 1120, 1450, 1523, 1645, 1352, 1442, 1232, 1345, 1326, 1260,1273,1500,999,1278,1689,1210,1120,1450,1523,1645,1352},
                    Values=new ChartValues<double>(data),
                    Fill= new SolidColorBrush(),
                    PointForeground=new SolidColorBrush(Colors.Red),
                    Stroke=new SolidColorBrush(Colors.Green),//线条颜色
                    Title=title_name,
                    PointGeometrySize=7,
                    LineSmoothness=0,//o：直线;1：曲线
                   
              
                    //Fill=new SolidColorBrush(Colors.IndianRed),
                    },
                };
            this.mainWindow.Tiltchart.Series = series;
        }
        public void draw_Panchart(double[] data, string Title_name)
        {
            SeriesCollection myseries2 = new SeriesCollection()
            {
                new LineSeries
                {
                     Values=new ChartValues<double>(data),
                    Fill= new SolidColorBrush(),
                    PointForeground=new SolidColorBrush(Colors.Red),
                    Stroke=new SolidColorBrush(Colors.Green),//线条颜色
                    Title=Title_name,
                    PointGeometrySize=7,
                    LineSmoothness=0,//o：直线;1：曲线
                    },
                };
            this.mainWindow.PanChart.Series = myseries2;
        }

    }
}
