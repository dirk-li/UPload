using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.IO.Ports;
using System.Threading.Tasks;
using System.Threading;

namespace TDECSharpDll
{
    class String_Class
    {
        public static List<SerialPort> listSP = new List<SerialPort>();
        public StopBits ListStopBits(string sb)
        {
            StopBits sBits = 0;
            switch (Convert.ToInt16(sb))
            {
                case 0:
                    sBits = StopBits.None;
                    break;
                case 1:
                    sBits = StopBits.One;
                    break;
                case 2:
                    sBits = StopBits.Two;
                    break;
                default:
                    sBits = StopBits.OnePointFive;
                    break;
            }
            return sBits;
        }
        public Parity ListParity(string lp)
        {
            Parity sParity = Parity.None;
            switch (lp)
            {
                case "N":
                    sParity = Parity.None;
                    break;
                case "O":
                    sParity = Parity.Odd;
                    break;
                case "E":
                    sParity = Parity.Even;
                    break;
                case "M":
                    sParity = Parity.Mark;
                    break;
                default:
                    sParity = Parity.Space;
                    break;
            }
            return sParity;
        }
        public byte[] CommandCheck(string strCMD, string endstr)
        {
            List<byte> testCMD = new List<byte>();
            byte[] byteArray = null;
            //if(strCMD.Contains("'"))
            //{
            //    strCMD = strCMD.Replace("'", "");
            byteArray = System.Text.Encoding.ASCII.GetBytes(strCMD.Trim().ToString());
            //}
            //else
            //{
            //    string[] arrText = strCMD.Split(' ');
            //    byteArray = new byte[arrText.Length];
            //    for (int i = 0; i < arrText.Length; i++)
            //    {
            //        if (arrText[i] != "")
            //        {
            //            int value = Convert.ToInt32(arrText[i], 16);
            //            byteArray[i] = (byte)Convert.ToByte(value);
            //        }
            //    }
            //}

            foreach (byte item in byteArray)
            {
                testCMD.Add(item);
            }
            if (endstr.Trim().ToString().Length != 0)
            {
                string[] subendstr = endstr.Trim().ToString().Split(' ');
                foreach (string substr in subendstr)
                {
                    byte bend = Convert.ToByte(substr, 16);
                    testCMD.Add(bend);
                }
            }
            //sp.Write(byteArray, 0, byteArray.Length);
            return testCMD.ToArray();
        }

        public bool InitialComParameter(SerialPort subsp, string comport, string strParameter, string strDTS = "1", string strRTS = "1")
        {
            try
            {
                //string[] ports = SerialPort.GetPortNames();
                string[] serialParamter = strParameter.Trim().ToUpper().ToString().Split(';');
                if (serialParamter.Length != 4)
                {
                    return false;
                }
                subsp.PortName = comport;
                subsp.BaudRate = Convert.ToInt32(serialParamter[0]);
                subsp.DataBits = Convert.ToInt16(serialParamter[2]);
                subsp.Parity = ListParity(serialParamter[1]);
                subsp.StopBits = ListStopBits(serialParamter[3]);
                subsp.ReadTimeout = 3000;
                subsp.DtrEnable = Convert.ToInt32(strDTS) == 1;
                subsp.RtsEnable = Convert.ToInt32(strRTS) == 1;
                if (subsp.IsOpen)
                {
                    subsp.Close();
                    //subsp.Dispose();
                    return true;
                }
                else
                {
                    subsp.Open();
                    Thread.Sleep(100);
                    subsp.Close();
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool InitialCom(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:Comport,2:Com parameter}
        {
            bool bResult = false;
            try
            {
                string[] ports = SerialPort.GetPortNames();
                SerialPort sp = new SerialPort();
                //foreach (SerialPort subsp in listSP)
                //{
                //    if (subsp.PortName == argsdata[4].Trim().ToUpper().ToString())
                //    {
                //        if(subsp.IsOpen)
                //            subsp.Close();
                //        listSP.Remove(subsp);
                //        break;
                //    }
                //}
                if (InitialComParameter(sp, argsdata[4].Trim().ToUpper().ToString(), argsdata[5].Trim().ToUpper().ToString(), argsdata[6].Trim().ToUpper().ToString(), argsdata[7].Trim().ToUpper().ToString()))
                {
                    testResultInfo.Append("Open " + sp.PortName + " success;");
                    //listSP.Add(sp);
                    bResult = true;
                }
                else
                {
                    testResultInfo.Append("Open " + sp.PortName + " failed;");
                    bResult = false;
                }
            }
            catch (Exception ex)
            {
                testResultInfo.Append("Open " + argsdata[4].Trim().ToUpper().ToString() + " exception:" + ex.ToString() + ";");
                bResult = false;
            }
            return bResult;
        }

        public bool AutoInitialComParameter(out SerialPort sp, StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)
        {
            bool bResult = false;
            SerialPort subsp = null;
            Task t = Task.Run(() =>
            {
                string[] ports = SerialPort.GetPortNames();
                subsp = new SerialPort();
                foreach (string strport in ports)
                {
                    string strRead = "";

                    if (InitialComParameter(subsp, strport, argsdata[4].Trim().ToUpper().ToString()))
                    {
                        try
                        {
                            if (!subsp.IsOpen)
                            {
                                subsp.Open();
                                Thread.Sleep(200);
                            }
                            //Thread.Sleep(1000);
                            byte[] byteArray = CommandCheck(argsdata[7].Trim().ToString(), argsdata[8].Trim().ToString());
                            subsp.Write(byteArray, 0, byteArray.Length);
                            testResultInfo.Append("Send:" + argsdata[7].Trim().ToString() + ";");
                            Thread.Sleep(Convert.ToInt16(argsdata[10].Trim().ToString())); //50毫秒内数据接收完毕，可根据实际情况调整
                            if (subsp.BytesToRead == 0)
                            {
                                //subsp.Close();
                                testResultInfo.Append(subsp.PortName + " query data timeout;");
                                bResult = false;
                            }
                            else
                            {
                                byte[] recData = new byte[subsp.BytesToRead];
                                subsp.Read(recData, 0, recData.Length);
                                strRead = System.Text.Encoding.Default.GetString(recData).Trim().ToString();
                                testResultInfo.Append("Report:" + strRead + ";");
                                if (!strRead.Contains(argsdata[9].Trim().ToString()))
                                    bResult = false;
                                else
                                    bResult = true;
                            }
                            subsp.Close();
                            testResultInfo.Append(subsp.PortName + " closed;");
                            if (bResult)
                                break;
                        }
                        catch (Exception)
                        {
                            subsp.Close();
                            testResultInfo.Append(subsp.PortName + " closed;");
                            testResultInfo.Append(subsp.PortName + " query data error;");
                            bResult = false;
                        }
                    }
                    else
                    {
                        testResultInfo.Append(subsp.PortName + " open error;");
                        bResult = false;
                    }
                }
            });
            TimeSpan ts = TimeSpan.FromMilliseconds(Convert.ToDouble(argsdata[11]));
            if (!t.Wait(ts))
            {
                testResultInfo.Append("Timeout!;");
                sp = null;
                return false;
            }
            else
            {
                sp = subsp;
                return bResult;
            }
        }

        public bool AutoInitialCom(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:Comport,2:Com parameter}
        {
            bool bResult = false;
            testResultInfo.Append("Search COM......;");
            string[] serialParamter = argsdata[4].Trim().ToUpper().ToString().Split(';');
            if (serialParamter.Length != 4)
            {
                return false;
            }
            string strport = "";
            //string[] ports = SerialPort.GetPortNames();
            //foreach (string strport in ports)
            //{
            //testResultInfo.Append("   " + strport + ";");
            try
            {
                SerialPort sp;
                if (AutoInitialComParameter(out sp, pisData, testResultInfo, argsdata))
                {
                    strport = sp.PortName;
                    if (sp.IsOpen)
                    {
                        sp.Close();
                    }
                    testResultInfo.Append("Open " + sp.PortName + " success;");
                    pisData.Append(sp.PortName);
                    bResult = true;
                    //break;
                }
                if (sp.IsOpen)
                {
                    sp.Close();
                }
                sp.Dispose();
            }
            catch (Exception ex)
            {
                testResultInfo.Append("Open " + strport + " exception:" + ex.ToString() + ";");
                bResult = false;
            }
            //}
            return bResult;
        }

        public bool QueryData(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:command,2:delaytime,3:backlen,4:cmdendstr-0D0A}
        {
            bool bResult = false;
            Task t = Task.Run(() => {
                string strRead = "";
                try
                {
                    //bool bFindPort = false;
                    SerialPort sp = new SerialPort();
                    if (InitialComParameter(sp, argsdata[4].Trim().ToUpper().ToString(), argsdata[5].Trim().ToUpper().ToString()))
                    {
                        Thread.Sleep(100);
                        testResultInfo.Append("Open " + sp.PortName + " success;");
                        if (!sp.IsOpen)
                        {
                            sp.Open();
                            Thread.Sleep(100);
                        }
                        byte[] byteArray = CommandCheck(argsdata[6].Trim().ToString(), argsdata[10].Trim().ToString());
                        sp.Write(byteArray, 0, byteArray.Length);
                        testResultInfo.Append("Send:" + argsdata[6].Trim().ToString() + ";");
                        Thread.Sleep(Convert.ToInt16(argsdata[7].Trim().ToString())); //50毫秒内数据接收完毕，可根据实际情况调整
                        if (sp.BytesToRead == 0)
                        {
                            sp.Close();
                            testResultInfo.Append(sp.PortName + " query data timeout;");
                            bResult = false;
                        }
                        else
                        {
                            byte[] recData = new byte[sp.BytesToRead];
                            sp.Read(recData, 0, recData.Length);
                            if (argsdata[9].Trim().ToUpper() == "STR")
                            {
                                strRead = System.Text.Encoding.Default.GetString(recData).Trim().ToString();
                                testResultInfo.Append("Report:" + strRead + ";");
                                if (strRead.Length <= Convert.ToInt16(argsdata[8].Trim()))
                                    pisData.Append(strRead.Trim());
                                else
                                    pisData.Append(strRead.Trim().Substring(0, Convert.ToInt16(argsdata[8].Trim())));
                            }
                            else
                            {
                                int relength = Convert.ToInt16(argsdata[8].Trim());
                                if (Convert.ToInt16(argsdata[8].Trim()) >= recData.Length)
                                    relength = recData.Length;
                                for (int i = 0; i < relength; i++)
                                {
                                    strRead += string.Format("{0:X2}", recData[i]) + " ";
                                }
                                testResultInfo.Append("Report:" + strRead + ";");
                                if (argsdata[9].Trim().ToUpper() == "R32")
                                    strRead = strRead.Replace(" ", "");
                                pisData.Append(strRead.Trim());
                            }
                            sp.Close();
                            bResult = true;
                        }
                    }
                    else
                    {
                        testResultInfo.Append("Open " + argsdata[4].Trim().ToUpper().ToString() + " failed;");
                        bResult = false;
                    }
                }
                catch (Exception ex)
                {
                    testResultInfo.Append(argsdata[4].Trim().ToUpper().ToString() + " query data error;");
                    bResult = false;
                }
            });
            TimeSpan ts = TimeSpan.FromMilliseconds(Convert.ToDouble(argsdata[11]));
            if (!t.Wait(ts))
            {
                testResultInfo.Append("Timeout!;");
                return false;
            }
            else
                return bResult;
        }

        public bool WriteData(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:command,2:delaytime,3:backlen,4:cmdendstr-0D0A}
        {
            bool bResult = false;
            Task t = Task.Run(() => {
                try
                {
                    SerialPort sp = new SerialPort();
                    if (InitialComParameter(sp, argsdata[4].Trim().ToUpper().ToString(), argsdata[5].Trim().ToUpper().ToString()))
                    {
                        testResultInfo.Append("Open " + sp.PortName + " success;");
                        if (!sp.IsOpen)
                        {
                            sp.Open();
                            Thread.Sleep(200);
                        }
                        byte[] byteArray = CommandCheck(argsdata[6].Trim().ToString(), argsdata[9].Trim().ToString());
                        sp.Write(byteArray, 0, byteArray.Length);
                        testResultInfo.Append("Send:" + argsdata[6].Trim().ToString() + ";");
                        Thread.Sleep(Convert.ToInt16(argsdata[7].Trim().ToString())); //50毫秒内数据接收完毕，可根据实际情况调整
                        bResult = true;
                    }
                    else
                    {
                        testResultInfo.Append("Open " + argsdata[4].Trim().ToUpper().ToString() + " failed;");
                        bResult = false;
                    }
                }
                catch (Exception ex)
                {
                    testResultInfo.Append(argsdata[4].Trim().ToUpper().ToString() + " write data error;");
                    bResult = false;
                }
            });
            TimeSpan ts = TimeSpan.FromMilliseconds(Convert.ToDouble(argsdata[7]));
            if (!t.Wait(ts))
            {
                testResultInfo.Append("Timeout!;");
                return false;
            }
            else
                return bResult;
        }
        public bool CloseCom(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:command,2:delaytime,3:backlen,4:cmdendstr-0D0A}
        {
            bool bResult = false;
            Task t = Task.Run(() => {
                try
                {
                    SerialPort sp = new SerialPort();
                    if (InitialComParameter(sp, argsdata[4].Trim().ToUpper().ToString(), argsdata[5].Trim().ToUpper().ToString()))
                    {
                        if (sp.IsOpen)
                            sp.Close();
                        Thread.Sleep(50);
                        testResultInfo.Append("Close " + argsdata[4].Trim().ToUpper().ToString() + " success;");
                        bResult = true;
                    }
                    else
                    {
                        testResultInfo.Append("Close " + argsdata[4].Trim().ToUpper().ToString() + " failed;");
                        bResult = false;
                    }
                }
                catch (Exception ex)
                {
                    testResultInfo.Append(argsdata[4].Trim().ToUpper().ToString() + " close error:" + ex.ToString());
                    bResult = false;
                }
            });
            TimeSpan ts = TimeSpan.FromMilliseconds(Convert.ToDouble(argsdata[6]));
            if (!t.Wait(ts))
            {
                testResultInfo.Append("Timeout!;");
                return false;
            }
            else
                return bResult;
        }
        public bool CloseALLCom(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:command,2:delaytime,3:backlen,4:cmdendstr-0D0A}
        {
            bool bResult = false;
            Task t = Task.Run(() => {
                //for(int i=0;i<listSP.Count;i++)
                //{
                //    try
                //    {
                //        if (listSP[i].IsOpen)
                //        {
                //            listSP[i].Close();
                //            //listSP.RemoveAt(i);
                //            testResultInfo.Append(listSP[i].PortName + " closed;");
                //            Thread.Sleep(50);
                //        }
                //    }
                //    catch (Exception ex)
                //    {
                //        testResultInfo.Append(listSP[i].PortName + " close error:" + ex.ToString());
                //        continue;
                //    }
                //}
                //listSP.Clear();
                //listSP = new List<SerialPort>();
                bResult = true;
            });
            TimeSpan ts = TimeSpan.FromMilliseconds(Convert.ToDouble(argsdata[4].Trim()));
            if (!t.Wait(ts))
            {
                testResultInfo.Append("Timeout!;");
                return false;
            }
            else
                return bResult;
        }
    }
}
