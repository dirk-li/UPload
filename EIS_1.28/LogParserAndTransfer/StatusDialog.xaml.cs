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

namespace LogParserAndTransfer
{
    /// <summary>
    /// Interaction logic for StatusDialog.xaml
    /// </summary>
    public partial class StatusDialog : Window
    {
        public StatusDialog(string uid,string status,string reworid)
        {
            InitializeComponent();

            Uri iconUri = new Uri("./mouse.gif", UriKind.RelativeOrAbsolute);
            Title = "Rework Info";
            Icon = BitmapFrame.Create(iconUri);
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            Topmost = true;

            BitmapImage bitmap = QRCoderHelper.CreateQRCodeToImage(reworid);
            BarImage.Source = bitmap;

            UIDTextBox.Text = uid;
            StatusTextBox.Text = status;
            ReworkIDTextBox.Text = reworid;
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }
    }
}
