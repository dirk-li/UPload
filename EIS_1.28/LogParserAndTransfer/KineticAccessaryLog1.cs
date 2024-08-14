using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using FileHelpers;

namespace LogParserAndTransfer
{
    [DelimitedRecord(",")]
    [IgnoreEmptyLines()]
    class KineticAccessaryLog1
    {
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string SN { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string ProductName { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Station { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string IsLastStation { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string TestTime { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Result { get; set; }
    }
}
