using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogParserAndTransfer.DB
{
    public class ProductDashboard
    {
        public string work_id { get; set; }
        public DateTime time { get; set; }
        public DateTime last_updated_date { get; set; }
        public int achieve { get; set; }
        public int cosmetic { get; set; }
        public string s1_name { get; set; }
        public int s1_input { get; set; }
        public int s1_output { get; set; }
        public int s1_fp { get; set; }
        public int s1_rework { get; set; }
        public int s1_in_rework { get; set; }
        public string s2_name { get; set; }
        public int s2_input { get; set; }
        public int s2_output { get; set; }
        public int s2_fp { get; set; }
        public int s2_rework { get; set; }
        public int s2_in_rework { get; set; }
        public string s3_name { get; set; }
        public int s3_input { get; set; }
        public int s3_output { get; set; }
        public int s3_fp { get; set; }
        public int s3_rework { get; set; }
        public int s3_in_rework { get; set; }
        public string s4_name { get; set; }
        public int s4_input { get; set; }
        public int s4_output { get; set; }
        public int s4_fp { get; set; }
        public int s4_rework { get; set; }
        public int s4_in_rework { get; set; }
        public string s5_name { get; set; }
        public int s5_input { get; set; }
        public int s5_output { get; set; }
        public int s5_fp { get; set; }
        public int s5_rework { get; set; }
        public int s5_in_rework { get; set; }
        public string s6_name { get; set; }
        public int s6_input { get; set; }
        public int s6_output { get; set; }
        public int s6_fp { get; set; }
        public int s6_rework { get; set; }
        public int s6_in_rework { get; set; }
        public string s7_name { get; set; }
        public int s7_input { get; set; }
        public int s7_output { get; set; }
        public int s7_fp { get; set; }
        public int s7_rework { get; set; }
        public int s7_in_rework { get; set; }
        public string s8_name { get; set; }
        public int s8_input { get; set; }
        public int s8_output { get; set; }
        public int s8_fp { get; set; }
        public int s8_rework { get; set; }
        public int s8_in_rework { get; set; }
        public string s9_name { get; set; }
        public int s9_input { get; set; }
        public int s9_output { get; set; }
        public int s9_fp { get; set; }
        public int s9_rework { get; set; }
        public int s9_in_rework { get; set; }
        public string s10_name { get; set; }
        public int s10_input { get; set; }
        public int s10_output { get; set; }
        public int s10_fp { get; set; }
        public int s10_rework { get; set; }
        public int s10_in_rework { get; set; }
        public string s11_name { get; set; }
        public int s11_input { get; set; }
        public int s11_output { get; set; }
        public int s11_fp { get; set; }
        public int s11_rework { get; set; }
        public int s11_in_rework { get; set; }
        public string s12_name { get; set; }
        public int s12_input { get; set; }
        public int s12_output { get; set; }
        public int s12_fp { get; set; }
        public int s12_rework { get; set; }
        public int s12_in_rework { get; set; }
        public string s13_name { get; set; }
        public int s13_input { get; set; }
        public int s13_output { get; set; }
        public int s13_fp { get; set; }
        public int s13_rework { get; set; }
        public int s13_in_rework { get; set; }
        public string s14_name { get; set; }
        public int s14_input { get; set; }
        public int s14_output { get; set; }
        public int s14_fp { get; set; }
        public int s14_rework { get; set; }
        public int s14_in_rework { get; set; }
        public string s15_name { get; set; }
        public int s15_input { get; set; }
        public int s15_output { get; set; }
        public int s15_fp { get; set; }
        public int s15_rework { get; set; }
        public int s15_in_rework { get; set; }
        public string s16_name { get; set; }
        public int s16_input { get; set; }
        public int s16_output { get; set; }
        public int s16_fp { get; set; }
        public int s16_rework { get; set; }
        public int s16_in_rework { get; set; }
        public string s17_name { get; set; }
        public int s17_input { get; set; }
        public int s17_output { get; set; }
        public int s17_fp { get; set; }
        public int s17_rework { get; set; }
        public int s17_in_rework { get; set; }
        public string s18_name { get; set; }
        public int s18_input { get; set; }
        public int s18_output { get; set; }
        public int s18_fp { get; set; }
        public int s18_rework { get; set; }
        public int s18_in_rework { get; set; }
        public string s19_name { get; set; }
        public int s19_input { get; set; }
        public int s19_output { get; set; }
        public int s19_fp { get; set; }
        public int s19_rework { get; set; }
        public int s19_in_rework { get; set; }
        public string s20_name { get; set; }
        public int s20_input { get; set; }
        public int s20_output { get; set; }
        public int s20_fp { get; set; }
        public int s20_rework { get; set; }
        public int s20_in_rework { get; set; }

        public String to_update_station_index { get; set; }
        public bool islastStation { get; set; }
        public int input_change { get; set; }
        public int output_change { get; set; }
        public int fp_change { get; set; }
        public int rework_change { get; set; }
        public int inrework_change { get; set; }
        public int achieve_change { get; set; }

        public ProductDashboard()
        {
            work_id = "";
            time = DateTime.MinValue;
            last_updated_date = DateTime.MinValue;
            achieve = 0;
            cosmetic = 0;
            s1_name = "";
            s1_input = 0;
            s1_output = 0;
            s1_fp = 0;
            s1_rework = 0;
            s1_in_rework = 0;
            s2_name = "";
            s2_input = 0;
            s2_output = 0;
            s2_fp = 0;
            s2_rework = 0;
            s2_in_rework = 0;
            s3_name = "";
            s3_input = 0;
            s3_output = 0;
            s3_fp = 0;
            s3_rework = 0;
            s3_in_rework = 0;
            s4_name = "";
            s4_input = 0;
            s4_output = 0;
            s4_fp = 0;
            s4_rework = 0;
            s4_in_rework = 0;
            s5_name = "";
            s5_input = 0;
            s5_output = 0;
            s5_fp = 0;
            s5_rework = 0;
            s5_in_rework = 0;
            s6_name = "";
            s6_input = 0;
            s6_output = 0;
            s6_fp = 0;
            s6_rework = 0;
            s6_in_rework = 0;
            s7_name = "";
            s7_input = 0;
            s7_output = 0;
            s7_fp = 0;
            s7_rework = 0;
            s7_in_rework = 0;
            s8_name = "";
            s8_input = 0;
            s8_output = 0;
            s8_fp = 0;
            s8_rework = 0;
            s8_in_rework = 0;
            s9_name = "";
            s9_input = 0;
            s9_output = 0;
            s9_fp = 0;
            s9_rework = 0;
            s9_in_rework = 0;
            s10_name = "";
            s10_input = 0;
            s10_output = 0;
            s10_fp = 0;
            s10_rework = 0;
            s10_in_rework = 0;
            s11_name = "";
            s11_input = 0;
            s11_output = 0;
            s11_fp = 0;
            s11_rework = 0;
            s11_in_rework = 0;
            s12_name = "";
            s12_input = 0;
            s12_output = 0;
            s12_fp = 0;
            s12_rework = 0;
            s12_in_rework = 0;
            s13_name = "";
            s13_input = 0;
            s13_output = 0;
            s13_fp = 0;
            s13_rework = 0;
            s13_in_rework = 0;
            s14_name = "";
            s14_input = 0;
            s14_output = 0;
            s14_fp = 0;
            s14_rework = 0;
            s14_in_rework = 0;
            s15_name = "";
            s15_input = 0;
            s15_output = 0;
            s15_fp = 0;
            s15_rework = 0;
            s15_in_rework = 0;
            s16_name = "";
            s16_input = 0;
            s16_output = 0;
            s16_fp = 0;
            s16_rework = 0;
            s16_in_rework = 0;
            s17_name = "";
            s17_input = 0;
            s17_output = 0;
            s17_fp = 0;
            s17_rework = 0;
            s17_in_rework = 0;
            s18_name = "";
            s18_input = 0;
            s18_output = 0;
            s18_fp = 0;
            s18_rework = 0;
            s18_in_rework = 0;
            s19_name = "";
            s19_input = 0;
            s19_output = 0;
            s19_fp = 0;
            s19_rework = 0;
            s19_in_rework = 0;
            s20_name = "";
            s20_input = 0;
            s20_output = 0;
            s20_fp = 0;
            s20_rework = 0;
            s20_in_rework = 0;
            to_update_station_index = "";
            islastStation = false;

            input_change = 0;
            output_change = 0;
            rework_change = 0;
            inrework_change = 0;
            achieve_change = 0;
            fp_change = 0;
        }
    }
}
