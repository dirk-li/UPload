using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    [Serializable]
    public class ReworkStatus
    {
        public string message { get; set; }
        public string code { get; set; }
        public string reworkstatus { get; set; }
        public string reworkid { get; set; }
    }
}
