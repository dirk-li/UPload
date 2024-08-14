using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace LogParserAndTransfer
{
    public static class QISHandler
    {
        private static ILog m_log = LogManager.GetLogger("log");
        private static RestClient client = new RestClient(@"http://172.25.161.232:84/");
        private static object syncRoot = new object();

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static bool InsertRework(InsertedRework reworkObj,out string messageRes)
        {
            bool isSucc = false;
            bool acquired = false;
            string message = "";
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    client.Method = EnumHttpVerb.POST;
                    client.PostData = JsonConvert.SerializeObject(reworkObj);
                    string resultPost = client.HttpRequest("rework/eisapi/insertReworkInfo");
                    dynamic deserialized = JObject.Parse(resultPost);
                    string code = deserialized["code"];
                    message = deserialized["message"];
                    isSucc = code == "0";
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during InsertRework(): {ex.Message}.");
            }
            finally
            {
                messageRes = message;
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            return isSucc;
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static ReworkStatus GetRework(QueryRework reworkObj)
        {
            ReworkStatus reworkStatus = new ReworkStatus();
            reworkStatus.code = "-1";
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    client.Method = EnumHttpVerb.POST;
                    client.PostData = JsonConvert.SerializeObject(reworkObj);
                    string resultPost = client.HttpRequest("rework/eisapi/getReworkInfo");
                    JObject deserialized = JObject.Parse(resultPost);
                    string code = deserialized["code"].ToString();
                    string message = deserialized["message"].ToString();
                    string reworkstatus = "";
                    string reworkid = "";
                    if (deserialized.ContainsKey("reworkstatus") &&
                        deserialized.ContainsKey("reworkid"))
                    {
                        reworkstatus = deserialized["reworkstatus"].ToString();
                        reworkid = deserialized["reworkid"].ToString();
                    }

                    reworkStatus.code = code;
                    reworkStatus.message = message;
                    reworkStatus.reworkstatus = reworkstatus;
                    reworkStatus.reworkid = reworkid;
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during GetReworkID(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }

            return reworkStatus;
        }
    }
}
