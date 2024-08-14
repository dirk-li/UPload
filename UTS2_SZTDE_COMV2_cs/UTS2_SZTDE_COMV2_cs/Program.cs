using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDECSharpDll
{
    public static class Program
    {
        static String_Class Com_string_Class = new String_Class();
        static Hex_Class com_hex_class = new Hex_Class();
        public static bool StartTest(string[] args, StringBuilder pisData, StringBuilder pisErrorMessage, StringBuilder testResultInfo)
        {
            bool bReResult = true;
            string dataResult = "";
            StringBuilder testData = new StringBuilder();
            int cmd = int.Parse(args[3].Split(':')[0]);
            switch (cmd)
            {
                case 1://Auto Initial Comport
                    if (Com_string_Class.AutoInitialCom(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Open Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Open Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 2://Initial Comport
                    if (Com_string_Class.InitialCom(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Open Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Open Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 3://Query
                    if (Com_string_Class.QueryData(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Query Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Query Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 4://Write
                    if (Com_string_Class.WriteData(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Write Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Write Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 5://CloseCom
                    if (Com_string_Class.CloseCom(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Write Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Write Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 6://CloseAllCom
                    if (Com_string_Class.CloseALLCom(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Write Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Write Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 7://Hex_Query
                    if (com_hex_class.HexQueryData(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Query Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Query Com Exception!;");
                        bReResult = false;
                    }
                    break;
                case 8://HexAutoInitialCom
                    if (com_hex_class.HexAutoInitialCom(pisData, testResultInfo, args))
                    {
                        //testResultInfo.Append("Query Com success!;");
                    }
                    else
                    {
                        //testResultInfo.Append("Query Com Exception!;");
                        bReResult = false;
                    }
                    break;
            }

            return bReResult;
        }
    }
}
