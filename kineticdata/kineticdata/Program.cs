using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
namespace kineticdata
{
    class Program
    {
        static int Main(string[] args)
        {
            
            if (args.Length == 0||args[0] == "/?" || args[0] == "?"|| args[0] == "??"||args[0] == "help" || args[0] == "/help")
            {
                Console.WriteLine("/strdata: compare string module value     ||eg: kineticdata.exe /strdata tablehubFw.in tablefw_result.txt ");
                Console.WriteLine("/intdata: compare int module value        ||eg:kineticdata.exe /intdata color.in color_result.txt ");
                Console.WriteLine("/doubledata: compare double module value  ||eg:kineticdata.exe / doubledata POWER117.in power117_result.txt");
                return -1;
            }
            else
            {
                if (File.Exists(args[1]))
                {
                    if (File.Exists(args[2]))
                    {
                        string[] outstrin = null;
                        outstrin = File.ReadAllLines(args[1]);
                        string[] outfilearray = null;
                        string currentpath = Directory.GetCurrentDirectory();
                        string[] lowlimitstr = readspeac(args[1], "LowLimit");
                        string[] uplimitstr = readspeac(args[1], "UpLimit");
                        string headoutstr = outstr(outstrin, "Headers");
                        string lowlimitoutstr = outstr(outstrin, "LowLimit");
                        string uplimitoutstr = outstr(outstrin, "UpLimit");
                        string TargetLimitoutstr = outstr(outstrin, "TargetLimit");
                        string outname = outfilename(outstrin, "outputFile");
                        if (outname.Length == 0)
                        {
                            outname = args[1].Remove(args[1].Length - 3) + ".out";
                        }
                        string[] strdata_1 = readdata(args[2]);
                        string outdata = File.ReadAllText(args[2]);
                        if (outdata.Length == 0)
                        {
                            Console.WriteLine("value.txt error");
                            return 255;
                        }

                        switch (args[0])
                        {
                            case ("/strdata"):

                                if (lowlimitoutstr.IndexOf("N/A", StringComparison.OrdinalIgnoreCase) >= 0 && uplimitoutstr.IndexOf("N/A", StringComparison.OrdinalIgnoreCase) >= 0)
                                {
                                    outfilearray = outputfile(0, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                    File.WriteAllLines(outname, outfilearray);
                                    Console.WriteLine("Good Value");
                                    return 0;
                                }
                                else if (Enumerable.SequenceEqual(lowlimitstr, strdata_1) && Enumerable.SequenceEqual(uplimitstr, strdata_1))
                                {
                                    outfilearray = outputfile(0, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                    File.WriteAllLines(outname, outfilearray);
                                    Console.WriteLine("Good Value");
                                    return 0;
                                }
                                else
                                {
                                    Console.WriteLine("FAIL");
                                    return 1;
                                }
                            case "/intdata":
                                int[] lowlimitspec_int = strtoint(lowlimitstr);
                                int[] uplimitspec_int = strtoint(uplimitstr);
                                int[] value_int = strtoint(strdata_1);
                                for (int i = 0; i < value_int.Length; i++)
                                {

                                    if (lowlimitspec_int[i] > value_int[i] || uplimitspec_int[i] < value_int[i])
                                    {
                                        outfilearray = outputfile(1, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                        File.WriteAllLines(outname, outfilearray);
                                        Console.WriteLine("FAIL");
                                        return 1;
                                    }
                                }
                                outfilearray = outputfile(0, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                File.WriteAllLines(outname, outfilearray);
                                Console.WriteLine("Good Value");
                                return 0;
                            case "/doubledata":
                                double[] lowlimitspec_dou = strtodouble(lowlimitstr);
                                double[] uplimitspec_dou = strtodouble(uplimitstr);
                                double[] value_dou = strtodouble(strdata_1);
                                for (int i = 0; i < value_dou.Length; i++)
                                {

                                    if (lowlimitspec_dou[i] > value_dou[i] || uplimitspec_dou[i] < value_dou[i])
                                    {
                                        outfilearray = outputfile(1, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                        File.WriteAllLines(outname, outfilearray);
                                        Console.WriteLine("FAIL");
                                        return 1;
                                    }
                                }
                                outfilearray = outputfile(0, headoutstr, outdata, lowlimitoutstr, uplimitoutstr, TargetLimitoutstr);
                                File.WriteAllLines(outname, outfilearray);
                                Console.WriteLine("Good Value");
                                return 0;

                            default:
                                Console.WriteLine("/strdata: compare string module value     ||eg: kineticdata.exe /strdata tablehubFw.in tablefw_result.txt ");
                                Console.WriteLine("/intdata: compare int module value        ||eg:kineticdata.exe /intdata color.in color_result.txt ");
                                Console.WriteLine("/doubledata: compare double module value  ||eg:kineticdata.exe / doubledata POWER117.in power117_result.txt");
                                return 1;
                        }
                    }
                    else
                    {
                        Console.WriteLine("not exist data file");
                        return 255;
                    }
                }
                else
                {
                    Console.WriteLine("not exist .in file");
                    return 255;
                }
            }
               

        }
        public static string[] readspeac(string filename, string item)
        {
            string[] strarray = null;
            string[] inread = File.ReadAllLines(filename);
            foreach (string instr in inread)
            {
                if (instr.IndexOf(item, StringComparison.OrdinalIgnoreCase)>=0)
                {
                    string original = instr;
                    string original_1 = original.Substring(original.IndexOf('=') + 1);

                    string original_2 = Regex.Replace(original_1, @"\s", "");
                    strarray = original_2.Split(',');
                }
            }
            return strarray;
        }
        public static string[] readdata(string filename)
        {
            string[] strarray = null;
            string[] inread = File.ReadAllLines(filename);
            foreach (string i in inread)
            {
                string original = i;
                string original_1 = original.Substring(original.IndexOf('=') + 1);
                string original_2 = Regex.Replace(original_1, @"\s", "");
                strarray = original_2.Split(',');
            }
            return strarray;
        }
        public static string outstr(string[] strarray,string item)
        {
            string inoutstr="";            
            foreach (string i in strarray)
            {
                if (i.IndexOf(item, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    inoutstr = i;
                }          
             }
            
            return inoutstr;
            
        }
        public static string outfilename(string[] strarray,string item)
        {
            string filename = "";
            foreach (string i in strarray)
            {
                if (i.IndexOf(item, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    filename = i.Substring(i.IndexOf('=')+1);
                }
            }
            return filename;
        }
        public static string[] outputfile(int result,string headstr,string valuestr,string lowlimitstr,string uplimitstr,string TargetLimitstr)
        {
            string[] outputarray =new string[15];
            if (result == 0)
            {
                outputarray[0] = "[Outputs]";
                outputarray[1] = "Status=" + result.ToString();
                outputarray[2] = "ReturnCode=" + result.ToString();
                outputarray[3] = "Message=OK!";
                outputarray[4] = headstr;
                outputarray[5] = "Values=" + valuestr;
                outputarray[6] = "";
                outputarray[7] = lowlimitstr;
                outputarray[8] = uplimitstr;
                outputarray[9] = TargetLimitstr;

            }
            else
            {
                outputarray[0] = "[Outputs]";
                outputarray[1] = "Status=" + result.ToString();
                outputarray[2] = "ReturnCode=" + result.ToString();
                outputarray[3] = "Message=FAIL!";
                outputarray[4] = headstr;
                outputarray[5] = "Values=" + valuestr;
                outputarray[6] = "";
                outputarray[7] = lowlimitstr;
                outputarray[8] = uplimitstr;
                outputarray[9] = TargetLimitstr;
            }
            return outputarray;
        }
        public static int[] strtoint(string[] strarray)
        {
            int[] intarray = new int[strarray.Length];
            for (int i=0; i<strarray.Length;i++)
            {
                intarray[i] = Convert.ToInt32(strarray[i]);
            }
            return intarray;
        }
        public static double[] strtodouble(string[] strarray)
        {
            double[] douarray = new double[strarray.Length];
            for (int i = 0; i < strarray.Length; i++)
            {
                douarray[i] = Convert.ToDouble(strarray[i]);
            }
            return douarray;
        }
    }
}