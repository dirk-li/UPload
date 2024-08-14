using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using log4net;
using System.Threading;

namespace LogParserAndTransfer
{
    public class ScanInfoUpdate
    {
        private readonly string scanInfoFileName = AppSetting.Default.OutputFolder + AppSetting.Default.ScanInfoFile;
        private readonly ILog m_log = LogManager.GetLogger("log");
        private static object syncRoot = new object();
        
        public ScanInfoUpdate()
        {
            
        }

        public int ReadLastOperLine(string csvLogFileName)
        {
            bool acquired = false;
            int line = 0;
            csvLogFileName = "*_" + csvLogFileName;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                    }
                    StreamReader sr = File.OpenText(scanInfoFileName);
                    JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                    string key = csvLogFileName;
                    bool isKeyExis = jsonFileObj.ContainsKey(key);
                    if (isKeyExis)
                    {
                        try
                        {
                            line = (int)jsonFileObj[key];
                        }
                        catch (Exception e)
                        {
                            m_log.Error("ScanInfoUpdate1 " + e.ToString());
                            sr.Close();
                        }
                    }
                    sr.Close();
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during ReadLastOperLine(): {ex.Message}.");
                //Tool.JsonDestroyedHandle();
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return line;
        }

        public string GetValue(string key)
        {
            bool acquired = false;
            string val = "";
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                    }

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
                            m_log.Error("ScaninfoUpdate2 " + e.ToString());
                            sr.Close();
                        }
                    }
                    sr.Close();
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during GetValue(): {ex.Message}.");
                //Tool.JsonDestroyedHandle();
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return val;
        }

        public string GetValue(string key,string filefullpath)
        {
            bool acquired = false;
            string val = "";
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                    }

                    StreamReader sr = File.OpenText(filefullpath);
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
                            m_log.Error("ScaninfoUpdate2 " + e.ToString());
                            sr.Close();
                        }
                    }
                    sr.Close();
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during GetValue(): {ex.Message}.");
                //Tool.JsonDestroyedHandle();
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return val;
        }

        public bool WriteLastOperLine(string csvLogFileName,int line)
        {
            bool isSucc = true;
            bool acquired = false;
            csvLogFileName = "*_" + csvLogFileName;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                        return false;
                    }
                    StreamReader sr = null;
                    try
                    {
                        sr = File.OpenText(scanInfoFileName);
                        JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                        string key = csvLogFileName;
                        bool isExist = jsonFileObj.ContainsKey(key);
                        if (isExist)
                        {
                            jsonFileObj[key] = line;
                            string convertString = Convert.ToString(jsonFileObj);
                            sr.Close();
                            File.WriteAllText(scanInfoFileName, convertString);//将内容写进jon文件中
                        }
                        else
                        {
                            jsonFileObj.Add(new JProperty(csvLogFileName, line));
                            string convertString = Convert.ToString(jsonFileObj);//将json装换为string
                            sr.Close();
                            File.WriteAllText(scanInfoFileName, convertString);//将内容写进jon文件中
                        }
                    }
                    catch (Exception e)
                    {
                        m_log.Error("ScanInfoUpdate3 " + e.ToString());
                        if (sr != null) sr.Close();
                        isSucc = false;
                        //Tool.JsonDestroyedHandle();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during WriteLastOperLine(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }
            
            return isSucc;
        }

        public bool WriteValue(string key, string val)
        {
            bool isSucc = true;
            bool acquired = false;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                        return false;
                    }

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
                        m_log.Error("ScanInfoUpdate4 " + e.ToString());
                        if (sr != null) sr.Close();
                        isSucc = false;
                        //Tool.JsonDestroyedHandle();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during WriteValue(): {ex.Message}.");
                Tool.JsonDestroyedHandle();
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return isSucc;
        }

        public bool WriteValue(string key, string val,string filename)
        {
            bool isSucc = true;
            bool acquired = false;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    StreamReader sr = null;
                    try
                    {
                        sr = File.OpenText(filename);
                        JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                        bool isExist = jsonFileObj.ContainsKey(key);
                        if (isExist)
                        {
                            jsonFileObj[key] = val;
                            string convertString = Convert.ToString(jsonFileObj);
                            sr.Close();
                            File.WriteAllText(filename, convertString);//将内容写进jon文件中
                        }
                        else
                        {
                            jsonFileObj.Add(new JProperty(key, val));
                            string convertString = Convert.ToString(jsonFileObj);//将json装换为string
                            sr.Close();
                            File.WriteAllText(filename, convertString);//将内容写进jon文件中
                        }
                    }
                    catch (Exception e)
                    {
                        m_log.Error("ScanInfoUpdate4 " + e.ToString());
                        if (sr != null) sr.Close();
                        isSucc = false;
                        //Tool.JsonDestroyedHandle();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during WriteValue(): {ex.Message}.");
                Tool.JsonDestroyedHandle();
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return isSucc;
        }

        public string GetSNColumnName(string product,string Station)
        {
            string sn = "";
            bool acquired = false;
            try
            {
                //Logger.Debug("ScanServiceProc try enter syncRoot");
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    //Logger.Debug("syncRoot acquired, starting InternalScanServiceProc()...");
                    string key = product + "_" + Station;
                    sn = GetValue(key);
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during GetSNColumnName(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return sn;
        }

        public bool DeleteLogFileKey()
        {
            bool isSucc = true;
            bool acquired = false;
            try
            {
                acquired = Monitor.TryEnter(syncRoot, TimeSpan.FromMinutes(30));
                if (acquired)
                {
                    bool scanInfoFileExist = FileService.CreateScanInfoFile();
                    if (!scanInfoFileExist)
                    {
                        m_log.Error("Scan Info Json File Not Exist.");
                        return false;
                    }

                    StreamReader sr = null;
                    try
                    {
                        sr = File.OpenText(scanInfoFileName);
                        JObject jsonFileObj = (JObject)JToken.ReadFrom(new JsonTextReader(sr));
                        IList<string> keys = jsonFileObj.Properties().Select(p => p.Name).ToList();
                        foreach(string key in keys)
                        {
                            if (!key.StartsWith("*_"))
                                continue;
                            jsonFileObj.Remove(key);
                        }
                        string convertString = Convert.ToString(jsonFileObj);
                        sr.Close();
                        File.WriteAllText(scanInfoFileName, convertString);//将内容写进jon文件中
                    }
                    catch (Exception e)
                    {
                        m_log.Error("ScanInfoUpdate4 " + e.ToString());
                        if (sr != null) sr.Close();
                        isSucc = false;
                        //Tool.JsonDestroyedHandle();
                    }
                }
            }
            catch (Exception ex)
            {
                m_log.Error($"Exception happened during DeleteLogFileKey(): {ex.Message}.");
            }
            finally
            {
                if (acquired)
                {
                    Monitor.Exit(syncRoot);
                    //Logger.Debug("ScanServiceProc exits syncRoot");
                }
            }

            return isSucc;
        }
    }
}
