using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDECSharpDll
{
    public static class Program
    {
        static SendHwnd sendHwnd_test = new SendHwnd();
        public static bool StartTest(string[] args, StringBuilder pisData, StringBuilder pisErrorMessage, StringBuilder testResultInfo)
        {
            bool bReResult = true;
            string dataResult = "";
            StringBuilder testData = new StringBuilder();
            int cmd = int.Parse(args[3].Split(':')[0]);
            switch (cmd)
            {
                case 1://check file exist
                    if (sendHwnd_test.Checkfileexist(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Open Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Open Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 2://check file exist
                    if (sendHwnd_test.SendEnter(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Open Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Open Com Exception!;");
                        bReResult = false;
                    }
                    break;

            }

            return bReResult;
        }
    }
}
