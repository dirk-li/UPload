using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Upgrade
{
    class Program
    {
        //[System.Runtime.InteropServices.DllImport("kernel32.dll")]
        //public static extern Boolean AllocConsole();
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, Upgrade EIS App!");
            UpgradeTool.RunBatFile();

            //Console.ReadLine();
            Thread.Sleep(TimeSpan.FromMinutes(3));
            //System.Environment.Exit(0);
        }
    }
}
