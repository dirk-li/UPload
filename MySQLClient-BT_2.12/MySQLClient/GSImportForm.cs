using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MySQLClient
{
    public partial class GSImportForm : Form
    {
        public string group;
        public clsUser user;
        private MySQLHelp mysql;
        private List<string> listGroup = new List<string>();
        private List<string> listProduct = new List<string>();
        private DataTable dInsert = null;
        private DataTable dOrignalTable = new DataTable();
        private string productName;
        public GSImportForm()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }

        private void ImportForm_Load(object sender, EventArgs e)
        {
            //GetGroupList();
            user = LoginForm.getUser();
            mysql = new MySQLHelp(user.userServer, user.userDB);
        }

        private void GetGroupList()
        {
            try
            {
                this.comboBoxGroup.Items.Clear();
                listGroup.Clear();
                //MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i=0;i<dt.Columns.Count;i++)
                {
                    if(dt.Columns[i].ColumnName.Equals("group"))
                    {
                        for(int j=0;j<dt.Rows.Count;j++)
                        {
                            if (!listGroup.Contains(dt.Rows[j][i].ToString()))
                                listGroup.Add(dt.Rows[j][i].ToString());
                        }
                        break;
                    }
                }
                this.comboBoxGroup.Items.AddRange(listGroup.ToArray());
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
                this.comboBoxProductList.Items.Clear();
                listProduct.Clear();
                //MySQLHelp mysql = new MySQLHelp(user.userServer, user.userDB);
                string sql = "SELECT * FROM product_info WHERE product_info.group = '" + group + "'";
                //DataSet ds = mysql.ExeQueryDataSet(sql);

                DataTable dt = mysql.ExeQueryDataSet(sql);

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns[i].ColumnName.Equals("name"))
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            if (!listProduct.Contains(dt.Rows[j][i].ToString()))
                                listProduct.Add(dt.Rows[j][i].ToString());
                        }
                        break;
                    }
                }

                this.comboBoxProductList.Items.AddRange(listProduct.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("获取产品列表失败！");
                //return;
            }
        }

        private void buttonConfrim_Click(object sender, EventArgs e)
        {
            productName = this.comboBoxProductList.Text.ToLower().Trim().ToString();
            if(productName.Length == 0)
            {
                MessageBox.Show("产品名称不能为空！");
                return;
            }
            if(this.dataGridView1.Columns.Count == 0)
            {
                MessageBox.Show("插入列至少为1列!");
                return;
            }
            dInsert = GetDgvToTable(this.dataGridView1);

            if(JudgeTableFormat())
            {
                DeleteTable();
                CreateTable();
                buttonConfrim.Enabled = false;
                buttonCancel.Enabled = false;
                new Thread(new ThreadStart(UploadData)).Start();
            }
        }
        private bool JudgeTableFormat()
        {
            Regex regExp = new Regex("[ \\[ \\] \\^ \\-*×――(^)$%~!@#$…&%￥—+=<>《》!！??？:：•`·、。，；,.;\"‘’“”-]");
            for (int i = 0; i < dInsert.Columns.Count; i++)
            {
                if(regExp.IsMatch(dInsert.Columns[i].ColumnName.Trim().ToString()))
                {
                    MessageBox.Show("列名命名规则为字母(最好小写)、数字、下划线!");
                    if (this.richTextBoxColumnName.Text.Trim().ToString().Length != 0)
                    {
                        string columnName = this.richTextBoxColumnName.Text.Trim().ToString();
                        dOrignalTable.Columns.Remove(columnName);
                        this.dataGridView1.DataSource = dOrignalTable;
                    }
                    return false;
                }
            }
            return true;
        }

        private void DeleteTable()
        {
            try
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("DROP TABLE IF EXISTS " + productName);
                //mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(sb.ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("删除表格失败，请检查！");
                return;
            }
        }

        private void CreateTable()
        {
            try
            {
                StringBuilder sb = new StringBuilder();
                //sb.Append("CREATE TABLE  IF NOT EXISTS " + productName + " (");
                sb.Append("CREATE TABLE " + productName + " (");
                for (int i = 0; i < dInsert.Columns.Count; i++)
                {
                    if (0 == i )
                        sb.Append("  " + dInsert.Columns[i].ColumnName.ToString() + " VARCHAR(100) NOT NULL,");
                    else
                        sb.Append("  " + dInsert.Columns[i].ColumnName.ToString()+" VARCHAR(100) NULL,");
                    //if (dInsert.Columns[i].ColumnName.ToString().Contains("time"))
                    //    sb.Append(" DATETIME NULL DEFAULT '2001-01-01 00:00:00',");
                    //else
                    //    sb.Append(" VARCHAR(100) NULL,");
                }
                sb.Append("  " + "time" + " DATETIME NULL DEFAULT '2001-01-01 00:00:00',");
                sb.Append("  PRIMARY KEY (" + dInsert.Columns[0].ColumnName.ToString() + "));");
                //string str = sb.ToString();
                //mysql = new MySQLHelp(user.userServer, user.userDB);
                mysql.ExeUpdate(sb.ToString());
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("创建表格失败，请检查！");
                return;
            }
        }

        private void UploadData()
        {
            try
            {
                string strsql;
                //mysql = new MySQLHelp(user.userServer, user.userDB);
                for (int i = 0; i < dInsert.Rows.Count; i++)
                {
                    strsql = "SELECT * FROM " + productName + " WHERE "+ dInsert.Columns[0].ColumnName.ToString() + "='" + dInsert.Rows[i][0].ToString() + "'";
                    StringBuilder sb = new StringBuilder();
                    DataTable dt = mysql.ExeQueryDataSet(strsql);
                    if (dt.Rows.Count == 1)
                    {
                        sb.Append("UPDATE " + productName + " SET ");
                        for (int j = 0; j < dInsert.Columns.Count; j++)
                        {
                            if ((j + 1) == dInsert.Columns.Count)
                                sb.Append(dInsert.Columns[j].ColumnName.ToString() + " = '" + dInsert.Rows[i][j].ToString() + "'");
                            else
                                sb.Append(dInsert.Columns[j].ColumnName.ToString() + " = '" + dInsert.Rows[i][j].ToString() + "',");
                        }
                        sb.Append( "time = '" + DateTime.Now.ToString("yy-MM-dd hh:mm:ss") + "',");
                        sb.Append(" WHERE "+ dInsert.Columns[0].ColumnName.ToString() + "='" + dInsert.Rows[i][0].ToString() + "'");
                    }
                    else
                    {
                        sb.Append("INSERT INTO " + productName + " VALUES ( ");
                        for (int j = 0; j < dInsert.Columns.Count; j++)
                        {
                            //if ((j + 1) == dInsert.Columns.Count)
                            //    sb.Append("'" + dInsert.Rows[i][j].ToString() + "')");
                            //else
                                sb.Append("'" + dInsert.Rows[i][j].ToString() + "',");
                        }
                        sb.Append("'" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')");
                    }
                    mysql.ExeUpdate(sb.ToString());
                }
                MessageBox.Show("上传数据成功！");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("上传数据失败！请核对！");
               
            }
            this.buttonCancel.Enabled = true;
            this.buttonConfrim.Enabled = true;
            return;
        }

        public DataTable GetDgvToTable(DataGridView dgv)
        {
            //将dataGridView的数据全部放到DataTable
            DataTable dt = new DataTable();
            //强制转换所有列
            for (int count = 0; count < dgv.Columns.Count; count++)// dgv.Columns.Count是所有列
            {
                DataColumn dc = new DataColumn(dgv.Columns[count].Name.ToString());
                dt.Columns.Add(dc);
            }
            //将所有数据放到DataTable
            for (int count = 0; count < dgv.Rows.Count; count++)//dgv.Rows.Count所有列数
            {
                DataRow dr = dt.NewRow();
                for (int countsub = 0; countsub < dgv.Columns.Count; countsub++)
                {
                    dr[countsub] = Convert.ToString(dgv.Rows[count].Cells[countsub].Value);
                }
                dt.Rows.Add(dr);
            }
            return dt;
        }

        private void buttonAddRow_Click(object sender, EventArgs e)
        {
            dOrignalTable = dataGridView1.DataSource as DataTable;
            dOrignalTable.Rows.Add();
            this.dataGridView1.DataSource = null;
            this.dataGridView1.DataSource = dOrignalTable.DefaultView.ToTable();
            if (dataGridView1.InvokeRequired)
            {
                dataGridView1.Invoke(new Action(() => dataGridView1.Refresh()));
            }
        }

        private void buttonDeleteRow_Click(object sender, EventArgs e)
        {
            if (this.dataGridView1.SelectedRows.Count > 0)
            {
                dOrignalTable = dataGridView1.DataSource as DataTable;
                dOrignalTable.Rows.RemoveAt(dataGridView1.SelectedRows[0].Index);
                this.dataGridView1.DataSource = null;
                this.dataGridView1.DataSource = dOrignalTable.DefaultView.ToTable();
                if (dataGridView1.InvokeRequired)
                {
                    dataGridView1.Invoke(new Action(() => dataGridView1.Refresh()));
                }
            }
        }

        private void buttonInsertRow_Click(object sender, EventArgs e)
        {
            if (this.dataGridView1.SelectedRows.Count > 0)
            {
                dOrignalTable = dataGridView1.DataSource as DataTable;
                dOrignalTable.Rows.InsertAt(dOrignalTable.NewRow(), dataGridView1.SelectedRows[0].Index);
                this.dataGridView1.DataSource = null;
                this.dataGridView1.DataSource = dOrignalTable.DefaultView.ToTable();
                if (dataGridView1.InvokeRequired)
                {
                    dataGridView1.Invoke(new Action(() => dataGridView1.Refresh()));
                }
            }
        }

        private void comboBoxGroup_DropDown(object sender, EventArgs e)
        {
            GetGroupList();
        }

        private void comboBoxProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.comboBoxProductList.Text.Trim().ToString().Length != 0)
            {
                productName = this.comboBoxProductList.Text.Trim().ToString();
                try
                {

                    string updateStr = "SELECT * FROM " + productName;
                    DataTable dt = mysql.ExeQueryDataSet(updateStr);

                    dt.Columns.RemoveAt(dt.Columns.Count-1);
                    dOrignalTable = dt;

                    this.dataGridView1.DataSource = dOrignalTable;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    this.dataGridView1.DataSource = null;
                }
            }
        }

        private void comboBoxGroup_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (this.comboBoxGroup.Text.Trim().ToString().Length != 0)
            {
                this.comboBoxProductList.Items.Clear();
                this.comboBoxProductList.Text = "";
                
                group = this.comboBoxGroup.Text.Trim().ToString();
            }
        }

        private void comboBoxProductList_DropDown(object sender, EventArgs e)
        {
            GetProductList();
        }

        private void buttonAddColumn_Click(object sender, EventArgs e)
        {
            if (this.richTextBoxColumnName.Text.Trim().ToString().Length != 0)
            {
                Regex regExp = new Regex("[ \\[ \\] \\^ \\-*×――(^)$%~!@#$…&%￥—+=<>《》!！??？:：•`·、。，；,.;\"‘’“”-]");
                if (regExp.IsMatch(this.richTextBoxColumnName.Text.Trim().ToString()))
                {
                    MessageBox.Show("列名命名规则为字母(最好小写)、数字、下划线!");
                    return;
                }
                DataTable dt = dataGridView1.DataSource as DataTable;
                if(dt!=null)
                    dOrignalTable = dt;
                else
                    dOrignalTable = new DataTable();
                string columnName = this.richTextBoxColumnName.Text.Trim().ToString();
                dOrignalTable.Columns.Add(columnName, Type.GetType("System.String"));
                this.dataGridView1.DataSource = dOrignalTable;
            }
        }

        private void buttonDeleteColumn_Click(object sender, EventArgs e)
        {
            if (this.richTextBoxColumnName.Text.Trim().ToString().Length != 0)
            {
                //dOrignalTable = dataGridView1.DataSource as DataTable;
                string columnName = this.richTextBoxColumnName.Text.Trim().ToString();
                dOrignalTable.Columns.Remove(columnName);
                this.dataGridView1.DataSource = dOrignalTable;
            }
        }

        private void buttonMoveColumn_Click(object sender, EventArgs e)
        {
            if (this.richTextBoxMoveNumber.Text.Trim().ToString().Length != 0 && this.richTextBoxColumnName.Text.Trim().ToString().Length != 0)
            {
                //dOrignalTable = dataGridView1.DataSource as DataTable;
                string columnName = this.richTextBoxColumnName.Text.Trim().ToString();
                int number = int.Parse(this.richTextBoxMoveNumber.Text.Trim().ToString());
                if(number < dOrignalTable.Columns.Count)
                {
                    dOrignalTable.Columns[columnName].SetOrdinal(number);
                    this.dataGridView1.DataSource = null;
                    this.dataGridView1.DataSource = dOrignalTable.DefaultView.ToTable();
                    if (dataGridView1.InvokeRequired)
                    {
                        dataGridView1.Invoke(new Action(() => dataGridView1.Refresh()));
                    }
                }
            }
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBoxMin_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void buttonSelectFile_Click(object sender, EventArgs e)
        {
            if (this.comboBoxGroup.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品类别！");
                return;
            }
            if(this.comboBoxProductList.Text.Trim().ToString().Length == 0)
            {
                MessageBox.Show("请选择产品名称！");
                return;
            }
            OpenFileDialog ofg = new OpenFileDialog();
            ofg.Title = "请选择文件夹";
            ofg.Filter = "所有文件(*.*)|*.*";
            if (ofg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string file = ofg.FileName;
                readFile(file);
            }
        }
        private void readFile(string filePath)
        {
            try
            {
                DataTable dt = new DataTable();
                int nLine = 0;
                string[] strColumn, strCellValue;
                string strLine = string.Empty;
                FileStream fs = new FileStream(filePath, FileMode.Open);
                //// "GB2312"用于显示中文字符，写其他的，中文会显示乱码
                StreamReader reader = new StreamReader(fs, UnicodeEncoding.GetEncoding("GB2312"));
                    //// 一行一行读取
                while ((strLine = reader.ReadLine()) != null)
                {
                    nLine++;
                    if (1 == nLine)
                    {
                        strColumn = strLine.Split(',');
                        for (int i = 0; i < strColumn.Length; i++)
                            dt.Columns.Add(strColumn[i], Type.GetType("System.String"));
                    }
                    else
                    {
                        strCellValue = strLine.Split(',');
                        DataRow dr = dt.NewRow();
                        for (int j=0;j<strCellValue.Length;j++)
                             dr[dt.Columns[j]] = strCellValue[j];
                        dt.Rows.Add(dr);
                    }                
                }
                //// 关闭文件流
                fs.Close();
                this.dataGridView1.DataSource = null;
                this.dataGridView1.DataSource = dt.DefaultView.ToTable();
                if (dataGridView1.InvokeRequired)
                {
                    dataGridView1.Invoke(new Action(() => dataGridView1.Refresh()));
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
                MessageBox.Show("读取文件失败！");
                return;
            }
        }
    }
}
