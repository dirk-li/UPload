using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ATCAPI;

namespace TDECSharpDll
{
    class MainABTECTestClass
    {
        public static ATC ATc;
        public bool open_sequence(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)  //open project file
        {
            bool bResult = false;
            string project_name = argsdata[4];
            bool visible_value = false;
            
            try
            {

                if (argsdata[5] == "True")
                {
                    visible_value = true;
                }

                if (File.Exists(project_name))
                {
                    // Make the ATC application window visible
                    ATc = new ATC();
                    ATc.Visible = visible_value;
                    ATc.OpenProject(project_name);

                    bResult = true;
                    testResultInfo.Append("open project " + project_name + "PASS");
                    pisData.Append("PASS");
                }
                else
                {
                    testResultInfo.Append("no project "+project_name+"file exist");
                    pisData.Append("Fail");
                }
                return bResult;
            }
            catch (Exception)
            {
                return bResult;
            }
        }

        public bool run_sequence(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)
        {
            bool bResult = false;
            bool visible_value = false;
            ATc = new ATC();
            try
            {
               
                if (argsdata[5] == "False")
                {
                    ATc.Visible = false;
                }
                ATc.Visible = visible_value;
                ATc.Sequence.Run();
                //ATc.Sequence.Run(argsdata[4]);
               
                if (ATc.Sequence.Passed)
                {
                    bResult = true;
                    testResultInfo.Append("run project PASS");
                    pisData.Append("PASS");
                }
                else
                {
                    testResultInfo.Append("run project Fail");
                    pisData.Append("Fail");

                }
                    return bResult;

            }
            catch (Exception ex)
            {
                testResultInfo.Append(ex.ToString());
                return bResult;
            }

        }

        public bool close_sequence(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)
        {
            bool bResult = false;
            ATc = new ATC();
            try
            {
                //bool visible_value = Convert.ToBoolean(argsdata[4]);
                //atc.Visible = visible_value;
                ATc.Exit();

                bResult = true;
                testResultInfo.Append("exit sequence PASS");
                pisData.Append("PASS");
                return bResult;

            }
            catch (Exception ex)
            {
                testResultInfo.Append(ex.Message.ToString());
                return bResult;
            }

        }

    }
}
