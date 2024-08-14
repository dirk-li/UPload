using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDECSharpDll
{
    public static class Program
    {
        static MainABTECTestClass MainABTECTest = new MainABTECTestClass();
        public static bool StartTest(string[] args, StringBuilder pisData, StringBuilder pisErrorMessage, StringBuilder testResultInfo)
        {
            bool bReResult = true;
            //string dataResult = "";
            StringBuilder testData = new StringBuilder();
            int cmd = int.Parse(args[3].Split(':')[0]);
            switch (cmd)
            {

                case 1: //open sequence file
                    if (MainABTECTest.open_sequence(pisData, testResultInfo, args))
                    {

                    }
                    else
                    {
                        bReResult = false;
                    }
                    break;
                case 2: //run sequence
                    if (MainABTECTest.run_sequence(pisData, testResultInfo, args))
                    {

                    }
                    else
                    {
                        bReResult = false;
                    }
                    break;
                case 3: //exit
                    if (MainABTECTest.close_sequence(pisData, testResultInfo, args))
                    {

                    }
                    else
                    {
                        bReResult = false;
                    }
                    break;

            }

            return bReResult;
        }
    }
}
