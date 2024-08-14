using LogParserAndTransfer.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    public static class TestContext
    {
        private static volatile bool isUseReworkProcess;
        private static volatile bool isUseEIS;
        private static string product;
        private static string uid;
        private static string stationname;
        private static string stationindex;
        private static bool islaststation;
        private static volatile int teststatus; //1 running, 2 idle
        private static string workid;
        private static string platform;
        private static int uidColumnIndexInLog;
        private static string logFile;
        private static DateTime dutTestTime;
        private static ProductTestInfo historicProductTestInfo;
        private static ProductTestInfo currProductTestInfo;
        private static ProductDashboard dashboard;
        private static ReworkStatus reworkInfo;
        private static volatile bool useNetwork;

        public static bool IsUseReworkProcess {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                isUseReworkProcess = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return isUseReworkProcess;
            }
        }

        
        public static bool IsUseEIS
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                isUseEIS = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return isUseEIS;
            }
        }

        public static string Product
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                product = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return product;
            }
        }

        public static string UID
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                uid = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return uid;
            }
        }

        public static string Stationname
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                stationname = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return stationname;
            }
        }

        public static string Stationindex
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                stationindex = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return stationindex;
            }
        }

        public static bool Islaststation
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                islaststation = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return islaststation;
            }
        }

        public static int Teststatus
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                teststatus = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return teststatus;
            }
        }

        public static string Workid
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                workid = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return workid;
            }
        }

        public static ProductTestInfo HistoricProductTestInfo
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                historicProductTestInfo = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return historicProductTestInfo;
            }
        }

        public static ProductTestInfo CurrProductTestInfo
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                currProductTestInfo = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return currProductTestInfo;
            }
        }

        public static ReworkStatus CurrDUTReworkInfo
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                reworkInfo = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return reworkInfo;
            }
        }

        public static string Platform
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                platform = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return platform;
            }
        }

        public static string LogFile
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                logFile = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return logFile;
            }
        }

        public static int UIDColumnIndexInLog
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                uidColumnIndexInLog = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return uidColumnIndexInLog;
            }
        }

        public static DateTime DUTTestTime
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                dutTestTime = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return dutTestTime;
            }
        }

        public static ProductDashboard Dashboard
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                dashboard= value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return dashboard;
            }
        }

        public static bool UseNetwork
        {
            [MethodImpl(MethodImplOptions.Synchronized)]
            set
            {
                useNetwork = value;
            }
            [MethodImpl(MethodImplOptions.Synchronized)]
            get
            {
                return useNetwork;
            }
        }

    }
}
