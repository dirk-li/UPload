using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Outlook = Microsoft.Office.Interop.Outlook;

namespace Outlooksendemail
{
    class OutlookMail
    {
        

        public static void sendMailbyOutlook(string mail_name,string mail_subject,string mail_body)
        {
            try
            {
                // 创建Outlook应用程序对象
                Outlook.Application outlookApp = new Outlook.Application();
                // 创建邮件项对象
                Outlook.MailItem mailItem = (Outlook.MailItem)outlookApp.CreateItem(Outlook.OlItemType.olMailItem);
                // 设置收件人邮箱地址
                mailItem.To = mail_name;
                // 设置邮件主题
                mailItem.Subject =mail_subject;
                // 设置邮件内容
                mailItem.Body = mail_body;

                // 发送邮件
                mailItem.Send();

                // 释放资源
                mailItem = null;
                outlookApp = null;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
