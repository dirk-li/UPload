using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AF
{
    public class FileINI
    {
        private ILog m_log = LogManager.GetLogger("log");

        [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern long WritePrivateProfileString(string sectionName, string key, string value, string filePath);

        [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        private string filepath;

        public FileINI(string filepath)
        {
            this.filepath = filepath;
        }

        public bool WriteIni(string section, string key, string val, int millisecondsDelay = 30)
        {
            int retryCount = 3;
            int index = 0;
            bool flag = false;
            while (index < retryCount && !flag)
            {
                index++;
                try
                {
                    WritePrivateProfileString(section, key, val, filepath);
                    flag = true;
                }
                catch (Exception e)
                {
                    Thread.Sleep(millisecondsDelay);
                    m_log.Error("WriteIni:" + e.Message);
                }
            }
            return flag;
        }
        public string ReadIni(string section, string key, int millisecondsDelay = 30)
        {
            string val = "";
            int retryCount = 3;
            int index = 0;
            bool flag = false;
            while (index < retryCount && !flag)
            {
                index++;
                try
                {
                    int size = 1024 * 1024 * 10;
                    StringBuilder temp = new StringBuilder(size);
                    GetPrivateProfileString(section, key, "", temp, size, filepath);
                    val = temp.ToString();
                    flag = true;
                }
                catch (Exception e)
                {
                    Thread.Sleep(millisecondsDelay);
                    m_log.Error("ReadIni:" + e.Message);
                }
            }
            return val;
        }
    }
}
