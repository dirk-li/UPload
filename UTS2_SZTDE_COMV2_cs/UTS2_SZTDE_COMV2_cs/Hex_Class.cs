using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TDECSharpDll
{
    class Hex_Class
    {
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
        public bool HexAutoInitialComParameter(out SerialPort sp, StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)
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
                            //byte[] byteArray = CommandCheck(argsdata[7].Trim().ToString(), argsdata[8].Trim().ToString());
                            //subsp.Write(byteArray, 0, byteArray.Length);
                            // 将要发送的十六进制字符转换为字节数组
                            byte[] hexBytes = HexStringToByteArray(argsdata[7].Trim().ToString());

                            // 向串口写入数据
                            subsp.Write(hexBytes, 0, hexBytes.Length);
                            testResultInfo.Append("Send:" + argsdata[7].Trim().ToString() + ";");
                            Thread.Sleep(Convert.ToInt16(argsdata[10].Trim().ToString())); //50毫秒内数据接收完毕，可根据实际情况调整
                            string receivedHexString = "";
                            if (subsp.BytesToRead == 0)
                            {
                                //subsp.Close();
                                testResultInfo.Append(subsp.PortName + " query data timeout;");
                                bResult = false;
                            }
                            else
                            {
                                //byte[] recData = new byte[subsp.BytesToRead];
                                //subsp.Read(recData, 0, recData.Length);
                                while (subsp.BytesToRead > 0)
                                {
                                    int data = subsp.ReadByte();

                                    // 将接收到的字节转换为十六进制字符串
                                    receivedHexString += data.ToString("X2").PadLeft(2, '0');
                                }
                               // strRead = System.Text.Encoding.Default.GetString(recData).Trim().ToString();
                                testResultInfo.Append("Report:" + receivedHexString + ";");
                                if (!receivedHexString.Contains(argsdata[9].Trim().ToString()))
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
        public bool HexAutoInitialCom(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:Comport,2:Com parameter}
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
                if (HexAutoInitialComParameter(out sp, pisData, testResultInfo, argsdata))
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
        public bool HexQueryData(StringBuilder pisData, StringBuilder testResultInfo, string[] argsdata)//{0:startindex,1:command,2:delaytime,3:backlen,4:cmdendstr-0D0A}
        {
            bool bResult = false;
            string strRead = "";
            Task t = Task.Run(() => {
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
                      
                        // 将要发送的十六进制字符转换为字节数组
                        byte[] hexBytes = HexStringToByteArray(argsdata[6].Trim().ToString());

                        // 向串口写入数据
                        sp.Write(hexBytes, 0, hexBytes.Length);
                        Thread.Sleep(Convert.ToInt16(argsdata[7].Trim().ToString())); //50毫秒内数据接收完毕，可根据实际情况调整
                                                                                      //从串口读取返回的数据
                        string receivedHexString = "";
                        if (sp.BytesToRead == 0)
                        {
                            sp.Close();
                            testResultInfo.Append(sp.PortName + " query data timeout;");
                            bResult = false;
                        }
                        else
                        {
                            while (sp.BytesToRead > 0)
                            {
                                int data = sp.ReadByte();

                                // 将接收到的字节转换为十六进制字符串
                                receivedHexString += data.ToString("X2").PadLeft(2, '0');
                            }
                            pisData.Append(receivedHexString);
                            testResultInfo.Append("Send:" + argsdata[6].Trim().ToString() + ";");
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
        public static byte[] HexStringToByteArray(string hexString)
        {
            return Enumerable.Range(0, hexString.Length / 2).Select(x => Convert.ToByte(hexString.Substring(x * 2, 2), 16)).ToArray();
        }
    }
}
