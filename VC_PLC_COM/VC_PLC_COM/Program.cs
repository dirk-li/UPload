using System;
using System.IO.Ports;

namespace VC_PLC_COM
{
    class Program
    {
        private static SerialPort port;
        public static string comcmd="",return_str="",return_cmd="";
        static int Main(string[] args)
        {
            if (args.Length == 0)
            {
                Console.WriteLine("THIS TOOL CONTROL THE MOTOR FOR ARDUINO,BY DIRK_LI ON 2017/06/10 FIRST RELEASE");
                //set the color of the console form
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Set Y00~Y25                    VC_PLC_COM.exe COM3 SETY11");
                Console.WriteLine("RST Y00~25                     VC_PLC_COM.exe COM3 RSTY11");
                Console.WriteLine("Initial PLC                    VC_PLC_COM.exe COM3 Initial");
                Console.WriteLine("Reset all                      VC_PLC_COM.exe COM3 SETM0");
                Console.WriteLine("Read X0~X7,X10~X12             VC_PLC_COM.exe COM3 READ_X");
               
                Console.ResetColor();
                //press any key exit 
                Console.ReadKey();
                return 255;
                //break;
            }
            else if (args[1].Length != 0)
            {
                switch (args[1])
                {
                    case "Initial":
                        comcmd = ":0311EC";
                        return_cmd = ":03111203";
                        break;
                    case "SETM0":
                        comcmd = ":03050800FF00F1";
                        break;
                    case "SETY11":
                        comcmd = ":03050509FF00EB";
                        break;
                    case "RSTY11":
                        comcmd = ":030505090000EA";
                        break;
                    case "SETY12":
                        comcmd = ":0305050AFF00EA";
                        break;
                    case "RSTY12":
                        comcmd = ":0305050A0000E9";
                        break;
                    case "SETY13":
                        comcmd = ":0305050BFF00E9";                        
                        break;
                    case "RSTY13":
                        comcmd = ":0305050B0000E8";
                        break;
                    case "SETY14":
                        comcmd = ":0305050CFF00E8";
                        break;
                    case "RSTY14":
                        comcmd = ":0305050C0000E7";
                        break;
                    case "SETY15":
                        comcmd = ":0305050DFF00E7";
                        break;
                    case "RSTY15":
                        comcmd = ":0305050D0000E6";
                        break;
                    case "SETY16":
                        comcmd = ":0305050EFF00E6";
                        break;
                    case "RSTY16":
                        comcmd = ":0305050E0000E5";
                        break;
                    case "SETY17":
                        comcmd = ":0305050FFF00E5";
                        break;
                    case "RSTY17":
                        comcmd = ":0305050F0000E4";
                        break;
                    case "SETY18":
                        comcmd = ":03050518FF00DC";
                        break;
                    case "RSTY18":
                        comcmd = ":030505180000DB";
                        break;
                    case "SETY19":
                        comcmd = ":03050519FF00DB";
                        break;
                    case "RSTY19":
                        comcmd = ":030505190000DA";
                        break;
                    case "SETY20":
                        comcmd = ":03050510FF00E4";
                        break;
                    case "RSTY20":
                        comcmd = ":030505100000E3";
                        break;
                    case "SETY21":
                        comcmd = ":03050511FF00E3";
                        break;
                    case "RSTY21":
                        comcmd = ":030505110000E2";
                        break;
                    case "SETY22":
                        comcmd = ":03050512FF00E2";
                        break;
                    case "RSTY22":
                        comcmd = ":030505120000E1";
                        break;
                    case "SETY23":
                        comcmd = ":03050513FF00E1";
                        break;
                    case "RSTY23":
                        comcmd = ":030505130000E0";
                        break;
                    case "SETY24":
                        comcmd = ":03050514FF00E0";
                        break;
                    case "RSTY24":
                        comcmd = ":030505140000DF";
                        break;
                    case "SETY25":
                        comcmd = ":03050515FF00DF";
                        break;
                    case "RSTY25":
                        comcmd = ":030505150000DE";
                        break;
                    case "SETY26":
                        comcmd = ":03050516FF00DE";
                        break;
                    case "RSTY26":
                        comcmd = ":030505150000DD";
                        break;
                    case "SETY27":
                        comcmd = ":03050517FF00DD";
                        break;
                    case "RSTY27":
                        comcmd = ":030505170000DC";
                        break;
                 
                    case "SETY00":
                        comcmd = ":03050500FF00F4";
                        break;
                    case "RSTY00":
                        comcmd = ":030505000000F3";
                        break;
                    case "SETY01":
                        comcmd = ":03050501FF00F3";
                        break;
                    case "RSTY01":
                        comcmd = ":030505010000F2";
                        break;
                    case "SETY02":
                        comcmd = ":03050502FF00F2";
                        break;
                    case "RSTY02":
                        comcmd = ":030505020000F1";
                        break;
                    case "SETY03":
                        comcmd = ":03050503FF00F1";
                        break;
                    case "RSTY03":
                        comcmd = ":030505030000F0";
                        break;
                    case "SETY04":
                        comcmd = ":03050504FF00F0";
                        break;
                    case "RSTY04":
                        comcmd = ":030505040000EF";
                        break;
                    case "SETY05":
                        comcmd = ":03050505FF00EF";
                        break;
                    case "RSTY05":
                        comcmd = ":030505050000EE";
                        break;
                    case "SETY06":
                        comcmd = ":03050506FF00EE";
                        break;
                    case "RSTY06":
                        comcmd = ":030505060000ED";
                        break;
                    case "SETY07":
                        comcmd = ":03050507FF00ED";
                        break;
                    case "RSTY07":
                        comcmd = ":030505070000EC";
                        break;
                    
                    case "SETY10":
                        comcmd = ":03050508FF00EC";
                        break;
                    case "RSTY10":
                        comcmd = ":030505080000EB";
                        break;
                    case "READ_X":
                        comcmd = ":03020400000BEC";
                        break;
                    //case "READ_XA":
                    //    comcmd = ":03020400FF00EC";
                    //    break;



                }

            }
            try
            {
                port = new SerialPort(args[0]);
                port.BaudRate = 9600;
                port.DataBits = 8;
                port.Handshake = Handshake.None;
                port.Open();
                // System.Threading.Thread.Sleep(2000);
                //Write the parameter to Com Port 
                if (args.Length != 0)
                {
                    comcmd = args[2].Substring(0,args[2].Length);
                    port.Write(comcmd + "\r\n");
                    System.Threading.Thread.Sleep(200);
                    return_str = port.ReadLine();
                    Console.WriteLine(return_str);
                    if (return_str.Contains(comcmd))
                    {
                        return 0;
                    }
                    else if (args[1] == "READ_X")
                    {
                        string s1 = return_str.Substring(return_str.Length - 7, 4);
                        switch (return_str.Substring(return_str.Length - 7, 4))
                        {
                            case "0000":
                                Console.WriteLine("X_L");
                                return 0;
                            case "0100":
                                Console.WriteLine("X0_H");
                                return 0;
                            case "0200":
                                Console.WriteLine("X1_H");
                                return 0;
                            case "0400":
                                Console.WriteLine("X2_H");
                                return 0;
                            case "0800":
                                Console.WriteLine("X3_H");
                                return 0;
                            case "1000":
                                Console.WriteLine("X4_H");
                                return 0;
                            case "2000":
                                Console.WriteLine("X5_H");
                                return 0;
                            case "4000":
                                Console.WriteLine("X6_H");
                                return 0;
                            case "8000":
                                Console.WriteLine("X7_H");
                                return 0;
                            case "0001":
                                Console.WriteLine("X10_H");                                
                                return 0;
                            case "0002":
                                Console.WriteLine("X11_H");
                                return 0;
                            case "0004":
                                Console.WriteLine("X12_H");
                                return 0;

                        }

                        return -1;
                    }
                    else if (return_str.Contains(return_cmd))
                    {
                        return 0;
                    }
                    else
                    {
                        return -1;
                    }
                }
                return 1;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return -1;
            }
        }

        private static string CharArrayTosting(char[] cha, int len)
        {
            string str = "";

            for (int i = 0; i < len; i++)
            {
                str += string.Format("{0}", cha[i]);
            }

            return str;
        }
    }
}
