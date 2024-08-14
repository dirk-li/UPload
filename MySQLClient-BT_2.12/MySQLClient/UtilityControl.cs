using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MySQLClient
{
    public class UtilityControl
    {
        public static bool JudgeStringFormat(string inputStr)
        {
            Regex reg = new Regex(@"[\u4e00-\u9fa5]");
            if (reg.IsMatch(inputStr))
                return true;
            else
                return false;
        }
    }
}
