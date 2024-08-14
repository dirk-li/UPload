using log4net;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Upgrade
{
    class UpgradeTool
    {
        private static ILog m_log = LogManager.GetLogger("log");
        public static string RunBatFile()
        {
            m_log.Info("Enter Upgrade APP RunBatFile.");
            string batFile = @".\ftprun.bat";
            string output = "";
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();

            //p.StandardInput.WriteLine(@"C:\Release\ftprun.bat");
            p.StandardInput.WriteLine(batFile);

            p.StandardInput.WriteLine("exit");
            //string strRst = p.StandardOutput.ReadToEnd();
            p.Close();
            //m_log.Info("bat output:"+ strRst);

            m_log.Info("Leave Upgrade APP RunBatFile.");
            return output;
            
        }
    }
}
