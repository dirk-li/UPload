using System;
using System.Collections.Generic;
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

namespace RSM_Tilt_Test
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private ILog m_log = LogManager.GetLogger("log");
        private RSM_test rsm_test_process = null;
        private Uri iconUri1 = null;
        private Uri iconUri2 = null;
        private bool IsAppImplementContinueMeasure = false;
        private SolidColorBrush blue = new SolidColorBrush(Colors.Blue);
        private SolidColorBrush green = new SolidColorBrush(Colors.Green);
        private SolidColorBrush red = new SolidColorBrush(Colors.Red);
        public MainWindow()
        {
            InitializeComponent();
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            log4net.Config.XmlConfigurator.Configure(); 
            m_log.Info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            m_log.Info("RSM Tilt App start running.");
            Title = "RSM Tilt V1.7";

            rsm_test_process = new RSM_test();
            rsm_test_process.SetMainWindow(this);

            
            WindowStartupLocation = WindowStartupLocation.Manual;
            Left = System.Windows.SystemParameters.PrimaryScreenWidth - (Width + 10);
            Top = System.Windows.SystemParameters.PrimaryScreenHeight - (Height + 50);

            iconUri1 = new Uri(@"./f.png", UriKind.RelativeOrAbsolute);
            iconUri2 = new Uri(@"./b.png", UriKind.RelativeOrAbsolute);

            if (IsAppImplementContinueMeasure)
            {
                StartBtn.Visibility = Visibility.Hidden;
                StopBtn.Visibility = Visibility.Hidden;
            }

            labelOutRange.Foreground = blue;
            labelOutRange.Visibility = Visibility.Hidden;
            

        }

        private void StartBtn_Click(object sender, RoutedEventArgs e)
        {

            /*
            rsm_test_process = new RSM_test();
            rsm_test_process.SetMainWindow(this);
            */
        }

        private void StopBtn_Click(object sender, RoutedEventArgs e)
        {
            image_1.Source = null;

            rsm_test_process.ManualStop();
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            System.Environment.Exit(0);
        }
    }
}
