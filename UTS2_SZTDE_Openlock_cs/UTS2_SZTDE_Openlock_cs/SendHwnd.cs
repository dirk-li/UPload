using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Runtime.InteropServices;

namespace TDECSharpDll
{
    class SendHwnd
    {
        [DllImport("user32.dll")]
        private static extern bool SetCursorPos(int x, int y);

        [DllImport("user32.dll")]
        private static extern void mouse_event(uint dwFlags, uint dx, uint dy, uint dwData, UIntPtr dwExtraInfo);

        const uint MOUSEEVENTF_LEFTDOWN = 0x02;
        const uint MOUSEEVENTF_LEFTUP = 0x04;

        [DllImport("user32.dll")]
        public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        [DllImport("user32.dll",EntryPoint ="SetForegroundWindow")]
        public static extern IntPtr SetForegroundWindow(IntPtr hWnd);
        [DllImport("User32.dll ")]
        public static extern IntPtr FindWindowEx(IntPtr parent, IntPtr childe, string strclass, string FrmText);
        [DllImport("User32.dll", EntryPoint = "SendMessage")]
        private static extern int SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, string lParam);
        [DllImport("user32.dll", EntryPoint = "SendMessageA")]
        private static extern int SendMessage(IntPtr hwnd, int wMsg, int wParam, StringBuilder lParam);
        [DllImport("user32.dll", SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool GetWindowRect(IntPtr hWnd, out RECT lpRect);


        [StructLayout(LayoutKind.Sequential)]
        public struct RECT
        {
            public int Left;
            public int Top;
            public int Right;
            public int Bottom;
        }





        public bool Checkfileexist(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:Comport,2:Com parameter}
        {
            bool bResult = false;
            string filename = argsdata[4].ToString();
            //int line_num = int.Parse(argsdata[5]);
            try
            {

                if (File.Exists(filename))
                {
                    pisData.Append("PASS");
                    testResultInfo.Append("Get file:" + filename + " Success;");
                    //listSP.Add(sp);
                    bResult = true;
                }
                else
                {
                    testResultInfo.Append("Get File FAIL");
                    bResult = false;
                }

            }
            catch (Exception ex)
            {
                testResultInfo.Append("Open " + argsdata[4].Trim().ToUpper().ToString() + " exception:" + ex.ToString() + ";");
                bResult = false;
            }
            return bResult;
        }
        public bool SendEnter(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:Comport,2:Com parameter}
        {
            bool bResult = false;
            string Mainwindow_title = argsdata[4].ToString();
            string Childwind_title = argsdata[5].ToString();
            int left_shift =int.Parse(argsdata[6]);
            int Top_shift = int.Parse(argsdata[7]);
            //int line_num = int.Parse(argsdata[5]);
            try
            {
                IntPtr mainhwnd = FindWindow(null, Mainwindow_title);
                SetForegroundWindow(mainhwnd);
                //System.Threading.Thread.Sleep(1000);
                RECT rect;
                GetWindowRect(mainhwnd,out rect);
                if (rect.Bottom > 0)
                {
                    //int a = rect.Bottom - rect.Top;
                    //int b = rect.Right - rect.Left;
                    //SetCursorPos(a, b);
                    SetForegroundWindow(mainhwnd);
                    SetCursorPos(rect.Right-left_shift,rect.Bottom-Top_shift);
                    // 模拟鼠标左键点击
                    SetForegroundWindow(mainhwnd);
                    System.Threading.Thread.Sleep(1000);
                    mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, UIntPtr.Zero);
                    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, UIntPtr.Zero);
                    
                    pisData.Append((rect.Right - left_shift) + ";"+(rect.Bottom - Top_shift));
                    testResultInfo.Append("Send Enter PASS");
                    //listSP.Add(sp);
                    bResult = true;

                }
                else
                {
                    testResultInfo.Append("Get mainwindow hwnd FAIL");
                    bResult = false;
                }

            }
            catch (Exception ex)
            {
                testResultInfo.Append("Get mainwindow hwnd" + Mainwindow_title + " exception:" + ex.ToString() + ";");
                bResult = false;
            }
            return bResult;
        }
    }
}
