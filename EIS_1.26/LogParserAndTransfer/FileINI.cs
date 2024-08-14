using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    public class FileINI
    {
        [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern long WritePrivateProfileString(string sectionName, string key, string value, string filePath);

        [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        private string filepath;

        public FileINI(string filepath)
        {
            this.filepath = filepath;
        }

        public void WriteIni(string section, string key, string val)
        {
            WritePrivateProfileString(section, key, val, filepath);
        }

        public string ReadIni(string section, string key)
        {
            StringBuilder temp = new StringBuilder(255);
            GetPrivateProfileString(section, key, "", temp, 255, filepath);
            return temp.ToString();
        }
    }
}
