using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer.DB
{
    public class ProductWarnningSpec
    {
        public string Product { get; set; }
        public string Station { get; set; }
        public double Spec_Percent { get; set; }
        public DateTime last_updated_date { get; set; }
    }
}
