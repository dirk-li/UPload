using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VC_COM
{
    class Program
    {
        private static SerialPort port;
        static int Main(string[] args)
        {
            if (args.Length == 0)
            {
                Console.ReadKey();
                return 255;
            }
            port = new SerialPort(args[0]);
            port.BaudRate = int.Parse(args[1]);
            port.DataBits = 8;
            port.Handshake = Handshake.None;
            port.Open();
        
            if (args[2].Length != 0)
            {
                port.Write(args[2]);
                //System.Threading.Thread.Sleep(200);
                //string str = port.ReadLine();
                string str = port.ReadExisting();
                Console.WriteLine(str);
                return 0;
            }
            else
            {
                Console.WriteLine("no input message");
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
