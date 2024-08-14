using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    [Serializable]
    public class InsertedRework
    {
        public string reworkid { get; set; }
        public string uid { get; set; }
        public string workid { get; set; }
        public string product { get; set; }
        public string failedstationname { get; set; }
        public string failedstationsequence { get; set; }
        public string errorcode { get; set; }
        public string errordescription { get; set; }
        public string failedvalue { get; set; }
    }
}
