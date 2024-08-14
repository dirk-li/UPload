using System;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using QRCoder;
using System.Windows.Media.Imaging;
using log4net;

namespace LogParserAndTransfer
{
    public static class QRCoderHelper
    {
        private static ILog m_log = LogManager.GetLogger("log");
        public static string CreateQRCodeToFile(string plainText)
        {
            try
            {
                string fileName = "";
                string filePath = @"C:\Images\QR\";
                if (!Directory.Exists(filePath))
                {
                    Directory.CreateDirectory(filePath);
                }
                fileName = filePath + DateTime.Now.ToString("yyyyMMddHHmmss") + new Random().Next(100, 1000) + ".jpeg";

                QRCodeGenerator qrGenerator = new QRCoder.QRCodeGenerator();
                //QRCodeGenerator.ECCLevel:纠错能力,Q级：约可纠错25%的数据码字
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(plainText, QRCodeGenerator.ECCLevel.Q);
                QRCode qrcode = new QRCode(qrCodeData);
                Bitmap qrCodeImage = qrcode.GetGraphic(15);
                qrCodeImage.Save(fileName, ImageFormat.Jpeg);
                return fileName;
            }
            catch (Exception ex)
            {
                throw new Exception("创建二维码返回文件路径名称方法异常", ex);
            }
        }

        public static byte[] CreateQRCodeToBytes(string plainText)
        {
            try
            {
                QRCodeGenerator qrGenerator = new QRCoder.QRCodeGenerator();
                //QRCodeGenerator.ECCLevel:纠错能力,Q级：约可纠错25%的数据码字
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(plainText, QRCodeGenerator.ECCLevel.Q);
                QRCode qrcode = new QRCode(qrCodeData);
                Bitmap qrCodeImage = qrcode.GetGraphic(15);
                MemoryStream ms = new MemoryStream();
                qrCodeImage.Save(ms, ImageFormat.Jpeg);
                byte[] arr = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arr, 0, (int)ms.Length);
                ms.Close();
                return arr;
            }
            catch (Exception ex)
            {
                throw new Exception("创建二维码返回byte数组方法异常", ex);
            }
        }

        public static BitmapImage CreateQRCodeToImage(string plainText)
        {
            BitmapImage bitmapImage = new BitmapImage();
            try
            {
                QRCodeGenerator qrGenerator = new QRCoder.QRCodeGenerator();
                //QRCodeGenerator.ECCLevel:纠错能力,Q级：约可纠错25%的数据码字
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(plainText, QRCodeGenerator.ECCLevel.Q);
                QRCode qrcode = new QRCode(qrCodeData);
                Bitmap bitmap = qrcode.GetGraphic(15);
                MemoryStream ms = new MemoryStream();
                bitmap.Save(ms, ImageFormat.Bmp);
                bitmapImage.BeginInit();
                bitmapImage.StreamSource = ms;
                bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
                bitmapImage.EndInit();
                bitmapImage.Freeze();

            }
            catch (Exception ex)
            {
                m_log.Info(ex.ToString());
                bitmapImage = null;
            }

            return bitmapImage;
        }

        /// <summary>
        /// 创建二维码返回Base64字符串
        /// </summary>
        /// <param name="plainText">二维码内容</param>
        public static string CreateQRCodeToBase64(string plainText, bool hasEdify = true)
        {
            try
            {
                string result = "";
                if (String.IsNullOrEmpty(plainText))
                {
                    return "";
                }

                QRCodeGenerator qrGenerator = new QRCoder.QRCodeGenerator();
                //QRCodeGenerator.ECCLevel:纠错能力,Q级：约可纠错25%的数据码字
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(plainText, QRCodeGenerator.ECCLevel.Q);
                QRCode qrcode = new QRCode(qrCodeData);
                Bitmap qrCodeImage = qrcode.GetGraphic(15);
                MemoryStream ms = new MemoryStream();
                qrCodeImage.Save(ms, ImageFormat.Jpeg);
                byte[] arr = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arr, 0, (int)ms.Length);
                ms.Close();
                if (hasEdify)
                {
                    result = "data:image/jpeg;base64," + Convert.ToBase64String(arr);
                }
                else
                {
                    result = Convert.ToBase64String(arr);
                }
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("创建二维码返回Base64字符串方法异常", ex);
            }
        }
    }
}
