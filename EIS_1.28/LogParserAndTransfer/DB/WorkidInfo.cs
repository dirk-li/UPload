using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer.DB
{
    public class WorkidInfo
    {
        public string WorkID { get; set; }
        public string MacAddress { get; set; }
        public string Factory { get; set; }
        public string ProductionDate { get; set; }
        public string Line { get; set; }
        public string Product { get; set; }
        public string PartNum { get; set; }
        public string Mark1 { get; set; }
        public string Mark2 { get; set; }
        public string Mark3 { get; set; }
        public string Index { get; set; }
        public int Volume { get; set; }
        public DateTime StartproductionTime { get; set; }
    }
}
