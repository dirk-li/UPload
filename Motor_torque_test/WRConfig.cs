using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace AF
{
    public static class WRConfig
    {
        private static ILog m_log = LogManager.GetLogger("log");
        private static string scanInfoFileName = "./Config.json";
        private static object syncRoot = new object();

        public static string GetValue(string key)
        {
            bool acquired = false;
            string val = "";
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(3));
                if (acquired)
                {
                    StreamReader sr = File.OpenText(scanInfoFileName);
                    JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                    bool isKeyExis = jsonFileObj.ContainsKey(key);
                    if (isKeyExis)
                    {
                        try
                        {
                            val = (string)jsonFileObj[key];
                        }
                        catch (Exception e)
                        {
                            m_log.Error(e.ToString());
                            sr.Close();
                        }
                    }
                    sr.Close();
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during GetValue(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }

            return val;
        }

        public static bool WriteValue(string key, string val)
        {
            bool isSucc = true;
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    StreamReader sr = null;
                    try
                    {
                        sr = File.OpenText(scanInfoFileName);
                        JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                        bool isExist = jsonFileObj.ContainsKey(key);
                        if (isExist)
                        {
                            jsonFileObj[key] = val;
                            string convertString = Convert.ToString(jsonFileObj);
                            sr.Close();
                            File.WriteAllText(scanInfoFileName, convertString);//将内容写进jon文件中
                        }
                        else
                        {
                            jsonFileObj.Add(new JProperty(key, val));
                            string convertString = Convert.ToString(jsonFileObj);//将json装换为string
                            sr.Close();
                            File.WriteAllText(scanInfoFileName, convertString);//将内容写进jon文件中
                        }
                    }
                    catch (Exception e)
                    {
                        if (sr != null) sr.Close();
                        isSucc = false;
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during WriteValue(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                }
            }
            return isSucc;
        }
    }
}
