using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.IO;

namespace Dancy
{
    public partial class Form1 : Form
    {
        int SH = Screen.PrimaryScreen.Bounds.Height;
        int SW = Screen.PrimaryScreen.Bounds.Width;
        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
        public struct DEVMODE
        {
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
            public string dmDeviceName;
            public short dmSpecVersion;
            public short dmDriverVersion;
            public short dmSize;
            public short dmDriverExtra;
            public int dmFields;
            public short dmOrientation;
            public short dmPaperSize;
            public short dmPaperLength;
            public short dmPaperWidth;
            public short dmScale;
            public short dmCopies;
            public short dmDefaultSource;
            public short dmPrintQuality;
            public short dmColor;
            public short dmDuplex;
            public short dmYResolution;
            public short dmTTOption;
            public short dmCollate;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
            public string dmFormName;
            public short dmLogPixels;
            public int dmBitsPerPel;
            public int dmPelsWidth;
            public int dmPelsHeight;
            public int dmDisplayFlags;
            public int dmDisplayFrequency;
        }

        [DllImport("User32.dll", EntryPoint = "ShowWindow", CharSet = CharSet.Auto)]
        private static extern int ShowWindow(IntPtr Hwnd, int nCmdShow);

        [DllImport("User32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd);
        private const int WS_SHOWNORMAL = 1;

        [DllImport("User32.dll")]
        private static extern bool ShowWindowAsync(IntPtr hWnd, int cmdShow);


        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        static extern int ChangeDisplaySettings([In] ref DEVMODE lpDevMode, int dwFlags);
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        static extern bool EnumDisplaySettings(string lpszDeviceName, Int32 iModeNum, ref DEVMODE lpDevMode);
        [DllImport("user32.dll")]
        private static extern IntPtr GetDC(IntPtr hwnd);
        [DllImport("gdi32.dll")]
        private static extern int GetPixel(IntPtr hdc, Point p);

        //???????
        public static void changepiexl()
        {

            DEVMODE DevM = new DEVMODE();
            DevM.dmSize = (short)Marshal.SizeOf(typeof(DEVMODE));
            bool mybool;
            mybool = EnumDisplaySettings(null, 0, ref DevM);
            DevM.dmPelsWidth = 1920;//change the screen height
            DevM.dmPelsHeight = 1080;//change the screen width 
            DevM.dmDisplayFrequency = 60;//refresh rate
            DevM.dmBitsPerPel = 32;//color piexl
            long result = ChangeDisplaySettings(ref DevM, 0);
        }
        //??????????h?w,???????1280*1024????????(x,y)?????????(q,b)
        static int[] readpiexl()
        {
            int[] piexl;
            System.Drawing.Rectangle rect = System.Windows.Forms.Screen.PrimaryScreen.Bounds;
            int w = rect.Width;//wide(piexl)
            int h = rect.Height;//high(piexl)
            if (w != 1920 | h != 1080)
            {
                changepiexl();
            }
            int x = 380;
            int y = 600;
            int q = (x * w) / 1920;
            int b = (y * h) / 1080;
            piexl = new int[2] { q, b };
            return piexl;
        }


        [DllImport("user32.dll")]
        private static extern int mouse_event(int dwFlags, int dx, int dy, int cButtons, int dwExtraInfo);
        const int MOUSEEVENTF_MOVE = 0x0001;
        const int MOUSEEVENTF_LEFTDOWN = 0x0002;
        const int MOUSEEVENTF_LEFTUP = 0x0004;

        [DllImport("user32.dll")]
        private static extern bool SetCursorPos(int x, int y);

        [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern IntPtr FindWindow(string strClass, string strWindow);

        [DllImport("user32.dll", EntryPoint = "FindWindowEx")]
        public static extern IntPtr FindWindowEx(IntPtr hWndParent, IntPtr hWndChildAfter, string lpClassName, string IpWindowName);

        // ??????
        [DllImport("user32.dll")]
        public static extern int GetWindowRect(IntPtr hWnd, out RECT lpRect);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        public static extern int MoveWindow(IntPtr hWnd, int x, int y, int nWidth, int nHeight, bool BRePaint);


        [DllImport("user32.dll", EntryPoint = "SendMessage")]
        public static extern int SendMessage(IntPtr hwnd, int wMsg, int wParam, int lParam);


        public struct RECT
        {
            public int Left;                             //????
            public int Top;                             //????
            public int Right;                           //????
            public int Bottom;                        //????
        }

        private int getpixel(int x, int y)
        {
            int pixel;
            Point p = new Point(x, y);//??????
            IntPtr hdc = GetDC(new IntPtr(0));//è?µ?éè±?3??°(0?íê?è??áµ?éè±?3??°)
            pixel = GetPixel(hdc, p);//?????
            return pixel;
        }

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F12)
            {
                const int VK_RETURN = 0xD;
                const int WM_KEYDOWN = 0x100;
                int dx = 0;
                int dy = 0;
                SetCursorPos(dx, dy);
                string strName = "SoundCheck 11.1 - D:\\Darcy";
                IntPtr h_paint_main = FindWindow(null, strName);
                RECT rw = new RECT();
                GetWindowRect(h_paint_main, out rw);//???????????

                Cursor.Position = new Point(rw.Left + 27, rw.Top + 68);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(3000);

            snform:
                System.Threading.Thread.Sleep(1000);
                string snName = "Serial No - Prompt for SN";
                IntPtr snform = FindWindow(null, snName);
                if (snform != IntPtr.Zero)
                {

                    goto snform;

                }
                string Statusname = "Status";
                IntPtr Status = FindWindow(null, Statusname);
                RECT rwStatus = new RECT();
                GetWindowRect(Status, out rwStatus);//???????????

                Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(3000);
                micon("-s audio_dsp 1", "100", "-s audio_ch 3");
                System.Threading.Thread.Sleep(1000);
                Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(7000);
                micon("-s audio_dsp 1", "100", "-s audio_ch 4");
                System.Threading.Thread.Sleep(1000);
                Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(7000);
                micon("-s audio_dsp 1", "100", "-s audio_ch 5");
                System.Threading.Thread.Sleep(1000);

                Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(7000);
                micon("-s audio_dsp 1", "100", "-s audio_ch 6");
                System.Threading.Thread.Sleep(1000);

                Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(5000);


                IntPtr main_hWnd = FindWindow(null, "Dancy soundcheck");
                ShowWindowAsync(main_hWnd, WS_SHOWNORMAL);//??????
                SetForegroundWindow(main_hWnd);//????,???????,
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            speakerdspoff("-s audio_dsp 1");
            const int VK_RETURN = 0xD;
            const int WM_KEYDOWN = 0x100;
            int dx = 0;
            int dy = 0;
            SetCursorPos(dx, dy);
            string strName = "SoundCheck 11.1 - D:\\Darcy";
            IntPtr h_paint_main = FindWindow(null, strName);
            RECT rw = new RECT();
            GetWindowRect(h_paint_main, out rw);//???????????

            Cursor.Position = new Point(rw.Left + 27, rw.Top + 68);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(3000);

        snform:
            System.Threading.Thread.Sleep(1000);
            string snName = "Serial No - Prompt for SN";
            IntPtr snform = FindWindow(null, snName);
            if (snform != IntPtr.Zero)
            {

                goto snform;

            }
        
            string Statusname = "Status";
            IntPtr Status = FindWindow(null, Statusname);

            RECT rwStatus = new RECT();
            GetWindowRect(Status, out rwStatus);//???????????
            Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(4000);
            string mic1name = "1# Mic Test";
            IntPtr mic1 = FindWindow(null, mic1name);
            while (mic1 == IntPtr.Zero)
            {
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(4000);
                break;
            }                  
                
            micon("-s audio_dsp 1", "1000", "-s audio_ch 3");
            System.Threading.Thread.Sleep(1000);      
            Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(4000);
            string mic2name = "2# Mic Test";
            IntPtr mic2 = FindWindow(null, mic2name);
            while (mic2 == IntPtr.Zero)
            {
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(4000);
                break;
            }   
          
            micon("-s audio_dsp 1", "1000", "-s audio_ch 4");
            System.Threading.Thread.Sleep(1000);
            Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(4000);
            string mic3name = "3# Mic Test";
            IntPtr mic3 = FindWindow(null, mic3name);
            while (mic3 == IntPtr.Zero)
            {
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(4000);
                break;
            } 
            micon("-s audio_dsp 1", "1000", "-s audio_ch 5");
            System.Threading.Thread.Sleep(1000);
            Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(4000);
            string mic4name = "4# Mic Test";
            IntPtr mic4 = FindWindow(null, mic4name);
            while (mic4 == IntPtr.Zero)
            {
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
                System.Threading.Thread.Sleep(4000);
                break;
            } 
            micon("-s audio_dsp 1", "1000", "-s audio_ch 6");
            System.Threading.Thread.Sleep(1000);
            Cursor.Position = new Point(rwStatus.Left + 54, rwStatus.Top + 280);
            mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
            System.Threading.Thread.Sleep(5000);


            IntPtr main_hWnd = FindWindow(null, "Dancy soundcheck");
            ShowWindowAsync(main_hWnd, WS_SHOWNORMAL);//??????
            SetForegroundWindow(main_hWnd);//????,???????,
        }
        public static void micon(string str1, string str2, string str3)
        {
            string currentPath = Directory.GetCurrentDirectory();
            System.Diagnostics.Process exep = new Process();
            exep.StartInfo.FileName = currentPath + "\\tdebt_145.exe";
            exep.StartInfo.Arguments = str1;
            exep.StartInfo.CreateNoWindow = true;
            exep.StartInfo.UseShellExecute = false;
            exep.Start();
            exep.WaitForExit();
            System.Diagnostics.Process exep1 = new Process();
            exep1.StartInfo.FileName = currentPath + "\\ksleep.exe";
            exep1.StartInfo.Arguments = str2;
            exep1.StartInfo.CreateNoWindow = true;
            exep1.StartInfo.UseShellExecute = false;
            exep1.Start();
            exep1.WaitForExit();
            System.Diagnostics.Process exep3 = new Process();
            exep3.StartInfo.FileName = currentPath + "\\tdebt_145.exe";
            exep3.StartInfo.Arguments = str3;
            exep3.StartInfo.CreateNoWindow = true;
            exep3.StartInfo.UseShellExecute = false;
            exep3.Start();
            exep3.WaitForExit();
        }
        public static void speakerdspoff(string str1)
        {
            string currentPath = Directory.GetCurrentDirectory();
            System.Diagnostics.Process exep = new Process();
            exep.StartInfo.FileName = currentPath + "\\tdebt_145.exe";
            exep.StartInfo.Arguments = str1;
            exep.StartInfo.CreateNoWindow = true;
            exep.StartInfo.UseShellExecute = false;
            exep.Start();
            exep.WaitForExit();
        }
    }
}
