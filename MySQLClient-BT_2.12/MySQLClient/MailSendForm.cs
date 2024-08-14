using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MySQLClient
{
    public partial class MailSendForm : Form
    {
        public string group;
        public string pName;
        public clsUser user;
        private List<string> listDB = new List<string>();
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private List<string> listStatus = new List<string>();
        private List<string> listthreshold = new List<string>();
        private List<string> listemailname = new List<string>();
        private List<clsBTCount> listProductUsed = new List<clsBTCount>();
        private List<clsBTCount> listProductUnused = new List<clsBTCount>();
        public MailSendForm()
        {
            InitializeComponent();
        }

        private void MailSendForm_Load(object sender, EventArgs e)
        {
            user = LoginForm.getUser();
            listStatus.Clear();
            listStatus.Add("status=0 and used=0");
            listStatus.Add("status=1 and used=0");
            listStatus.Add("status=0 and used=1");
            listStatus.Add("status=1 and used=1");
            //GetProductList();
            GetGroupList();
            //this.labelStatus.Text = "空闲状态";
            //strsql = "SELECT count(*) FROM " + productName + " where " + listStatus[0].ToString();
            //countS0U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());
            //SendQQMail("BT address");
            //timer1.Start();
            listDB.Clear();
            listDB.Add("astro");
            listDB.Add("bt");

            timer1.Start();
            //string address_str = "";
            //foreach (string useDB in listDB)
            //{
            //    GetProductList(useDB);
            //    address_str += queryaddresscount(useDB);
            //}
            //msf_textBox1.Text = address_str;
            //string email_namestr = getmail_name();
            //SendQQMail(address_str, email_namestr);
        }

        public string queryaddresscount()
        {
            string addresscount_str="以下机种地址数量在安全范围内:\n", strsql,thresholdvalue= "以下机种地址需要尽快申请:\n";
            MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
            int countS0U0, threshold;
            msf_textBox1.Text = "";
            for (int i = 0; i < listProduct.Count; i++)
            {
               
                strsql = "SELECT threshold FROM product_info where name = '" + listProduct[i]+" '";
                threshold = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[0].ToString();
                countS0U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                if (countS0U0 < threshold)
                {
                    thresholdvalue += listProduct[i] + "剩余个数:" + countS0U0.ToString() + ";小于月库存量:"+threshold.ToString()+";";
                    strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[1].ToString();
                    thresholdvalue += "status=1AndUsed=0个数:" + mysql.ExecuteScalar(strsql).ToString() + ";\n";
                }
                else
                {
                    addresscount_str += listProduct[i] + "剩余个数:" + countS0U0.ToString() + ";";
                    strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[1].ToString();
                    addresscount_str += "status=1AndUsed=0个数:" + mysql.ExecuteScalar(strsql).ToString() + ";\n";
                }                
               

            }
            string addressqueryresult = thresholdvalue +"\n***************************************************************************\n\n"+ addresscount_str +"\n"+ DateTime.Now.ToString("yyyyMMdd HH:mm:ss") + "\n";
            msf_textBox1.Text = addressqueryresult;
            return addressqueryresult; 
        }

        public string queryaddresscount(string useDB)
        {
            string addresscount_str = useDB+"以下机种地址数量在安全范围内:\n", strsql, thresholdvalue = useDB + "以下机种地址需要尽快申请:\n";
            MySQLHelp mysql = new MySQLHelp(user.userServer, useDB);
            int countS0U0, threshold;
            msf_textBox1.Text = "";
            for (int i = 0; i < listProduct.Count; i++)
            {

                strsql = "SELECT threshold FROM product_info where name = '" + listProduct[i] + " '";
                threshold = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[0].ToString();
                countS0U0 = int.Parse(mysql.ExecuteScalar(strsql).ToString());

                if (countS0U0 < threshold)
                {
                    thresholdvalue += listProduct[i] + "剩余个数:" + countS0U0.ToString() + ";小于月库存量:" + threshold.ToString() + ";";
                    strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[1].ToString();
                    thresholdvalue += "status=1AndUsed=0个数:" + mysql.ExecuteScalar(strsql).ToString() + ";\n";
                }
                else
                {
                    addresscount_str += listProduct[i] + "剩余个数:" + countS0U0.ToString() + ";";
                    strsql = "SELECT count(*) FROM " + listProduct[i] + " where " + listStatus[1].ToString();
                    addresscount_str += "status=1AndUsed=0个数:" + mysql.ExecuteScalar(strsql).ToString() + ";\n";
                }


            }
            //string addressqueryresult = thresholdvalue + "\n***************************************************************************\n\n" + addresscount_str + "\n" + DateTime.Now.ToString("yyyyMMdd HH:mm:ss") + "\n";
            //msf_textBox1.Text = addressqueryresult;
            string addressqueryresult = "\n***************************************************************************\n\n"+ thresholdvalue + "\n***************************************************************************\n\n" + addresscount_str + "\n";
            return addressqueryresult;
        }

        private void GetGroupList()
        {
            try
            {
                listGroup.Clear();
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("groupName"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listGroup.Contains(dt.Rows[j][i].ToString()))
                                listGroup.Add(dt.Rows[j][i].ToString());
                        }
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品类别失败！");
                return;
            }
        }

        private void GetProductList()
        {

            if (listGroup.Count == 0)
            {
                MessageBox.Show("请选择产品种类！");
                return;
            }
            try
            { 
                listProduct.Clear();
                MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT name FROM product_info";
                DataTable dt = mysql.ExeQueryDataSet(sql);
                for (int k = 0; k < dt.Rows.Count; k++)
                {
                    if (!listProduct.Contains(dt.Rows[k][0].ToString()))
                    {
                        listProduct.Add(dt.Rows[k][0].ToString());
                    }                 
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }
        }
        private void GetProductList(string useDB)
        {

            if (listGroup.Count == 0)
            {
                MessageBox.Show("请选择产品种类！");
                return;
            }
            try
            {
                listProduct.Clear();
                MySQLHelp mysql = new MySQLHelp(user.userServer, useDB);
                string sql = "SELECT name FROM product_info";
                DataTable dt = mysql.ExeQueryDataSet(sql);
                for (int k = 0; k < dt.Rows.Count; k++)
                {
                    if (!listProduct.Contains(dt.Rows[k][0].ToString()))
                    {
                        listProduct.Add(dt.Rows[k][0].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }
        }
        public void SendQQMail(string mailcontent,string emailname)
        {
            SmtpClient mailClient = new SmtpClient("smtp.qq.com");
            //Credentials登陆SMTP服务器的身份验证. (这里的用户名是完整的邮箱账号，密码就是SMTP的密码)
            mailClient.Credentials = new NetworkCredential("113519287@qq.com", "tmycjbjyfkfgcahf");
            //mailClient.Credentials = new NetworkCredential("sz_logitech_fa@sina.com", "logitech");
            //test@qq.com发件人地址、test@tom.com收件人地址
            MailMessage message = new MailMessage(new MailAddress("113519287@qq.com"), new MailAddress("dli6@logitech.com"));
            for (int i = 0; i < listemailname.Count; i++)
            {
                message.To.Add(listemailname[i]);
            }

            //message.To.Add("shua@logitech.com");
            //message.Bcc.Add(new MailAddress(emailname)); //可以添加多个收件人
            // message.Bcc.Add(new MailAddress("jliu14@logitech.com", "mxu3@logitech.com"));
            message.Body = mailcontent;//邮件内容
            if(user.userServer == "IDC")
                message.Subject = "IDC server BT address 剩余地址统计 " + DateTime.Now.ToString();//邮件主题
            else
                message.Subject = "AWS server BT address 剩余地址统计 " + DateTime.Now.ToString();//邮件主题
            //Attachment att = new Attachment(@"C:"hello.txt"); //Attachment 附件
            //message.Attachments.Add(att);//添加附件
            Console.WriteLine("Start Send Mail....");
            //发送....
            mailClient.Send(message);
        }

        private void button1_Click(object sender, EventArgs e)
        {
             MySQLHelp mysql;
             clsBTCount subBTCount;
            if (DateTime.Now.Hour.ToString() == "9")
            {
                GetProductList();
                string address_str = queryaddresscount();
                string email_namestr = getmail_name();
                SendQQMail(address_str, email_namestr);

            }
            else
            {
                string hour = DateTime.Now.Hour.ToString();
            }  
        }

        public string getmail_name()
        {
            string mailname = "";
            MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
            string strsql = "SELECT email FROM user_info" ;
            DataTable dt = mysql.ExeQueryDataSet(strsql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
               // mailname += dt.Rows[i][0].ToString() + " "," ";
                listemailname.Add(dt.Rows[i][0].ToString());
            }
            return mailname;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            string h = DateTime.Now.Hour.ToString();
            if (DateTime.Now.Hour.ToString() == "14")
            {
                //GetProductList();
                //string address_str = queryaddresscount();
                //string email_namestr=getmail_name();
                //SendQQMail(address_str, email_namestr);

                string address_str = "";
                foreach (string useDB in listDB)
                {
                    GetProductList(useDB);
                    address_str += queryaddresscount(useDB);
                }
                msf_textBox1.Text = address_str;
                string email_namestr = getmail_name();
                SendQQMail(address_str, email_namestr);

            }
            else
            {
                
            }

        }
    }
}
