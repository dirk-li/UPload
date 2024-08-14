using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using MySQLClient;
using System.IO;
using System.Management;
using Excel = Microsoft.Office.Interop.Excel;
using System.Reflection;

namespace VC_Address_Download
{
    public partial class Address_Download : Form
    {
        public string group;
        public string product;
        public string number;
        public string fileName = "Template.txt";
        public string externalExe = "SaveXlsFile.exe";

        private List<string> listGroup = new List<string>();
        private List<string> listBtMac = new List<string>();
        private List<string> writedata = new List<string>();
        public Address_Download()
        {
            InitializeComponent();
        }

        private void VC_address_download_Load(object sender, EventArgs e)
        {
        }

        private void btn_download_Click(object sender, EventArgs e)
        {
            btn_download.Enabled = false;
            string localpcmacaddress = GetPCMACAddress();
            if (File.Exists(fileName))
                File.Delete(fileName);
        
            product = this.cb_product_table.Text.Trim().ToString();
            WriteTxtLog(product, fileName);
            if (File.Exists(Directory.GetCurrentDirectory() + "\\Print\\" + product + ".xlsx"))
                File.Delete(Directory.GetCurrentDirectory() + "\\Print\\" + product + ".xlsx");
            //group = this.cb_product_class.Text.Trim().ToString();
            number = this.textBox1.Text.Trim().ToString();
            //GetGroupList();
            try
            {
                MySQLHelp mysql = new MySQLHelp();
                btn_process.BackColor = System.Drawing.Color.Blue;
                btn_process.Text ="正在下载";
                string sql = "select * from "+ product + " Where status = '0' and used='0' ORDER BY btAddress ASC LIMIT "+number;
                DataSet ds = mysql.ExeQueryDataSet(sql);
                DataTable dt = ds.Tables[0];
                listBtMac.Clear();
                writedata.Clear();
                writedata.Add("BD_ADD");
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("btAddress"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listBtMac.Contains(dt.Rows[j][i].ToString()))
                            {
                                listBtMac.Add(dt.Rows[j][i].ToString());
                                // WriteTxtLog(dt.Rows[j][i].ToString(), fileName);
                                writedata.Add(dt.Rows[j][i].ToString());
                            }
                                
                        }
                        break;
                    }
                }

                
                
                string updatesql = "UPDATE " + product + " SET status = '1',used = '1',statusTime = now(),usedTime = now(),pc = '" + localpcmacaddress + "' where status = '0' and used ='0' ORDER BY btAddress ASC LIMIT " + number;
                //string updatesql = "UPDATE " + product + " SET status = '1',used = '1',statusTime = now(),usedTime = now() where status = '0' and used ='0' ORDER BY btAddress ASC LIMIT " + number;

                mysql.ExeUpdate(updatesql);
                string insertsql = "Insert into " + product + "_used select* from " + product + "  Where status = '1' and used = '1'";
                mysql.ExeUpdate(insertsql);
                string deletesql = "delete from " + product + " Where status = '1' and used = '1'";
                mysql.ExeUpdate(deletesql);
                btn_process.BackColor = System.Drawing.Color.BurlyWood;
                btn_process.Text = "正在生成excel文档";
                /* for excel 2003
                System.Diagnostics.Process sex = System.Diagnostics.Process.Start(externalExe); 
                sex.WaitForExit();
                */
                /* for excel 2007
               */
              WriteExcel(Directory.GetCurrentDirectory() + "\\Print\\" + product+ ".xlsx", writedata.Count, 1, writedata);

              btn_process.BackColor = System.Drawing.Color.Green;
              btn_process.Text = "完成";
              btn_download.Enabled = true;
          }
          catch (Exception ex)
          {
              MessageBox.Show(ex.ToString());
          }

      }
      private void WriteTxtLog(string value,string fileName)
      {
          using (StreamWriter sw = new StreamWriter(fileName, true))
          {
              sw.WriteLine(value);
          }
      }
      private void GetGroupList()
      {
          try
          {
              this.cb_product_class.Items.Clear();
              listGroup.Clear();
              MySQLHelp mysql = new MySQLHelp();
              string sql = "SELECT * FROM product_info";
              DataSet ds = mysql.ExeQueryDataSet(sql);

              DataTable dt = ds.Tables[0];

              for (int i = 0; i < dt.Columns.Count; i++)
              {
                  if (dt.Columns[i].ColumnName.Equals("group"))
                  {
                      for (int j = 0; j < dt.Rows.Count; j++)
                      {
                          if (!listGroup.Contains(dt.Rows[j][i].ToString()))
                              listGroup.Add(dt.Rows[j][i].ToString());
                      }
                      break;
                  }
              }
              this.cb_product_class.Items.AddRange(listGroup.ToArray());
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
          try
          {
              group = this.cb_product_class.Text.Trim().ToString();
              MySQLHelp mysql = new MySQLHelp();
              string sql = "SELECT * FROM product_info WHERE product_info.group = '" + group + "'";
              DataSet ds = mysql.ExeQueryDataSet(sql);

              DataTable dt = ds.Tables[0];

              this.cb_product_table.DataSource = dt;
              this.cb_product_table.DisplayMember = "name";
              this.cb_product_table.SelectedIndex = -1;
          }
          catch (Exception ex)
          {
              MessageBox.Show(ex.ToString());
              MessageBox.Show("获取产品列表失败！");
              //return;
          }

      }

      public void WriteExcel(string filename, int row, int col, List<string> mystr)
      {
          //new an excel object
          Excel.Workbook workBook;
          Excel.Application excelApp = new Excel.Application();
          excelApp.Visible = false;
          if (excelApp == null)
          {
              // if equal null means EXCEL is not installed.
              MessageBox.Show("Excel is not properly installed!");
              return;
          }
          if (File.Exists(filename))
          {
              workBook = excelApp.Workbooks.Open(filename, 0, false, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
          }
          else
          {
              workBook = excelApp.Workbooks.Add(true);
          }

          //new a worksheet
          Excel.Worksheet workSheet = workBook.ActiveSheet as Excel.Worksheet;

          //write data
          workSheet = (Excel.Worksheet)workBook.Worksheets.get_Item(1);//获得第i个sheet，准备写入
          for (int i = 1; i < row + 1; i++)
          {
              workSheet.Cells[i, 1] = mystr[i - 1];
          }

          //set visible the Excel will run in background
          excelApp.Visible = false;
          //set false the alerts will not display
          excelApp.DisplayAlerts = false;

          workBook.SaveAs(filename, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Excel.XlSaveAsAccessMode.xlNoChange, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value);
          //workBook.SaveAs(filename);
          workBook.Close(false, Missing.Value, Missing.Value);

          //quit and clean up objects
          excelApp.Quit();
          workSheet = null;
          workBook = null;
          excelApp = null;
          GC.Collect();
      }
      private void cb_product_table_DropDown(object sender, EventArgs e)
      {
          //group = this.cb_product_table.Text.Trim().ToString();
          GetProductList();
      }

      private void cb_product_class_DropDown(object sender, EventArgs e)
      {
          GetGroupList();
      }

      private void cb_product_class_SelectionChangeCommitted(object sender, EventArgs e)
      {
          if (this.cb_product_class.Text.Trim().ToString().Length != 0)
          {
              this.cb_product_class.Items.Clear();
              this.cb_product_class.Text = "";

              group = this.cb_product_class.Text.Trim().ToString();
          }
      }
      #region  获取本地电脑的MAC ADDRESS
      // <summary>
      ///  获取本地电脑的MAC ADDRESS
      // <summary>
      public static string GetPCMACAddress()
      {
          try
          {
              string strMac = string.Empty;
              ManagementClass mc = new ManagementClass("Win32_NetworkAdapterConfiguration");
              ManagementObjectCollection moc = mc.GetInstances();
              foreach (ManagementObject mo in moc)
              {
                  if ((bool)mo["IPEnabled"] == true)
                  {
                      strMac = mo["MacAddress"].ToString();
                  }
              }
              moc = null;
              mc = null;
              return strMac;
          }
          catch
          {
              return "unknown";
          }
      }
      #endregion
  }
}
