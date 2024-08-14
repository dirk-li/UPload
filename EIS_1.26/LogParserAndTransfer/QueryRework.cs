using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    [Serializable]
    public class QueryRework
    {
        public string uid { get; set; }
        public string product { get; set; }
        public string failedstationname { get; set; }
    }
}
