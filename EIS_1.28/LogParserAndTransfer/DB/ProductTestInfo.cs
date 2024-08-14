using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;
using FileHelpers;

namespace LogParserAndTransfer.DB
{
    /*
    public class MoneyConverter : ConverterBase
    {
        public override object StringToField(string from)
        {
            bool f = true;
            int val = -123;
            try
            {
                val = Convert.ToInt32(from);
            }
            catch(Exception e)
            {
                f = false;
            }
            return val;
        }
    }
    */

    //[Table("product_eis.product_test_info")]
    [DelimitedRecord(",")]
    public class ProductTestInfo
    {
        public string test_index { get; set; }
        public string product { get; set; }
        public string station { get; set; }
        public string work_id { get; set; }
        public string pcmac { get; set; }
        //[FieldConverter(ConverterKind.Decimal)]
        //[FieldConverter(typeof(MoneyConverter))]
        public int result { get; set; }
        public int frequency { get; set; }
        public int process { get; set; }
        public int failtimes { get; set; }
        public int rework { get; set; }
        public string errorinfo { get; set; }
        public string CheckedIn { get; set; }
        public string StationIndex { get; set; }
        public string IsLastStation { get; set; }
        public  DateTime time { get; set; }
        public string DoneWithDB { get; set; }
        public string PlatForm { get; set; }

        public ProductTestInfo()
        {
            test_index = "";
            product = "";
            station = "";
            work_id = "";
            pcmac = "";
            result = -1;
            frequency = -1;
            process = -1;
            failtimes = -1;
            rework = -1;
            errorinfo = "";
            CheckedIn = "";
            StationIndex = "";
            IsLastStation = "";
            time = DateTime.MinValue;
            DoneWithDB = "0";
            PlatForm = "";
         
        }
    }
}
