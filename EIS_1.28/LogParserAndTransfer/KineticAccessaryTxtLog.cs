using FileHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    [DelimitedRecord(",")]
    [IgnoreEmptyLines()]
    class KineticAccessaryTxtLog
    {
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string ColumnContent { get; set; }
    }
}
