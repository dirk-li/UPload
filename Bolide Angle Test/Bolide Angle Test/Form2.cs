using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bolide_Angle_Test
{
    public partial class Form2 : Form
    {
        [DllImport("kernel32.dll")]
        public static extern IntPtr _lopen(string IpPathname, int iReadWrite);

        [DllImport("kernel32.dll")]
        public static extern bool CloseHandle(IntPtr hObject);
        public const int OF_READWRITE = 2;
        public const int OF_SHARE_DENY_NONE = 0x40;
        public readonly IntPtr HFILE_ERROR = new IntPtr(-1);
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            show_datagardview(Frm_Main.vrnoarray, Frm_Main.vr_max_pan, Frm_Main.vr_min_pan, Frm_Main.vr_value_pan, Frm_Main.vr_max_tilt, Frm_Main.vr_min_tilt, Frm_Main.vr_value_tilt);

            show_datagardview2(Frm_Main.vrnoarray, Frm_Main.angle_max_pan, Frm_Main.angle_min_pan, Frm_Main.angle_pan, Frm_Main.speed_max, Frm_Main.speed_min, Frm_Main.speed_pan);
            show_datagardview3(Frm_Main.vrnoarray, Frm_Main.angle_max_tilt, Frm_Main.angle_min_tilt, Frm_Main.angle_tilt, Frm_Main.speed_max, Frm_Main.speed_min, Frm_Main.speed_tilt);

        }
        public void show_datagardview(string[] ararry1, string[] ararry2, string[] ararry3, string[] ararry4, string[] ararry5, string[] ararry6, string[] ararry7)
        {
            dataGridView1.Rows.Clear();
            //dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnMode.AllCells);
            string[][] data = value(ararry1, ararry2, ararry3, ararry4, ararry5, ararry6, ararry7);
            for (int i = 0; i < ararry1.Length; i++)
            {
                dataGridView1.Rows.Add(data[i]);
            }
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.DefaultCellStyle.SelectionForeColor = Color.Black;
            dataGridView1.DefaultCellStyle.SelectionBackColor = Color.AliceBlue;
        }

        public static string[][] value(string[] array1, string[] array2, string[] array3, string[] array4, string[] array5, string[] array6, string[] array7)
        {
            string[][] array = new string[40][];
            for (int i = 0; i < 40; i++)
            {

                array[i] = new string[] { array1[i], array2[i], array3[i], array4[i], array5[i], array6[i], array7[i] };

            }
            return array;
        }

        public void show_datagardview2(string[] ararry1, string[] ararry2, string[] ararry3, string[] ararry4, string[] ararry5, string[] ararry6, string[] ararry7)
        {
            dataGridView2.Rows.Clear();
            //dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnMode.AllCells);
            string[][] data = value2(ararry1, ararry2, ararry3, ararry4, ararry5, ararry6, ararry7);
            for (int i = 0; i < ararry1.Length; i++)
            {
                dataGridView2.Rows.Add(data[i]);
            }
            dataGridView2.AllowUserToAddRows = false;
            dataGridView2.AllowUserToDeleteRows = false;
            dataGridView2.ReadOnly = true;
            dataGridView2.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView2.DefaultCellStyle.SelectionForeColor = Color.Black;
            dataGridView2.DefaultCellStyle.SelectionBackColor = Color.AliceBlue;
        }
        public void show_datagardview3(string[] ararry1, string[] ararry2, string[] ararry3, string[] ararry4, string[] ararry5, string[] ararry6, string[] ararry7)
        {
            dataGridView3.Rows.Clear();
            //dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnMode.AllCells);
            string[][] data = value2(ararry1, ararry2, ararry3, ararry4, ararry5, ararry6, ararry7);
            for (int i = 0; i < ararry1.Length; i++)
            {
                dataGridView3.Rows.Add(data[i]);
            }
            dataGridView3.AllowUserToAddRows = false;
            dataGridView3.AllowUserToDeleteRows = false;
            dataGridView3.ReadOnly = true;
            dataGridView3.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView3.DefaultCellStyle.SelectionForeColor = Color.Black;
            dataGridView3.DefaultCellStyle.SelectionBackColor = Color.AliceBlue;
        }

        public static string[][] value2(string[] array1, string[] array2, string[] array3, string[] array4, string[] array5, string[] array6, string[] array7)
        {
            string[][] array = new string[40][];
            for (int i = 0; i < 40; i++)
            {

                array[i] = new string[] { array1[i], array2[i], array3[i], array4[i], array5[i], array6[i], array7[i] };
            }
            return array;
        }
    }
}
