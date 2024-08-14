using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    interface ICSVFileParser
    {
        void ReadCSVFile(string fileName);
    }
}
