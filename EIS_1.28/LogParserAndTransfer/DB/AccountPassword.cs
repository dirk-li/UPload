using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;

namespace LogParserAndTransfer.DB
{
    public class AccountPassword
    {
        public string Account { get; set; }
        public string Password { get; set; }
    }
}

