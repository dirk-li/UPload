using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using NPOI.HSSF.UserModel;
using NPOI.HPSF;
using NPOI.POIFS.FileSystem;
using NPOI.Util;
using System.IO;
using LogParserAndTransfer.DB;
using System.Reflection;
using log4net;
using NPOI.SS.UserModel;
using NPOI.SS.Util;
using System.Data;

namespace LogParserAndTransfer
{
    public class ExportData
    {
        private ILog m_log = LogManager.GetLogger("log");
        private int DataFormat = 0;
        List<CellRangeAddress> mergedRangeList = new List<CellRangeAddress>();

        /*
                    FinalPassYield 1	FinalPassYield 2	AP 
        2020-05-01	101.72%	100.00%	89.66%
        2020-05-02	99.51%	100.00%	88.29%
        2020-05-03	100.31%	97.32%	86.20%
        */
        public readonly int Format1 = 1;
        // output/input=xxx , an example 249/247=100.81%
        public readonly int Format2 = 2;

        // input->output , an example 249->247
        public readonly int Format3 = 3;

        // (input,output,fp,rework) 
        public readonly int Format5 = 4;

        public void SetDataFormat(int val)
        {
            DataFormat = val;
        }
        public HSSFWorkbook CreateWorkbook()
        {
            return new HSSFWorkbook();
        }

        public ISheet CreateSheet(HSSFWorkbook workbook,string sheetName)
        {
            return workbook.CreateSheet(sheetName);
        }

        public ISheet GetSheet(HSSFWorkbook workbook, string sheetName)
        {
            return (HSSFSheet)workbook.GetSheet(sheetName);
        }

        public List<IRow> CreateRows(ISheet sheet,int rowNum)
        {
            List<IRow> list = new List<IRow>();
            for (int i = 0; i < rowNum; i++) // 创建31行 each line for one day
            {
                IRow row = sheet.CreateRow(i);
                list.Add(row);
            }
            return list;
        }

        public HSSFRow GetSheetRow(ISheet SheetOne, int lineNum)
        {
            return (HSSFRow)SheetOne.GetRow(lineNum);
        }

        public void WriteSheetRow(HSSFRow sheetRow,List<string> values)
        {
            int cellCount = values.Count();
            HSSFCell[] SheetCell = new HSSFCell[cellCount];
            for (int i = 0; i < cellCount; i++)
            {
                SheetCell[i] = (HSSFCell)sheetRow.CreateCell(i);
            }

            for (int i = 0; i < cellCount; i++)
            {
                SheetCell[i].SetCellValue(values[i]);
            }

        }

        public void SaveWorkbook(string fullFileName,HSSFWorkbook workbook)
        {
            FileStream fileStream = new FileStream(fullFileName, FileMode.Create);
            workbook.Write(fileStream);
            fileStream.Close();
            workbook.Close();
        }

        public void Test1()
        {
            HSSFWorkbook workbook2003 = CreateWorkbook(); 
            ISheet sheet = CreateSheet(workbook2003,"Sheet1"); 
            HSSFSheet SheetOne = (HSSFSheet)GetSheet(workbook2003,"Sheet1"); 
            List<IRow> list = CreateRows(SheetOne,31);                                                                 
            int lineNum = 0;
            List<string> values = new List<string>();
            char c = 'A';
            for (int i=0;i<21;i++)
            {
                values.Add(""+c);
                c++;

            }
            HSSFRow SheetRow = GetSheetRow(SheetOne, lineNum);
            WriteSheetRow(SheetRow, values);

            CellRangeAddress cellRangeAddress = new CellRangeAddress(2, 4, 1, 1);
            SheetOne.AddMergedRegion(cellRangeAddress);

            SaveWorkbook(@"C:\Statics\Babylon.xls", workbook2003);

        }

        public void CreateXlsFile(string fullPathName,List<List<string>> rows)
        {
            HSSFWorkbook workbook2003 = CreateWorkbook();
            ISheet sheet = CreateSheet(workbook2003, "Sheet1");
            HSSFSheet SheetOne = (HSSFSheet)GetSheet(workbook2003, "Sheet1");

            //ICellStyle cellstyle = workbook2003.CreateCellStyle();
            //cellstyle.VerticalAlignment = VerticalAlignment.Center;

            int rowCount = rows.Count();
            List<IRow> list = CreateRows(SheetOne, rowCount);
            int maxCellsCount = 0;
            for(int lineNum=0; lineNum<rowCount; lineNum++)
            {
                List<string> cells = rows[lineNum];
                HSSFRow SheetRow = GetSheetRow(SheetOne, lineNum);
                WriteSheetRow(SheetRow, cells);
                if (cells.Count() > maxCellsCount)
                    maxCellsCount = cells.Count();
            }

            for(int i=0;i< maxCellsCount;i++)
               SheetOne.SetColumnWidth(i, 4500);

            foreach(CellRangeAddress cellRangeAddress in mergedRangeList)
            {
                SheetOne.AddMergedRegion(cellRangeAddress);
            }

            SaveWorkbook(fullPathName, workbook2003);
        }

        public List<ProductDashboard> GetProductDashboards(string product, DateTime startTime, DateTime endTime)
        {
            List<ProductDashboard> list = DBTool.SelectProductDashboardItemEx(product, startTime, endTime);
            return list;
        }

        public void Summary()
        {
            //string[] products = { "Babylon", };
            ///*
            string[] products = { "Babylon", "#Speedy AF#","#Speedy AF B2B#",
            "Maggie","TURBOT",@"#BELUTO/BELUOT SILENT#",
            "PICCOLO","BLOWTORCH","KARAX","#Bolide Table HUB#",
            "MONGOOSE HERO","PADANA","C2 CAM","Sisley",
            "BELUGA","KARAX- RAINBOW","MENDOCINO",
            "CLAYMORE","BLOWTORCH","#Bolide TV HUB#",
            "PALAU","RECOIL","FLORES","LENGO","#Bolide Microphone#",
            "STALKER","HYJAL","NARA PLUTO ONE","HERZOG",
            "TALISE CR","HONEYBADGER HERO","Scorpio BP",
            "Maggie","LOMBOK","Marge","#Bolide Webcam#",
            "CLAYMORE","Manet","FOOTLOOSE","CAMILLE",
            "KARAX- RAINBOW","CALA","Gladwell","Miro","#Bolide#",
            "Fireball","Dali","YETI","Blue Moon","HAWK HERO",
            "Gladwell","RINCA","Orbit Ali","KARAX- RAINBOW",
            };
            //*/
            DataFormat = Format1;
            int dayCount = 25;
            DateTime[] dates = new DateTime[dayCount];
            DateTime firstDay = new DateTime(2020, 5, 31, 23, 59, 59); // { new DateTime(2020, 5, 18, 23, 59, 59) };
            for (int i = 0; i < dayCount; i++)
            {
                dates[i] = firstDay;
                firstDay = firstDay.Add(TimeSpan.FromDays(1));
            }

            int len = products.Length;

            for (int i = 0; i < len; i++)
            {
                mergedRangeList.Clear();
                string product = products[i].Replace("/", " ").Replace("#", "");
                string fullFileName = @"C:\Statics\" + product + ".xls";
                List<List<string>> rows = new List<List<string>>();
                //
                bool isAlreadyWriteColumnHead = false;
                int nextRowIndex = 0;
                for (int j = 0; j < dayCount; j++)
                {
                    int rowCountOneDay = 0;
                    DateTime startTime = dates[j];
                    DateTime endTime = startTime.Add(TimeSpan.FromDays(1));
                    List<ProductDashboard> list = GetProductDashboards(products[i], startTime, endTime);
                    m_log.Info(endTime.ToString());
                    if (list.Count < 1)
                        continue;
                    if (!isAlreadyWriteColumnHead)
                    {
                        ProductDashboard dashboard = list[0];
                        List<string> tableHead = GetColumnHead(fullFileName, list);
                        rows.Add(tableHead);
                        isAlreadyWriteColumnHead = true;
                        nextRowIndex = 1;
                    }
                    // line: dashboard-list
                    List<KeyValuePair<string, List<ProductDashboard>>> line_workids_pair_list = GroupWorkidsByLine(list); 
                    foreach(KeyValuePair<string, List<ProductDashboard>> pair in line_workids_pair_list)
                    {
                        string line = pair.Key;
                        List<ProductDashboard> dashBoardList = pair.Value;
                        List<string> lineDataRow = GetLineDataRow(line, dashBoardList, endTime);
                        List<string> rowFiltered = FliterCharacter(lineDataRow);
                        rows.Add(rowFiltered);
                        rowCountOneDay++;
                    }
                    // get total data becasue the para 'list' contains all dashboard item
                    List<string> row = GetDataRow(list, endTime);
                    List<string> rowFiltered1 = FliterCharacter(row);
                    rows.Add(rowFiltered1);
                    rowCountOneDay++;

                    CellRangeAddress cellRangeAddress = new CellRangeAddress(nextRowIndex, rowCountOneDay+nextRowIndex-1, 0, 0);
                    mergedRangeList.Add(cellRangeAddress);
                    nextRowIndex = rowCountOneDay + nextRowIndex;

                }
                //
                try
                {
                    m_log.Info("fullFileName " + fullFileName);
                    CreateXlsFile(fullFileName, rows);
                }
                catch(Exception e)
                {
                    m_log.Error("CreateXlsFile " + e.ToString());
                }
                
            }
        }

        public void SummaryEx(string[] products,int formatPr,int dayCount, DateTime firstDay)
        {
            string path = @"C:\Statics\";
            try
            {
                if (!Directory.Exists(path))             　　              
                    Directory.CreateDirectory(path);　　            
            }
            catch (Exception ex)
            {
                m_log.Error(ex.ToString());
            }

            DataFormat = formatPr;
            DateTime[] dates = new DateTime[dayCount];
            for (int i = 0; i < dayCount; i++)
            {
                dates[i] = firstDay;
                firstDay = firstDay.Add(TimeSpan.FromDays(1));
            }

            string s1 = dates[0].ToString("MM.dd");
            string s2 = dates[dates.Length - 1].ToString("MM.dd");

            int len = products.Length;
            for (int i = 0; i < len; i++)
            {
                mergedRangeList.Clear();
                if (products[i] == null)
                    continue;
                string product = products[i].Replace("/", " ").Replace("#", "");
                string fullFileName = @"C:\Statics\" + product +"_"+s1+"-"+s2+".xls";
                List<List<string>> rows = new List<List<string>>();
                bool isAlreadyWriteColumnHead = false;
                int nextRowIndex = 0;
                for (int j = 0; j < dayCount; j++)
                {
                    int rowCountOneDay = 0;
                    DateTime startTime = dates[j];
                    DateTime endTime = startTime.Add(TimeSpan.FromDays(1));
                    List<ProductDashboard> list = GetProductDashboards(products[i], startTime, endTime);
                    m_log.Info(endTime.ToString());
                    if (list.Count < 1)
                        continue;
                    if (!isAlreadyWriteColumnHead)
                    {
                        ProductDashboard dashboard = list[0];
                        List<string> tableHead = GetColumnHead(fullFileName, list);
                        rows.Add(tableHead);
                        isAlreadyWriteColumnHead = true;
                        nextRowIndex = 1;
                    }
                    // line: dashboard-list
                    List<KeyValuePair<string, List<ProductDashboard>>> line_workids_pair_list = GroupWorkidsByLine(list);
                    foreach (KeyValuePair<string, List<ProductDashboard>> pair in line_workids_pair_list)
                    {
                        string line = pair.Key;
                        List<ProductDashboard> dashBoardList = pair.Value;
                        List<string> lineDataRow = GetLineDataRow(line, dashBoardList, endTime);
                        List<string> rowFiltered = FliterCharacter(lineDataRow);
                        rows.Add(rowFiltered);
                        rowCountOneDay++;
                    }
                    // get total data becasue the para 'list' contains all dashboard item
                    List<string> row = GetDataRow(list, endTime);
                    List<string> rowFiltered1 = FliterCharacter(row);
                    rows.Add(rowFiltered1);
                    rowCountOneDay++;

                    CellRangeAddress cellRangeAddress = new CellRangeAddress(nextRowIndex, rowCountOneDay + nextRowIndex - 1, 0, 0);
                    mergedRangeList.Add(cellRangeAddress);
                    nextRowIndex = rowCountOneDay + nextRowIndex;

                }
                //
                try
                {
                    m_log.Info("fullFileName " + fullFileName);
                    CreateXlsFile(fullFileName, rows);
                }
                catch (Exception e)
                {
                    m_log.Error("CreateXlsFile " + e.ToString());
                }

            }
            Tool.ShowWarningMessage("Info","Export done");
            return;
        }

        private List<ProductDashboard> GetProductDashboardsFromCache(string product, Dictionary<string, List<ProductDashboard>> productDashboardDic,
            DateTime sT,DateTime eT)
        {
            List<ProductDashboard> list = new List<ProductDashboard>();
            List<ProductDashboard> currList = productDashboardDic[product];
            foreach(ProductDashboard b in currList)
            {
                DateTime c = b.time;
                if (c.Subtract(sT).Seconds > 0 && eT.Subtract(c).Seconds > 0)
                    list.Add(b);
            }
            return list;
        }
        public void SummaryExEx(string[] products, Dictionary<string, List<ProductDashboard>> productDashboardDic, int formatPr, int dayCount, DateTime firstDay)
        {
            string path = @"C:\Statics\";
            try
            {
                if (!Directory.Exists(path))
                    Directory.CreateDirectory(path);
            }
            catch (Exception ex)
            {
                m_log.Error(ex.ToString());
            }

            DataFormat = formatPr;
            DateTime[] dates = new DateTime[dayCount];
            for (int i = 0; i < dayCount; i++)
            {
                dates[i] = firstDay;
                firstDay = firstDay.Add(TimeSpan.FromDays(1));
            }

            string s1 = dates[0].ToString("MM.dd");
            string s2 = dates[dates.Length - 1].ToString("MM.dd");

            int len = products.Length;
            for (int i = 0; i < len; i++)
            {
                mergedRangeList.Clear();
                if (products[i] == null)
                    continue;
                string product = products[i].Replace("/", " ").Replace("#", "");
                string fullFileName = @"C:\Statics\" + product + "_" + s1 + "-" + s2 + ".xls";
                List<List<string>> rows = new List<List<string>>();
                bool isAlreadyWriteColumnHead = false;
                int nextRowIndex = 0;
                for (int j = 0; j < dayCount; j++)
                {
                    int rowCountOneDay = 0;
                    DateTime startTime = dates[j];
                    DateTime endTime = startTime.Add(TimeSpan.FromDays(1));
                    List<ProductDashboard> list = GetProductDashboardsFromCache(products[i], productDashboardDic, startTime, endTime);
                    m_log.Info(endTime.ToString());
                    if (list.Count < 1)
                        continue;

                    if (!isAlreadyWriteColumnHead)
                    {
                        ProductDashboard dashboard = list[0];
                        List<string> tableHead = GetColumnHead(fullFileName, list);
                        rows.Add(tableHead);
                        isAlreadyWriteColumnHead = true;
                        nextRowIndex = 1;
                    }

                    // line: dashboard-list
                    List<KeyValuePair<string, List<ProductDashboard>>> line_workids_pair_list = GroupWorkidsByLine(list);
                    foreach (KeyValuePair<string, List<ProductDashboard>> pair in line_workids_pair_list)
                    {
                        string line = pair.Key;
                        List<ProductDashboard> dashBoardList = pair.Value;
                        List<string> lineDataRow = GetLineDataRow(line, dashBoardList, startTime);
                        List<string> rowFiltered = FliterCharacter(lineDataRow);
                        rows.Add(rowFiltered);
                        rowCountOneDay++;
                    }
                    // get total data becasue the para 'list' contains all dashboard item
                    if(rows.Count>2)
                    {
                        List<string> row = GetDataRow(list, startTime);
                        List<string> rowFiltered1 = FliterCharacter(row);
                        rows.Add(rowFiltered1);
                        rowCountOneDay++;
                        CellRangeAddress cellRangeAddress = new CellRangeAddress(nextRowIndex, rowCountOneDay + nextRowIndex - 1, 0, 0);
                        mergedRangeList.Add(cellRangeAddress);
                        nextRowIndex = rowCountOneDay + nextRowIndex;
                    }
                }
                //
                try
                {
                    m_log.Info("fullFileName " + fullFileName);
                    CreateXlsFile(fullFileName, rows);
                }
                catch (Exception e)
                {
                    m_log.Error("CreateXlsFile " + e.ToString());
                }

            }
            
            return;
        }

        public List<string> FliterCharacter(List<string> listPara)
        {
            List<string> list = new List<string>();
            foreach(string str in listPara)
            {
                if (str.Contains("="))
                {
                    string[] tokens = str.Split('=');
                    if (tokens.Length > 1)
                        list.Add(tokens[1]);
                    else
                        list.Add("?");
                }
                else
                    list.Add(str);
            }
            return list;
        }

        public List<string> GetDataRow(List<ProductDashboard> list, DateTime date,bool flag = true)
        {
            string row = date.ToString("yyyy-MM-dd") + "\t";
            row = row + "Total " + "\t";
            if (DataFormat == Format1)
               row = row + "xxx" + "\t";
            List<string> validIndexList = GetValidStationIndexs(list);
            //
            double finalOutput = 0;
            if (validIndexList.Count == 0)
                return new List<string>();
            string finalStationIndex = validIndexList.Last();
            double firstInput = 0;
            string firstStationIndex = validIndexList[0];
            double allFailures = 0;

            double perTotal = 1.0;
            //
            foreach (string stationIndex in validIndexList)
            {
                double input = 0;
                double output = 0;
                double fp = 0;
                double rw = 0;
                foreach (ProductDashboard dashboard in list)
                {
                    input = input + GetInput(dashboard, stationIndex);
                    output = output + GetOutput(dashboard, stationIndex);
                    fp = fp + GetFp(dashboard, stationIndex);
                    rw = rw + GetRework(dashboard, stationIndex);
                }
                string fpStr = fp.ToString();
                string rwStr = rw.ToString();
                if (DataFormat == Format1)
                {
                    if (finalStationIndex == stationIndex)
                        finalOutput = finalOutput + output;
                    if (firstStationIndex == stationIndex)
                        firstInput = firstInput + input;
                    allFailures = allFailures + rw;

                    string cellStr = " 0 ";// + "\t";
                    try
                    {
                        if(input>0 && output>0)
                        {
                            double per = fp / input;
                            perTotal = perTotal * per;
                            string perStr = (per * 100).ToString("N2");

                            string inputStr = input.ToString();
                            string firstPassYield = perStr + "%";
                            if (flag)
                                cellStr = firstPassYield;
                            else
                                cellStr = fp.ToString() + @"/" + inputStr + "=" + firstPassYield;
                        }
                        
                    }
                    catch(Exception e)
                    {
                        m_log.Info(e.ToString());
                    }
                    row = row + cellStr + "\t";
                }
                else if(DataFormat==Format2)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = outputStr + "/" + inputStr + "=" + perStr + "%";
                    }
                    row = row + cellStr + "\t";
                }
                else if(DataFormat== Format3)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = inputStr + "->" + outputStr;
                    }
                    row = row + cellStr + "\t";
                }
                else if (DataFormat == Format5)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = inputStr + "," + outputStr + "," + fpStr + "," + rwStr;
                    }
                    row = row + cellStr + "\t";
                }
            }

            if (DataFormat == Format1)
            {
                //double finalYield1 = finalOutput / firstInput * 100.0;
                //string finalYield1Str = finalYield1.ToString("N2");
                //string frontCell1 = finalYield1Str + "%" + "\t";
                string finalYield1Str = (perTotal * 100.0).ToString("N2");
                string frontCell1 = finalYield1Str + "%" + "\t";

                double fanda = finalOutput + allFailures;
                double finalYield2 = finalOutput / fanda * 100.0;
                string finalYield2Str = finalYield2.ToString("N2");
                string frontCell2 = finalYield2Str + "%";

                string front = frontCell1 + frontCell2;

                row = row.Replace("xxx", front);
                row = row + "\n";
            }
            
            string[] tokens = row.Split('\t');
            List<string> oneDayDataRow = new List<string>(tokens);
            return oneDayDataRow;
        }

        public List<string> GetLineDataRow(string line,List<ProductDashboard> list, DateTime date)
        {
            string row = date.ToString("yyyy-MM-dd") + "\t";
            if (DataFormat == Format5 || DataFormat == Format1)
                row = date.ToString("G") + "\t";
            row = row + line + "\t";
            if (DataFormat == Format1)
                row = row + "xxx" + "\t";
            
            List<string> validIndexList = GetValidStationIndexs(list);
            //
            double finalOutput = 0;
            if (validIndexList.Count == 0)
            {
                return new List<string>();
            }
                
            string finalStationIndex = validIndexList.Last();
            double firstInput = 0;
            string firstStationIndex = validIndexList[0];
            double allFailures = 0;
            double perTotal = 1.0;
            //
            foreach (string stationIndex in validIndexList)
            {
                double input = 0;
                double output = 0;
                double fp = 0;
                double rw = 0;
                foreach (ProductDashboard dashboard in list)
                {
                    if (dashboard.work_id == "Factory B#2021-06-22#B7-2-2#Bolide#960-001237#A#8L#BD#173511@40")
                        m_log.Info("hhh");
                    input = input + GetInput(dashboard, stationIndex);
                    output = output + GetOutput(dashboard, stationIndex);
                    fp = fp + GetFp(dashboard, stationIndex);
                    rw = rw + GetRework(dashboard, stationIndex);
                }
                string fpStr = fp.ToString();
                string rwStr = rw.ToString();
                if (DataFormat == Format1)
                {
                    if (finalStationIndex == stationIndex)
                        finalOutput = finalOutput + output;
                    if (firstStationIndex == stationIndex)
                        firstInput = firstInput + input;
                    allFailures = allFailures + rw;

                    string cellStr = " 0 ";// + "\t";
                    try
                    {
                        if(input>0 && output>0)
                        {
                            double per = fp / input * 100.0;
                            string perStr = per.ToString("N2");
                            string inputStr = input.ToString();
                            string outputStr = output.ToString();
                            string firstPassYield = perStr + "%";
                            cellStr = fpStr + @"/" + inputStr + "=" + firstPassYield;
                            perTotal = (perTotal * per) / 100;
                        }
                    }
                    catch(Exception e)
                    {
                        m_log.Info(e.ToString());
                    }
                    row = row + cellStr + "\t";
                }
                else if (DataFormat == Format2)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = outputStr + "/" + inputStr + "=" + perStr + "%";
                    }
                    row = row + cellStr + "\t";
                }
                else if (DataFormat == Format3)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = inputStr + "->" + outputStr;
                    }
                    row = row + cellStr + "\t";
                }
                else if (DataFormat == Format5)
                {
                    string cellStr = " 0 ";
                    if (input > 0 && output > 0)
                    {
                        double per = output / input * 100.0;
                        string perStr = per.ToString("N2");
                        string inputStr = input.ToString();
                        string outputStr = output.ToString();
                        cellStr = inputStr + "," + outputStr + "," + fpStr + "," + rwStr;
                    }
                    row = row + cellStr + "\t";
                }
            }

            if (DataFormat == Format1)
            {
                //double finalYield1 = finalOutput / firstInput * 100.0;
                //string finalYield1Str = finalYield1.ToString("N2");
                string finalYield1Str = (perTotal*100).ToString("N2");
                string frontCell1 = finalYield1Str + "%" + "\t";
                
                double fanda = finalOutput + allFailures;
                double finalYield2 = finalOutput / fanda * 100.0;
                string finalYield2Str = finalYield2.ToString("N2");
                string frontCell2 = finalYield2Str + "%";
                string front = frontCell1 + frontCell2;

                row = row.Replace("xxx", front);
                row = row + "\n";
            }

            string[] tokens = row.Split('\t');
            List<string> oneDayDataRow = new List<string>(tokens);
            return oneDayDataRow;
        }

        public List<KeyValuePair<string, List<ProductDashboard>>> GroupWorkidsByLine(List<ProductDashboard> alldashboards)
        {
            List<KeyValuePair<string, List<ProductDashboard>>> pairsList = new List<KeyValuePair<string, List<ProductDashboard>>>();

            foreach(ProductDashboard dashboard in alldashboards)
            {
                string workid = dashboard.work_id;
                string[] tokens = workid.Split('#');
                string line = tokens[2];
                bool isIn = LineInList(line, pairsList);
                if(isIn)
                {
                    //add workid to line
                    KeyValuePair<string, List<ProductDashboard>> pair = FindPairByKey(line, pairsList);
                    if(!string.IsNullOrEmpty(pair.Key))
                       pair.Value.Add(dashboard);
                }
                else
                {
                    //create a new pair
                    List<ProductDashboard> list = new List<ProductDashboard>();
                    list.Add(dashboard);
                    KeyValuePair<string, List<ProductDashboard>> pair = new KeyValuePair<string, List<ProductDashboard>>(line,list);
                    pairsList.Add(pair);
                }
            }

            return pairsList;
        }
        //line is the key of the pair
        private bool LineInList(string line,List<KeyValuePair<string, List<ProductDashboard>>> pairList)
        {
            bool isIn = false;
            foreach(KeyValuePair<string, List<ProductDashboard>> pair in pairList)
            {
                if(line==pair.Key)
                {
                    isIn = true;
                    break;
                }
            }
            return isIn;
        }

        private KeyValuePair<string, List<ProductDashboard>> FindPairByKey(string key,
            List<KeyValuePair<string, List<ProductDashboard>>> pairList)
        {
            KeyValuePair<string, List<ProductDashboard>> pair = new KeyValuePair<string, List<ProductDashboard>>();

            foreach (KeyValuePair<string, List<ProductDashboard>> pairObj in pairList)
            {
                if (key == pairObj.Key)
                {
                    pair = pairObj;
                    break;
                }
            }

            return pair;
        }


        public List<string> GetColumnHead(string fullFileName, List<ProductDashboard> dashboardList)
        {
            List<string> list = new List<string>();

            //List<string> validIndexList = GetValidStationIndexs(dashboardList); //T

            ProductDashboard dashboard = GetMaxStationDashboard(dashboardList);
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();

            //foreach (string stationIndex in validIndexList) //T
            for(int stationIndex = 0; stationIndex<21; stationIndex++)
            {
                foreach (var f in fieldInfos)
                {
                    string fieldName = f.Name;
                    string station = String.Format("s{0}_name", stationIndex);
                    if (fieldName == station)
                    {
                        string str = f.GetValue(dashboard).ToString();
                        /*
                        if (!string.IsNullOrEmpty(str) && str.Length > 1)
                        {
                            list.Add(str);
                            break;
                        }
                        */
                        if (string.IsNullOrEmpty(str))
                            list.Add("-");
                        else
                            list.Add(str);
                        break;

                    }
                }
            }

            //
            string row = "Time \t";
            row = row + "Line "+ "\t";
            if (DataFormat== Format1)
            {
                row = row + "FirstPassYield" + "\t";
                row = row + "FinalPassYield" + "\t";
            }
            
            foreach (string stationName in list)
            {
                row = row + stationName + "\t";
            }
            /*
            if (fullFileName.Contains("PICCOLO"))
            {
                row = row + "ut/ft" + "\t";
            }
            if (fullFileName.Contains("Bolide Table HUB"))
            {
                //BON 	Network 	DFU 
                row = "FinalPassYield 1" + "\t" + "FinalPassYield 2" + "\t" + "BON" + "\t" + "Network" + "\t" + "HDMI" + "\t" + "DFU" + "\t";
            }
            if (fullFileName.Contains("Scorpio BP"))
            {
                row = row + "IQ" + "\t";
            }
            */

            row = row + "\n";
            string[] tokens = row.Split('\t');
            List<string> columnHeads = new List<string>(tokens);

            return columnHeads;
        }

        public List<string> GetValidStationIndexs(List<ProductDashboard> dashboardlist)
        {
            List<string> list = new List<string>();
            ProductDashboard dashboard = GetMaxStationDashboard(dashboardlist);
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();

            for (int stationIndex = 0; stationIndex < 21; stationIndex++)
            {
                foreach (var f in fieldInfos)
                {
                    string fieldName = f.Name;
                    string station = String.Format("s{0}_name", stationIndex);
                    if (fieldName == station)
                    {
                        string str = f.GetValue(dashboard).ToString();
                        ///*
                        if (!string.IsNullOrEmpty(str) && str.Length > 1)
                        {
                            list.Add(stationIndex.ToString());
                            break;
                        }
                        //*/

                        //list.Add(stationIndex.ToString());
                        //break;
                    }
                }
            }

            if(list.Count()>0)
            {
                int v = 0;
                Int32.TryParse(list.Last(), out v);
                list.Clear();
                for (int i = 1; i <= v; i++)
                    list.Add(i.ToString());
            }
            
            return list;
        }
        
        public List<string> GetValidStationIndexs1(List<ProductDashboard> dashboardlist)
        {
            List<string> listNext = new List<string>();

            foreach (ProductDashboard dashboard in dashboardlist)
            {
                List<string> list = new List<string>();
                Type type = dashboard.GetType();
                PropertyInfo[] fieldInfos = type.GetProperties();

                for (int i = 1; i < 21; i++)
                {
                    int StationIndex = i;
                    foreach (var f in fieldInfos)
                    {
                        string fieldName = f.Name;
                        string station = String.Format("s{0}_name", StationIndex);
                        if (fieldName == station)
                        {
                            string str = f.GetValue(dashboard).ToString();
                            if (!string.IsNullOrEmpty(str) && str.Length > 1)
                            {
                                list.Add(StationIndex.ToString());
                                break;
                            }
                        }
                    }
                }

                /*
                if (list.Count > listNext.Count)
                    listNext = list;
                */
                for(int i=0;i<list.Count;i++)
                {
                    string s = list[i];
                    bool isContain = false;
                    for(int j=0;j< listNext.Count;j++)
                    {
                        if(s==listNext[j])
                        {
                            isContain = true;
                            break;
                        }
                    }
                    if (!isContain)
                        listNext.Insert(i,s);
                } //6.26
            }

            return listNext;
        }
        
        public ProductDashboard GetMaxStationDashboard(List<ProductDashboard> dashboardlist)
        {
            ProductDashboard max_ashboard = new ProductDashboard();
            List<string> listNext = new List<string>();
            foreach (ProductDashboard dashboard in dashboardlist)
            {
                List<string> list = new List<string>();
                Type type = dashboard.GetType();
                PropertyInfo[] fieldInfos = type.GetProperties();

                for (int i = 1; i < 21; i++)
                {
                    int StationIndex = i;
                    foreach (var f in fieldInfos)
                    {
                        string fieldName = f.Name;
                        string station = String.Format("s{0}_name", StationIndex);
                        if (fieldName == station)
                        {
                            string str = f.GetValue(dashboard).ToString();
                            if (!string.IsNullOrEmpty(str) && str.Length > 1) 
                            {
                                SetStationName(max_ashboard,i.ToString(),str);
                                break;
                            }
                        }
                    }
                }
            }

            return max_ashboard;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="dashBoard1"></param>
        /// <param name="dashBoard2"></param>
        /// <returns>dashBoard2-dashBoard1</returns>
        public static ProductDashboard GetSubtrackedDashboard(ProductDashboard dashBoard1, ProductDashboard dashBoard2)
        {
            Type type2 = dashBoard2.GetType();
            PropertyInfo[] fieldInfos2 = type2.GetProperties();
            Type type1 = dashBoard1.GetType();
            PropertyInfo[] fieldInfos1 = type1.GetProperties();
            string[] calPros = { "input", "output","fp","rework","in_rework" };
            foreach(string calPro in calPros)
            {
                for (int i = 1; i < 21; i++)
                {
                    int StationIndex = i;
                    foreach (var f in fieldInfos2)
                    {
                        string fieldName = f.Name;
                        string station = String.Format("s{0}_{1}", StationIndex, calPro);
                        if (fieldName == station)
                        {
                            int val = (int)f.GetValue(dashBoard2);
                            int val1 = 0;
                            if (val != 0)
                            {
                                foreach (var f1 in fieldInfos1)
                                {
                                    string fieldName1 = f1.Name;
                                    if (fieldName1 == station)
                                    {
                                        val1 = (int)f1.GetValue(dashBoard1);
                                        break;
                                    }
                                }
                                f.SetValue(dashBoard2, val - val1);
                            }
                            break;
                        }
                    }
                }
            }

            return dashBoard2;
        }

        public void SetStationName(ProductDashboard dashboard, string StationIndex,string stationInTinfo)
        {
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string station = String.Format("s{0}_name", StationIndex);
                if (fieldName.Contains(station))
                {
                    f.SetValue(dashboard, stationInTinfo);
                    break;
                }
            }
        }

        public int GetInput(ProductDashboard dashboard, string StationIndex)
        {
            int input = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string inputFieldStr = String.Format("s{0}_input", StationIndex);
                if (fieldName.Contains(inputFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        input = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                }
            }

            return input;
        }


        public int GetOutput(ProductDashboard dashboard, string StationIndex)
        {
            int output = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string outputFieldStr = String.Format("s{0}_output", StationIndex);
                if (fieldName.Contains(outputFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        output = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                }
            }

            return output;
        }


        public int GetRework(ProductDashboard dashboard, string StationIndex)
        {
            int rework = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string reworkFieldStr = String.Format("s{0}_rework", StationIndex);
                if (fieldName.Contains(reworkFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        rework = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                }
            }

            return rework;
        }

        public int GetFp(ProductDashboard dashboard, string StationIndex)
        {
            int fp = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string fpFieldStr = String.Format("s{0}_fp", StationIndex);
                if (fieldName.Contains(fpFieldStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        fp = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error(e.ToString());
                    }
                }
            }

            return fp;
        }

        public int GetAchieve(ProductDashboard dashboard)
        {
            int achieve = 0;
            Type type = dashboard.GetType();
            PropertyInfo[] fieldInfos = type.GetProperties();
            foreach (var f in fieldInfos)
            {
                string fieldName = f.Name;
                string achieveStr = "achieve";
                if (fieldName.Contains(achieveStr))
                {
                    string str = f.GetValue(dashboard).ToString();
                    try
                    {
                        achieve = int.Parse(str);
                    }
                    catch (Exception e)
                    {
                        m_log.Error("Here7 " + e.ToString());
                    }
                }
            }

            return achieve;
        }
    }

    
}
