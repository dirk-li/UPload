using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer.DB
{
    public class EPMWorkid
    {
        public string IdDPSlist { get; set; }
        public string FactoryName { get; set; }
        public string LineName { get; set; }
        public string JobDate { get; set; }
        public string PartNo { get; set; }
        public string JobSeq { get; set; }
        public string FaiName { get; set; }
        public string WorkShiftName { get; set; }
        public string GroupLeader { get; set; }
        public int JobQty { get; set; }
        public string GroupLeaderName { get; set; }
        public int Status { get; set; }
        public int CompletedQty { get; set; }
        public int VarianceQty { get; set; }
        public string DpsType { get; set; }
        public string Remark { get; set; }
        public string JobRemark { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string LastUpdateBy { get; set; }
        public DateTime LastUpdateDate { get; set; }
        public string Ctype { get; set; }
        public int FaiStatus { get; set; }
        public string ModelName { get; set; }
        public int IPCStatus { get; set; }
        public int FaiSeq { get; set; }
        public string GUID { get; set; }
        
    }
}
