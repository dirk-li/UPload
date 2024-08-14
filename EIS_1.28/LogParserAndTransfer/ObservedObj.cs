using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    public interface ObservedObj
    {
        bool IsRunning();
        string GetPlatformStr();
        void SetPlatformStr(string platfromstr);
        void StartScan();
    }
}
