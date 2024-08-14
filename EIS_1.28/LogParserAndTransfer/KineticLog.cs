using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using FileHelpers;

namespace LogParserAndTransfer
{
    [DelimitedRecord(",")]
    [IgnoreEmptyLines()]
    //[IgnoreFirst()]
    public class KineticLog
    {
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string SeqNum { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Status { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Comment { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Test_Start_Time { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Test_Duration { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Failed_Tests { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Error_Codes { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Fixture_ID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string E_Serial_Num { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string BC_Serial_Num { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string BC_Serial_Num_Level { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty6 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty7 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string sn { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty8 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty9 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty10 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty11 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_totalsecs { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_failures { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_plugin { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_plugin_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_Enum_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_FW { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_EE { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_SensorInfo { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_speed { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_VID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_DevInfo_PID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_Preview_Inc_Amp { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_CenterFar { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_CenterNear { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_CenterDelta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_FinalCorrection { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_FinalStepDistance { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_NWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_NECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_SWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_SECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_NWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_NEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_SWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_SEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Focus_CornerDelta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_CenterFar { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_CenterNear { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_CenterDelta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_NWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_NECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_SWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_SECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_NWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_NEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_SWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_SEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string FineFocu_CornerDelta_MTF_reacheck_if_fail_need_tocalibration_totalsecs { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_failures { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_plugin { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_plugin_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_MTF_Enum_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_MTF_DevInfo_FW { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_EE { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_SensorInfo { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_speed { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_VID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_DevInfo_PID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_Preview_Inc_Amp { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_CenterFar { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_CenterNear { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_CenterDelta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_SWCorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_SECorner { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_SWtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_SEtoCenter { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NW_SW_Delta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string MTF_reacheck_if_fail_need_tocalibration_NE_SE_Delta { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty12 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty13 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty14 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty15 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty16 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_totalsecs { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_failures { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin_current2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Enum_current1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_current1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_speed { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_VID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_PID { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Preview_Inc_Amp { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_pos { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mtf { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mA { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakMTF { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakLocation { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_totalsecs1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_failures2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin_current { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Enum_current2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_current2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_speed3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_VID3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_PID2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Preview_Inc_Amp1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_pos1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mtf1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mA1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakMTF1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakLocation1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty16_1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_totalsecs2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_failures3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_plugin_current1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Enum_current3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_current3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_speed2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_VID2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_DevInfo_PID1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_Preview_Inc_Amp2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_pos2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mtf2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_mA2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakMTF2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string VCM_PeakLocation2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty17 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string sn_2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty18 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty19 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty20 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty21 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty22 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty23 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty24 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty25 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty26 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty30 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty31 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty32 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty33 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty34 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty35 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty36 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty40 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty41 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty42 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty43 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty44 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty45 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty46 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty50 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty51 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty52 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty53 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty54 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty55 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty56 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty60 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty61 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty62 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty63 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty64 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty65 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty66 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty70 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty71 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty72 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty73 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty74 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty75 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty76 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty80 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty81 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty82 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty83 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty84 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty85 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty86 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty90 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty91 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty92 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty93 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty94 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty95 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty96 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ0 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ1 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ2 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ3 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ4 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ5 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ6 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty501 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty511 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty521 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty531 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty541 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty551 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty561 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty502 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty512 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty522 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty532 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty542 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty552 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty562 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty503 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty513 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty523 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty533 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty543 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty553 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty563 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty505 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty515 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty525 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty535 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty545 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty555 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty565 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty506 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty516 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty526 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty536 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty546 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty556 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty566 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty508{ get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty518 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty528 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty538 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty548 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty558 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty568 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5031 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5131 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5231 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5331 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5431 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5531 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5631 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5051 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5151 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5251 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5351 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5451 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5551 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5651 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5061 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5161 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5261 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5361 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5461 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5561 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5661 { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5081 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5181 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5281 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5381 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5481 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5581 { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5681 { get; set; }

        //
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty80L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty81L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty82L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty83L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty84L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty85L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty86L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty90L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty91L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty92L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty93L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty94L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty95L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty96L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyA6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyB6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyC6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyE6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyF6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyH6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyI6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ0L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ1L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ2L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ3L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ4L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ5L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string EmptyJ6L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty501L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty511L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty521L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty531L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty541L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty551L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty561L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty502L{ get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty512L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty522L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty532L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty542L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty552L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty562L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty503L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty513L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty523L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty533L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty543L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty553L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty563L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty505L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty515L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty525L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty535L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty545L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty555L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty565L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty506L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty516L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty526L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty536L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty546L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty556L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty566L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty508L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty518L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty528L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty538L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty548L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty558L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty568L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5031L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5131L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5231L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5331L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5431L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5531L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5631L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5051L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5151L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5251L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5351L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5451L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5551L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5651L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5061L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5161L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5261L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5361L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5461L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5561L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5661L { get; set; }

        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5081L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5181L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5281L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5381L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5481L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5581L { get; set; }
        [FieldOptional] [FieldNullValue(typeof(string), "")] public string Empty5681L { get; set; }
    }
}
