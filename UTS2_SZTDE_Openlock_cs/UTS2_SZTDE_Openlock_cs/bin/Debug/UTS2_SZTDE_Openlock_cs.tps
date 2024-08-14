83598D5F5BA1B40847AFAA84E4790516
A3D3E09F554A018C753F8B49F02CB00C
018F36A12F0BA315C7C17C2F24F8682B
C5EAF854450A52E84542B3930FE41276AA935D7B133CC143
1FE634B08C5CFA6E3B1F14357CBCB685
{
  "$id": "1",
  "TestGroups": [
    {
      "$id": "2",
      "Name": "",
      "Children": [
        {
          "$id": "3",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "New Item",
          "Command": "Prefix",
          "Subcommand": "",
          "CommandParameters": "",
          "Arguments": [
            {
              "$id": "4",
              "ArgumentName": "",
              "ArgumentValue": "VC"
            },
            {
              "$id": "5",
              "ArgumentName": "",
              "ArgumentValue": "Sentinel"
            },
            {
              "$id": "6",
              "ArgumentName": "",
              "ArgumentValue": "PCB_BON_FT"
            },
            {
              "$id": "7",
              "ArgumentName": "",
              "ArgumentValue": "PB1"
            }
          ],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "8",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Define Test Station information",
          "Command": "Variable Assign",
          "Subcommand": "",
          "CommandParameters": "",
          "Arguments": [],
          "ResultVariables": [
            {
              "$id": "9",
              "IsShowingInPis": false,
              "PisIndex": 0,
              "VariableName": "project_name",
              "Process": "Sentinel",
              "Min": "",
              "Max": "",
              "ErrorCode": "E-32238"
            },
            {
              "$id": "10",
              "IsShowingInPis": false,
              "PisIndex": 0,
              "VariableName": "pre_station",
              "Process": "BON_FLASH",
              "Min": "",
              "Max": "",
              "ErrorCode": "E-8FCC4"
            },
            {
              "$id": "11",
              "IsShowingInPis": false,
              "PisIndex": 0,
              "VariableName": "cur_station",
              "Process": "BON_FT",
              "Min": "",
              "Max": "",
              "ErrorCode": "E-BD152"
            },
            {
              "$id": "12",
              "IsShowingInPis": false,
              "PisIndex": 0,
              "VariableName": "result_pass",
              "Process": "PASS",
              "Min": "",
              "Max": "",
              "ErrorCode": "E-BB7B2"
            },
            {
              "$id": "13",
              "IsShowingInPis": false,
              "PisIndex": 0,
              "VariableName": "result_fail",
              "Process": "FAIL",
              "Min": "",
              "Max": "",
              "ErrorCode": "E-77AC2"
            }
          ],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "14",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Load UTS2_KeyIn.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "UTS2_KeyIn.dll",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "15",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Load UTS2_SZTDE_CMD_cs.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "16",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Load UTS2_inf.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "UTS2_INF.dll",
          "Arguments": [],
          "ResultVariables": [
            {
              "$id": "17",
              "IsShowingInPis": true,
              "PisIndex": 1,
              "VariableName": "UTS2_Inf_version",
              "Process": "",
              "Min": "01000102",
              "Max": "99999999",
              "ErrorCode": "E-894C7"
            }
          ],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "18",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Load UTS2_SZTDE_txtinfo_cs.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_txtinfo_cs.dll'",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "19",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Load UTS_SZTDE_Info.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "20",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "21",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS2_SZTDE_Openlock_cs.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_Openlock_cs.dll'",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "22",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get_Line_strong",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_Openlock_cs.dll'",
              "Arguments": [
                {
                  "$id": "23",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "1:Checkfileexist"
                },
                {
                  "$id": "24",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + '123.txt'"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "25",
                  "IsShowingInPis": true,
                  "PisIndex": 2,
                  "VariableName": "File",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-CBD5F"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "26",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get_Mainwindow_Hwnd",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_Openlock_cs.dll'",
              "Arguments": [
                {
                  "$id": "27",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "2:GetMainHwnd"
                },
                {
                  "$id": "28",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "Bazinga Plus V1.00.510426 (DFU Only)"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "29",
                  "IsShowingInPis": true,
                  "PisIndex": 3,
                  "VariableName": "Mainwind_hwnd",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-5A6EE"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "30",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "SendEnter",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_Openlock_cs.dll'",
              "Arguments": [
                {
                  "$id": "31",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "2:SendEnter"
                },
                {
                  "$id": "32",
                  "ArgumentName": "MainwindTitle",
                  "ArgumentValue": "Bazinga PLUS V1.00.510426 (DFU Only)"
                },
                {
                  "$id": "33",
                  "ArgumentName": "ChildwindTitle",
                  "ArgumentValue": "Open Lock"
                },
                {
                  "$id": "34",
                  "ArgumentName": "left",
                  "ArgumentValue": "120"
                },
                {
                  "$id": "35",
                  "ArgumentName": "top",
                  "ArgumentValue": "80"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "36",
                  "IsShowingInPis": true,
                  "PisIndex": 4,
                  "VariableName": "openlock",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-C5A04"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            }
          ],
          "Label": "SendHwnd",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "37",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "38",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS2_SZTDE_COMV2_cs.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            },
            {
              "$id": "39",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "40",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial DZR ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "41",
                      "ArgumentName": "Command",
                      "ArgumentValue": "8:HexAutoInitial"
                    },
                    {
                      "$id": "42",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "43",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "44",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "45",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "A801CC"
                    },
                    {
                      "$id": "46",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "47",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "A80133"
                    },
                    {
                      "$id": "48",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "49",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "50",
                      "IsShowingInPis": true,
                      "PisIndex": 5,
                      "VariableName": "DZR_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-2B75C"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "39"
                  },
                  "Section": 0
                },
                {
                  "$id": "51",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Query_temperature",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "52",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Hex_Query"
                    },
                    {
                      "$id": "53",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_DZR_COM"
                    },
                    {
                      "$id": "54",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "55",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "A801AA"
                    },
                    {
                      "$id": "56",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "57",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "58",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "hex"
                    },
                    {
                      "$id": "59",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "60",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "61",
                      "IsShowingInPis": true,
                      "PisIndex": 6,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-42192"
                    },
                    {
                      "$id": "62",
                      "IsShowingInPis": true,
                      "PisIndex": 7,
                      "VariableName": "temp_sign",
                      "Process": "=SubStr(var_temp_raw,5:6)",
                      "Min": "00",
                      "Max": "00",
                      "ErrorCode": "E-97633"
                    },
                    {
                      "$id": "63",
                      "IsShowingInPis": true,
                      "PisIndex": 8,
                      "VariableName": "current_temp",
                      "Process": "=SubStr(var_temp_raw,7:8)+'.'+SubStr(var_temp_raw,9:10)",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-2283B"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "39"
                  },
                  "Section": 0
                },
                {
                  "$id": "64",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show temperature",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "='current temperature:'+var_current_temp",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "39"
                  },
                  "Section": 0
                }
              ],
              "Label": "Temperature_DZR",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            },
            {
              "$id": "65",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "66",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial DL11B ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "67",
                      "ArgumentName": "Command",
                      "ArgumentValue": "8:HexAutoInitial"
                    },
                    {
                      "$id": "68",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "69",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "70",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "71",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "01040400000130FA"
                    },
                    {
                      "$id": "72",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "73",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "010402"
                    },
                    {
                      "$id": "74",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "75",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "76",
                      "IsShowingInPis": true,
                      "PisIndex": 9,
                      "VariableName": "DL11B_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-5EE6A"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "65"
                  },
                  "Section": 0
                },
                {
                  "$id": "77",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Query_temperature",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "78",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Hex_Query"
                    },
                    {
                      "$id": "79",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_DL11B_COM"
                    },
                    {
                      "$id": "80",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "81",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "01040400000130FA"
                    },
                    {
                      "$id": "82",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "83",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "84",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "hex"
                    },
                    {
                      "$id": "85",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "86",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "87",
                      "IsShowingInPis": true,
                      "PisIndex": 6,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-42192"
                    },
                    {
                      "$id": "88",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "temp_sign",
                      "Process": "=SubStr(var_temp_raw,5:6)",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-97633"
                    },
                    {
                      "$id": "89",
                      "IsShowingInPis": true,
                      "PisIndex": 10,
                      "VariableName": "current_temp2",
                      "Process": "=Hex2Dec(SubStr(var_temp_raw,7:10))",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-7407B"
                    },
                    {
                      "$id": "90",
                      "IsShowingInPis": true,
                      "PisIndex": 8,
                      "VariableName": "current_temp",
                      "Process": "=SubStr(var_current_temp2,1:2)+'.'+SubStr(var_current_temp2,3)",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-2283B"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "65"
                  },
                  "Section": 0
                },
                {
                  "$id": "91",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show temperature",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "='current temperature:'+var_current_temp",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "65"
                  },
                  "Section": 0
                }
              ],
              "Label": "Temperature_DL",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            },
            {
              "$id": "92",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "93",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read POE Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "94",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "95",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "96",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "97",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "POE_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "98",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "POE_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F0B5E"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "99",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "100",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "101",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "102",
                      "ArgumentName": "",
                      "ArgumentValue": "1000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "103",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "104",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "105",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "106",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "107",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "108",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "109",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "110",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "111",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "112",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "113",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "114",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "115",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "116",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "AC OFF,DC OFF"
                    },
                    {
                      "$id": "117",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "118",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "119",
                      "IsShowingInPis": true,
                      "PisIndex": 11,
                      "VariableName": "POE_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F0B5E"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "120",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch POE Port 1 output enable",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "121",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "122",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "123",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "124",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:OUT1"
                    },
                    {
                      "$id": "125",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "126",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "127",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "128",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "129",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "130",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "poe_response",
                      "Process": "",
                      "Min": "OUT1",
                      "Max": "",
                      "ErrorCode": "E-915A4"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "131",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "132",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE AC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "133",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "134",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "135",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:AC ON"
                        },
                        {
                          "$id": "136",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "137",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "138",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "139",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "140",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "141",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "AC ON,DC OFF",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        }
                      ],
                      "FailRetryEnabled": false,
                      "RetryCount": 0,
                      "WaitInterval": 0,
                      "FailJumpEnabled": false,
                      "FailJumpLabel": "",
                      "LoopEnabled": false,
                      "LoopLabel": "",
                      "LoopCount": 0,
                      "IfEnabled": false,
                      "IfJumpLabel": "",
                      "IfConditions": [],
                      "IfLogic": 0,
                      "GotoEnabled": false,
                      "GotoLabel": "",
                      "Label": "",
                      "Description": "",
                      "Status": 1,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "131"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "142",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE AC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "143",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "144",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "145",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:AC POWER"
                        },
                        {
                          "$id": "146",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "147",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "148",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "149",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "150",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "151",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "152",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-444D5"
                        },
                        {
                          "$id": "153",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-20A1E"
                        },
                        {
                          "$id": "154",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_walt",
                          "Process": "=substr(var_poe_response,15:18)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-86133"
                        }
                      ],
                      "FailRetryEnabled": false,
                      "RetryCount": 0,
                      "WaitInterval": 0,
                      "FailJumpEnabled": false,
                      "FailJumpLabel": "",
                      "LoopEnabled": false,
                      "LoopLabel": "",
                      "LoopCount": 0,
                      "IfEnabled": false,
                      "IfJumpLabel": "",
                      "IfConditions": [],
                      "IfLogic": 0,
                      "GotoEnabled": false,
                      "GotoLabel": "",
                      "Label": "",
                      "Description": "",
                      "Status": 1,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "131"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "AC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "155",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "156",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE DC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "157",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "158",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "159",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:DC ON"
                        },
                        {
                          "$id": "160",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "161",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "162",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "163",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "164",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "165",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "AC OFF,DC ON",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        }
                      ],
                      "FailRetryEnabled": false,
                      "RetryCount": 0,
                      "WaitInterval": 0,
                      "FailJumpEnabled": false,
                      "FailJumpLabel": "",
                      "LoopEnabled": false,
                      "LoopLabel": "",
                      "LoopCount": 0,
                      "IfEnabled": false,
                      "IfJumpLabel": "",
                      "IfConditions": [],
                      "IfLogic": 0,
                      "GotoEnabled": false,
                      "GotoLabel": "",
                      "Label": "",
                      "Description": "",
                      "Status": 1,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "155"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "166",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE DC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "167",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "168",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "169",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:DC POWER"
                        },
                        {
                          "$id": "170",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "171",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "172",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "173",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "174",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "175",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "176",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-C5400"
                        },
                        {
                          "$id": "177",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-00FD2"
                        },
                        {
                          "$id": "178",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_walt",
                          "Process": "=substr(var_poe_response,15:18)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-D87C5"
                        }
                      ],
                      "FailRetryEnabled": false,
                      "RetryCount": 0,
                      "WaitInterval": 0,
                      "FailJumpEnabled": false,
                      "FailJumpLabel": "",
                      "LoopEnabled": false,
                      "LoopLabel": "",
                      "LoopCount": 0,
                      "IfEnabled": false,
                      "IfJumpLabel": "",
                      "IfConditions": [],
                      "IfLogic": 0,
                      "GotoEnabled": false,
                      "GotoLabel": "",
                      "Label": "",
                      "Description": "",
                      "Status": 1,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "155"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "DC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "179",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "5000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                },
                {
                  "$id": "180",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set POE Power Off",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "181",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "182",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "183",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "184",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "185",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "186",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "187",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "188",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "189",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "190",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "poe_response",
                      "Process": "",
                      "Min": "AC OFF,DC OFF",
                      "Max": "",
                      "ErrorCode": "E-915A4"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "92"
                  },
                  "Section": 0
                }
              ],
              "Label": "POE Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            },
            {
              "$id": "191",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "192",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "193",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "194",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "195",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "196",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "ACON_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "197",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "ACON_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-BE78D"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "191"
                  },
                  "Section": 0
                },
                {
                  "$id": "198",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "199",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "200",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "201",
                      "ArgumentName": "",
                      "ArgumentValue": "1000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "191"
                  },
                  "Section": 0
                },
                {
                  "$id": "202",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "203",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "204",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "205",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "206",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "207",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "191"
                  },
                  "Section": 0
                },
                {
                  "$id": "208",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "209",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "210",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "211",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "212",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "213",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "214",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "215",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON BOX"
                    },
                    {
                      "$id": "216",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "217",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "200000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "218",
                      "IsShowingInPis": true,
                      "PisIndex": 12,
                      "VariableName": "ACON_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-BE78D"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "191"
                  },
                  "Section": 0
                },
                {
                  "$id": "219",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Cycler Up",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "220",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "221",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "222",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "223",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "P39L"
                    },
                    {
                      "$id": "224",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "225",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "226",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "227",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "228",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "229",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "acon_response",
                      "Process": "",
                      "Min": "AA",
                      "Max": "",
                      "ErrorCode": "E-66917"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "191"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            },
            {
              "$id": "230",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "231",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "232",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "233",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "234",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "235",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "ACON_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "236",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "ACON_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-BE78D"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                },
                {
                  "$id": "237",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "238",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "239",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "240",
                      "ArgumentName": "",
                      "ArgumentValue": "1000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                },
                {
                  "$id": "241",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "242",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "243",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "244",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "245",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "246",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                },
                {
                  "$id": "247",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "248",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "249",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "250",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "251",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "252",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "253",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "254",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON BOX"
                    },
                    {
                      "$id": "255",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "256",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "200000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "257",
                      "IsShowingInPis": true,
                      "PisIndex": 12,
                      "VariableName": "ACON_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-BE78D"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                },
                {
                  "$id": "258",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Cycler Up",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "259",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "260",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "261",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "262",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "VER"
                    },
                    {
                      "$id": "263",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "264",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "265",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "266",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "267",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "268",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "acon_response",
                      "Process": "",
                      "Min": "AA",
                      "Max": "",
                      "ErrorCode": "E-66917"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                },
                {
                  "$id": "269",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Measure POE AC Current",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "270",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "271",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "272",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "273",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "POWER"
                    },
                    {
                      "$id": "274",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "2000"
                    },
                    {
                      "$id": "275",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "276",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "277",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "278",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "279",
                      "IsShowingInPis": true,
                      "PisIndex": 13,
                      "VariableName": "POE_AC_Vol",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-444D5"
                    },
                    {
                      "$id": "280",
                      "IsShowingInPis": true,
                      "PisIndex": 14,
                      "VariableName": "POE_AC_Current",
                      "Process": "",
                      "Min": "0",
                      "Max": "300",
                      "ErrorCode": "E-20A1E"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "230"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON Box Plus Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "37"
              },
              "Section": 0
            }
          ],
          "Label": "Initial Com Info",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "281",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "282",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "283",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Load",
                  "Command": "DLL",
                  "Subcommand": "Load",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "284",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "UTS2_VISA_cs_Ver",
                      "Process": "",
                      "Min": "20200519",
                      "Max": "99999999",
                      "ErrorCode": "E-684BE"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "282"
                  },
                  "Section": 0
                },
                {
                  "$id": "285",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "286",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "287",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "0.3"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": true,
                  "RetryCount": 10,
                  "WaitInterval": 2000,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "282"
                  },
                  "Section": 0
                },
                {
                  "$id": "288",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "289",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "290",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "0.3"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": true,
                  "RetryCount": 10,
                  "WaitInterval": 2000,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "282"
                  },
                  "Section": 0
                }
              ],
              "Label": "UTS_SCPI",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "281"
              },
              "Section": 0
            },
            {
              "$id": "291",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "292",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "SCPI Assign 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "293",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:Assign"
                    },
                    {
                      "$id": "294",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "295",
                      "ArgumentName": "NameOfIDN",
                      "ArgumentValue": "\"[3634A]\""
                    },
                    {
                      "$id": "296",
                      "ArgumentName": "Priority",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "291"
                  },
                  "Section": 0
                },
                {
                  "$id": "297",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set Max 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "298",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "299",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "300",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "SENS:CURR:RANG MAX"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "291"
                  },
                  "Section": 0
                },
                {
                  "$id": "301",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "KY3634A Sample rate/period",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "302",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "303",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "304",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "SENS:SWE:TINT 15.6E-6;POIN 4096"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "291"
                  },
                  "Section": 0
                },
                {
                  "$id": "305",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V 3A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "306",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "307",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "308",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 0V;OUTP 1;CURR 3000 MA;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "291"
                  },
                  "Section": 0
                },
                {
                  "$id": "309",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "310",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Keysight 3634A Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "UTS2_VISA_cs.dll",
                      "Arguments": [
                        {
                          "$id": "311",
                          "ArgumentName": "Command",
                          "ArgumentValue": "5:QUERY"
                        },
                        {
                          "$id": "312",
                          "ArgumentName": "NickName",
                          "ArgumentValue": "KY3634"
                        },
                        {
                          "$id": "313",
                          "ArgumentName": "NameofIDN",
                          "ArgumentValue": "MEAS:CURR?"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "314",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "echo",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-33267"
                        },
                        {
                          "$id": "315",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "KY3634A_current",
                          "Process": "=NumCal(Var_echo*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-9694B"
                        }
                      ],
                      "FailRetryEnabled": false,
                      "RetryCount": 100,
                      "WaitInterval": 10,
                      "FailJumpEnabled": false,
                      "FailJumpLabel": "",
                      "LoopEnabled": false,
                      "LoopLabel": "",
                      "LoopCount": 0,
                      "IfEnabled": false,
                      "IfJumpLabel": "",
                      "IfConditions": [],
                      "IfLogic": 0,
                      "GotoEnabled": false,
                      "GotoLabel": "",
                      "Label": "",
                      "Description": "",
                      "Status": 1,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "309"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "E3634 Current test",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "291"
                  },
                  "Section": 0
                }
              ],
              "Label": "Keysight E3634A_USB",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "281"
              },
              "Section": 0
            },
            {
              "$id": "316",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [],
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "281"
              },
              "Section": 0
            }
          ],
          "Label": "Init_SCPI",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "317",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "318",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS_SZTDE_MySQL.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "319",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "MySQL_version",
                  "Process": "",
                  "Min": "02000001",
                  "Max": "",
                  "ErrorCode": "E-A9C49"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "320",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server IPAddress",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "321",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "322",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "323",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "324",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "IPAddress"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "325",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "IPAddress",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-F8AB3"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "326",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UserName",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "327",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "328",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "329",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "330",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "UserName"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "331",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "UserName",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-095A2"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "332",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server PassWord",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "333",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "334",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "335",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "336",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Password"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "337",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Password",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-6C7C3"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "338",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server Port",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "339",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "340",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "341",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "342",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Port"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "343",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Port",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-C9E36"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "344",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server EIS DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "345",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "346",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "347",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "348",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "EISDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "349",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "EISDataBase",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-9DCAF"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "350",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UID DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "351",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "352",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "353",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "354",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "UIDDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "355",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "UIDDataBase",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-8F5E0"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "356",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server MAC DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "357",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "358",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "359",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "360",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "MACDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "361",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "MACDataBase",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-A31B0"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "362",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Define Server Connect Status & UseDataBase",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "363",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "Server_Status",
                  "Process": "0",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-579CD"
                },
                {
                  "$id": "364",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "UseDataBase",
                  "Process": "=var_MACDataBase",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-06A5A"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "365",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Initial JDM MySQL Server",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [
                {
                  "$id": "366",
                  "ArgumentName": "Command",
                  "ArgumentValue": "1:Login"
                },
                {
                  "$id": "367",
                  "ArgumentName": "IP",
                  "ArgumentValue": "=var_IPAddress"
                },
                {
                  "$id": "368",
                  "ArgumentName": "UserName",
                  "ArgumentValue": "=var_UserName"
                },
                {
                  "$id": "369",
                  "ArgumentName": "Password",
                  "ArgumentValue": "=var_Password"
                },
                {
                  "$id": "370",
                  "ArgumentName": "DataBase",
                  "ArgumentValue": "=var_UseDataBase"
                },
                {
                  "$id": "371",
                  "ArgumentName": "Port",
                  "ArgumentValue": "=var_Port"
                },
                {
                  "$id": "372",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "373",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Server_Status",
                  "Process": "",
                  "Min": "1",
                  "Max": "1",
                  "ErrorCode": "E-579CD"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            },
            {
              "$id": "374",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check MySQL Runtime",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "375",
                  "ArgumentName": "Command",
                  "ArgumentValue": "2:Compare"
                },
                {
                  "$id": "376",
                  "ArgumentName": "String1",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "377",
                  "ArgumentName": "String",
                  "ArgumentValue": "=var_Server_Status"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "317"
              },
              "Section": 0
            }
          ],
          "Label": "Initial JDM MySQL System",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        }
      ],
      "Label": "Initialization",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 0
    },
    {
      "$id": "378",
      "Name": "",
      "Children": [
        {
          "$id": "379",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "380",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get_Line_strong",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_txtinfo_cs.dll'",
              "Arguments": [
                {
                  "$id": "381",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "1:GetLineString"
                },
                {
                  "$id": "382",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + '910-005872.txt'"
                },
                {
                  "$id": "383",
                  "ArgumentName": "LineNum",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "384",
                  "IsShowingInPis": true,
                  "PisIndex": 15,
                  "VariableName": "Line_string",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-122FB"
                },
                {
                  "$id": "385",
                  "IsShowingInPis": true,
                  "PisIndex": 16,
                  "VariableName": "9L_SN",
                  "Process": "=SubStr(var_Line_string,12:23)",
                  "Min": "xxxxLZxxxxx9",
                  "Max": "",
                  "ErrorCode": "E-4E992"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "379"
              },
              "Section": 1
            },
            {
              "$id": "386",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "DeleteLineString",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_txtinfo_cs.dll'",
              "Arguments": [
                {
                  "$id": "387",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "2:DeleteLineString"
                },
                {
                  "$id": "388",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + '910-005872.txt'"
                },
                {
                  "$id": "389",
                  "ArgumentName": "LineNum",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "390",
                  "IsShowingInPis": true,
                  "PisIndex": 17,
                  "VariableName": "result",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-E27F3"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "379"
              },
              "Section": 1
            }
          ],
          "Label": "UTS_SZTDE_txtInfo",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "391",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "392",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Clear-Picture",
              "Command": "Picture",
              "Subcommand": "Clear",
              "CommandParameters": "\r\n",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "391"
              },
              "Section": 1
            },
            {
              "$id": "393",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Loop retry=0",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "394",
                  "IsShowingInPis": true,
                  "PisIndex": 18,
                  "VariableName": "Finddevloop",
                  "Process": "0",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-D144C"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "391"
              },
              "Section": 1
            }
          ],
          "Label": "Initial Test loop",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "395",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "396",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Down",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "397",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "398",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "399",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "400",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39H"
                },
                {
                  "$id": "401",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "402",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "403",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "404",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "405",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "406",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "acon_response",
                  "Process": "",
                  "Min": "AA",
                  "Max": "",
                  "ErrorCode": "E-66917"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "395"
              },
              "Section": 1
            }
          ],
          "Label": "Cycler Down",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "407",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "408",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "409",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "410",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "411",
                  "ArgumentName": "CommandtoPPS",
                  "ArgumentValue": "VOLT 0V;OUTP 0;CURR 3000 MA;"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "407"
              },
              "Section": 1
            },
            {
              "$id": "412",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "2000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "407"
              },
              "Section": 1
            }
          ],
          "Label": "Micpod DC48V",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "413",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "414",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE AC enable",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "415",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "416",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "417",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "418",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:AC ON"
                },
                {
                  "$id": "419",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "420",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "421",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "422",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "423",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "424",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "poe_response",
                  "Process": "",
                  "Min": "AC ON,DC OFF",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "413"
              },
              "Section": 1
            },
            {
              "$id": "425",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "5000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "413"
              },
              "Section": 1
            },
            {
              "$id": "426",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure POE AC Current",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "427",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "428",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "429",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "430",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "MEA:AC POWER"
                },
                {
                  "$id": "431",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "432",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "433",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "434",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "435",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "436",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "poe_response",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                },
                {
                  "$id": "437",
                  "IsShowingInPis": true,
                  "PisIndex": 13,
                  "VariableName": "POE_AC_Vol",
                  "Process": "=substr(var_poe_response,1:5)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-444D5"
                },
                {
                  "$id": "438",
                  "IsShowingInPis": true,
                  "PisIndex": 14,
                  "VariableName": "POE_AC_Current",
                  "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                  "Min": "0",
                  "Max": "300",
                  "ErrorCode": "E-20A1E"
                },
                {
                  "$id": "439",
                  "IsShowingInPis": true,
                  "PisIndex": 19,
                  "VariableName": "POE_AC_walt",
                  "Process": "=substr(var_poe_response,15:18)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-86133"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "413"
              },
              "Section": 1
            }
          ],
          "Label": "POE AC Power ON",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "440",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "441",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find device loop",
              "Command": "Function",
              "Subcommand": "Call",
              "CommandParameters": "Find ADB Devices",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "Call Find ADB device",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "440"
              },
              "Section": 1
            }
          ],
          "Label": "Check ADB Device",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "442",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "443",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB root",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "444",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "445",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb root"
                },
                {
                  "$id": "446",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "447",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "448",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "442"
              },
              "Section": 1
            }
          ],
          "Label": "Device root",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "449",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "450",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read UID from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "451",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "452",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_uid"
                },
                {
                  "$id": "453",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "454",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "uid=;Error Message=;API status="
                },
                {
                  "$id": "455",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "456",
                  "IsShowingInPis": true,
                  "PisIndex": 20,
                  "VariableName": "UID",
                  "Process": "",
                  "Min": "XXXXXXXXXXXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-C270F"
                },
                {
                  "$id": "457",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "458",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 500,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Generate UID",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": true,
              "GotoLabel": "UID Finish",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "449"
              },
              "Section": 1
            },
            {
              "$id": "459",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "460",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run Bat Get 3bit random UID",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "461",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "462",
                      "ArgumentName": "Command",
                      "ArgumentValue": "RandomUID.bat"
                    },
                    {
                      "$id": "463",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "464",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "UID="
                    },
                    {
                      "$id": "465",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "466",
                      "IsShowingInPis": true,
                      "PisIndex": 21,
                      "VariableName": "ranUID",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-70492"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "459"
                  },
                  "Section": 1
                },
                {
                  "$id": "467",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Generate UID",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "468",
                      "IsShowingInPis": true,
                      "PisIndex": 20,
                      "VariableName": "UID",
                      "Process": "=Remove(SubStr($today,3:8)+$time,':')+var_ranUID+\"8\"",
                      "Min": "XXXXXXXXXXXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-C270F"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "459"
                  },
                  "Section": 1
                },
                {
                  "$id": "469",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write UID to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "470",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "471",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_uid '+var_UID"
                    },
                    {
                      "$id": "472",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "473",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "474",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "475",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "476",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 500,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "459"
                  },
                  "Section": 1
                },
                {
                  "$id": "477",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "478",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "479",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "480",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "481",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "482",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "459"
                  },
                  "Section": 1
                },
                {
                  "$id": "483",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read UID from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "484",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "485",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_uid"
                    },
                    {
                      "$id": "486",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "487",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "uid=;Error Message=;API status="
                    },
                    {
                      "$id": "488",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "489",
                      "IsShowingInPis": true,
                      "PisIndex": 20,
                      "VariableName": "UID",
                      "Process": "",
                      "Min": "XXXXXXXXXXXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-C270F"
                    },
                    {
                      "$id": "490",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "491",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 500,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "459"
                  },
                  "Section": 1
                }
              ],
              "Label": "Generate UID",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "449"
              },
              "Section": 1
            },
            {
              "$id": "492",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "10",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "UID Finish",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "449"
              },
              "Section": 1
            }
          ],
          "Label": "UID Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "493",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "494",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Pre-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "495",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "496",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_pre_station"
                },
                {
                  "$id": "497",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "498",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_pre_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "499",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "500",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "pre_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-307AC"
                },
                {
                  "$id": "501",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "502",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "493"
              },
              "Section": 1
            }
          ],
          "Label": "Check Pre-Station PassFlag Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "503",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "504",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to FAIL",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "505",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "506",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_fail"
                },
                {
                  "$id": "507",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "508",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "509",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "510",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "511",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "503"
              },
              "Section": 1
            },
            {
              "$id": "512",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "513",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "514",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "515",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "516",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "517",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "503"
              },
              "Section": 1
            },
            {
              "$id": "518",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "519",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "520",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "521",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "522",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "523",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "524",
                  "IsShowingInPis": true,
                  "PisIndex": 22,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "FAIL",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "525",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "526",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "503"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Fail",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "527",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "528",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device Setting Version",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "529",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "530",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                },
                {
                  "$id": "531",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "Device"
                },
                {
                  "$id": "532",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Version"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "533",
                  "IsShowingInPis": true,
                  "PisIndex": 23,
                  "VariableName": "Dev_Ver",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-E0C9B"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "534",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Version Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "535",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "536",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell versions"
                },
                {
                  "$id": "537",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "538",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "model=;software version=;Error Message=;API status="
                },
                {
                  "$id": "539",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "540",
                  "IsShowingInPis": true,
                  "PisIndex": 24,
                  "VariableName": "devModel",
                  "Process": "",
                  "Min": "Sentinel",
                  "Max": "",
                  "ErrorCode": "E-77190"
                },
                {
                  "$id": "541",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "swVersion",
                  "Process": "",
                  "Min": "=var_Dev_Ver",
                  "Max": "",
                  "ErrorCode": "E-42F89"
                },
                {
                  "$id": "542",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "543",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "544",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device sensor ID Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "545",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "546",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sensor ID"
                },
                {
                  "$id": "547",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "548",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "MAIN sensor ID=;SUB sensor ID=;Error Message=;API status="
                },
                {
                  "$id": "549",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "550",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "main_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-F22B4"
                },
                {
                  "$id": "551",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "sub_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-D16C2"
                },
                {
                  "$id": "552",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "553",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "554",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device CPU temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "555",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "556",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_cpu_temp"
                },
                {
                  "$id": "557",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "558",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "cpu_big1=;Error Message=;API status="
                },
                {
                  "$id": "559",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "560",
                  "IsShowingInPis": true,
                  "PisIndex": 25,
                  "VariableName": "dev_CPU_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3A766"
                },
                {
                  "$id": "561",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "562",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "563",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device NTC temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "564",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "565",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_NTC_temp"
                },
                {
                  "$id": "566",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "567",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "temp1=;Error Message=;API status="
                },
                {
                  "$id": "568",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "569",
                  "IsShowingInPis": true,
                  "PisIndex": 26,
                  "VariableName": "dev_NTC_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EA589"
                },
                {
                  "$id": "570",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "571",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "572",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DRAM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "573",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "574",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell dram_info"
                },
                {
                  "$id": "575",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "576",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "577",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "578",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "579",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            },
            {
              "$id": "580",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DROM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "581",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "582",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell drom_info"
                },
                {
                  "$id": "583",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "584",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "585",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "586",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "587",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "527"
              },
              "Section": 1
            }
          ],
          "Label": "Device information Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "588",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "589",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Write Product Name to device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "590",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "591",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_product_name '+var_project_name"
                },
                {
                  "$id": "592",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "593",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "594",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "595",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "596",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "588"
              },
              "Section": 1
            },
            {
              "$id": "597",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "598",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "599",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "600",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "601",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "602",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "588"
              },
              "Section": 1
            },
            {
              "$id": "603",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Product Name from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "604",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "605",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_product_name"
                },
                {
                  "$id": "606",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "607",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Product name=;Error Message=;API status="
                },
                {
                  "$id": "608",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "609",
                  "IsShowingInPis": true,
                  "PisIndex": 27,
                  "VariableName": "dev_product_name",
                  "Process": "",
                  "Min": "=var_project_name",
                  "Max": "",
                  "ErrorCode": "E-9C73A"
                },
                {
                  "$id": "610",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "611",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "588"
              },
              "Section": 1
            }
          ],
          "Label": "Product Name Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "612",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "613",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read 8LSN from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "614",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "615",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_sn"
                },
                {
                  "$id": "616",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "617",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "sn=;Error Message=;API status="
                },
                {
                  "$id": "618",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "619",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "8L_SN",
                  "Process": "",
                  "Min": "XXXXLZXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-55614"
                },
                {
                  "$id": "620",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "621",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 2,
              "WaitInterval": 200,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Call Key IN 8L SN",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": true,
              "GotoLabel": "8LSN Finish",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "612"
              },
              "Section": 1
            },
            {
              "$id": "622",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "623",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Key IN 8L SN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_KeyIn.dll",
                  "Arguments": [
                    {
                      "$id": "624",
                      "ArgumentName": "",
                      "ArgumentValue": "04:auto return"
                    },
                    {
                      "$id": "625",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "626",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number"
                    },
                    {
                      "$id": "627",
                      "ArgumentName": "",
                      "ArgumentValue": "20"
                    },
                    {
                      "$id": "628",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                    },
                    {
                      "$id": "629",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "630",
                      "ArgumentName": "",
                      "ArgumentValue": "1:12"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "631",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "scan_8LSN",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-61EBF"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "622"
                  },
                  "Section": 1
                },
                {
                  "$id": "632",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show-8L",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "=var_scan_8LSN\r\n",
                  "Arguments": [
                    {
                      "$id": "633",
                      "ArgumentName": "",
                      "ArgumentValue": "0xFF0000"
                    },
                    {
                      "$id": "634",
                      "ArgumentName": "",
                      "ArgumentValue": "30"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "622"
                  },
                  "Section": 1
                },
                {
                  "$id": "635",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write 8LSN to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "636",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "637",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_sn '+var_scan_8LSN"
                    },
                    {
                      "$id": "638",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "639",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "640",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "641",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "642",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "622"
                  },
                  "Section": 1
                },
                {
                  "$id": "643",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "644",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "645",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "646",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "647",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "648",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "622"
                  },
                  "Section": 1
                },
                {
                  "$id": "649",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read 8LSN from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "650",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "651",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_sn"
                    },
                    {
                      "$id": "652",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "653",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "sn=;Error Message=;API status="
                    },
                    {
                      "$id": "654",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "655",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "8L_SN",
                      "Process": "",
                      "Min": "XXXXLZXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-55614"
                    },
                    {
                      "$id": "656",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "657",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "622"
                  },
                  "Section": 1
                }
              ],
              "Label": "Call Key IN 8L SN",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "612"
              },
              "Section": 1
            },
            {
              "$id": "658",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "100",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "8LSN Finish",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "612"
              },
              "Section": 1
            }
          ],
          "Label": "8LSN Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "659",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "660",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "ZYNQ Version Check",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "661",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "662",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell audio getfwver"
                },
                {
                  "$id": "663",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "664",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "result=;Error Message=;API status="
                },
                {
                  "$id": "665",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "666",
                  "IsShowingInPis": true,
                  "PisIndex": 28,
                  "VariableName": "audioVersion",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-93272"
                },
                {
                  "$id": "667",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "668",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 2000,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "659"
              },
              "Section": 1
            }
          ],
          "Label": "Audio board version check",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "669",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "670",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "671",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Define Server UseDataBase & AssignData & AssignTable & TableFunction",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "672",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "UseDataBase",
                      "Process": "=var_MACDataBase",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-06A5A"
                    },
                    {
                      "$id": "673",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "AssignData",
                      "Process": "-",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-6613F"
                    },
                    {
                      "$id": "674",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "TableFunctionStr",
                      "Process": "mac",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F8C27"
                    },
                    {
                      "$id": "675",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "TableIndexStr",
                      "Process": "mac",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-BE787"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                },
                {
                  "$id": "676",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Call Assign Data & Change status to 1",
                  "Command": "Function",
                  "Subcommand": "Call",
                  "CommandParameters": "Assign Data & Change status to 1",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                },
                {
                  "$id": "677",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write Mac to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "678",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "679",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell ethernet setmacaddr '+var_AssignData"
                    },
                    {
                      "$id": "680",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "681",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "682",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "683",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "684",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                },
                {
                  "$id": "685",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "686",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "687",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "688",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "689",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "690",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                },
                {
                  "$id": "691",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read Mac from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "692",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "693",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell ethernet getmacaddr"
                    },
                    {
                      "$id": "694",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "695",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "MAC address=;Error Message=;API status="
                    },
                    {
                      "$id": "696",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "697",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "dev_eth_mac",
                      "Process": "",
                      "Min": "=var_AssignData",
                      "Max": "",
                      "ErrorCode": "E-5A322"
                    },
                    {
                      "$id": "698",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "699",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retApi",
                      "Process": "",
                      "Min": "OK",
                      "Max": "",
                      "ErrorCode": "E-D1319"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 2,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                },
                {
                  "$id": "700",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Call Change Used to 1 & Move Data to Used",
                  "Command": "Function",
                  "Subcommand": "Call",
                  "CommandParameters": "Change Used to 1 & Move Data to Used",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "670"
                  },
                  "Section": 1
                }
              ],
              "Label": "Server Assign Mac",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "669"
              },
              "Section": 1
            },
            {
              "$id": "701",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device IP address from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "702",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "703",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_ethernetaddr"
                },
                {
                  "$id": "704",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "705",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "IP address=;Error Message=;API status="
                },
                {
                  "$id": "706",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "707",
                  "IsShowingInPis": true,
                  "PisIndex": 29,
                  "VariableName": "dev_ip",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-374E6"
                },
                {
                  "$id": "708",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "709",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 5,
              "WaitInterval": 1000,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "669"
              },
              "Section": 1
            },
            {
              "$id": "710",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Ethernet Ping ip address",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "711",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "712",
                  "ArgumentName": "ADBCommand",
                  "ArgumentValue": "adb shell ping -c 3 192.168.50.1"
                },
                {
                  "$id": "713",
                  "ArgumentName": "EndString",
                  "ArgumentValue": "3 received"
                },
                {
                  "$id": "714",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "715",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "669"
              },
              "Section": 1
            }
          ],
          "Label": "Ethernet Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "716",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "717",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Waitkey",
              "Command": "Wait Key",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "718",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "10000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "719",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "720",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "721",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "722",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "723",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "724",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": true,
              "RetryCount": 1,
              "WaitInterval": 200,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Micpod delay",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "725",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "20000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "726",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Micpod LTDM Initial",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "727",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMDR"
                },
                {
                  "$id": "728",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell /vendor/bin/audiocore /vendor/etc/sentinel.ini &"
                },
                {
                  "$id": "729",
                  "ArgumentName": "Delay",
                  "ArgumentValue": "35000"
                },
                {
                  "$id": "730",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "40000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Micpod delay",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "731",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "5000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "Micpod delay",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "732",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Micpod device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "733",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "734",
                  "ArgumentName": "Command",
                  "ArgumentValue": "tdebt.exe -c micpod -g micpod_button_status"
                },
                {
                  "$id": "735",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "736",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "737",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "738",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "micpod_dev",
                  "Process": "",
                  "Min": "1",
                  "Max": "",
                  "ErrorCode": "E-40D40"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "Micpod Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "739",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "740",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "741",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "742",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "743",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "744",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "745",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "746",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "747",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "748",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "749",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "750",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "TP97_48V",
                      "Process": "",
                      "Min": "45",
                      "Max": "48",
                      "ErrorCode": "E-AA32A"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "739"
                  },
                  "Section": 1
                }
              ],
              "Label": "Micpod 48V Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "751",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Confirm LTDM Result",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "752",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "13:ShowDialog"
                },
                {
                  "$id": "753",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + 'MicpodTest.jpg'"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "754",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "MainPicResult",
                  "Process": "",
                  "Min": "1",
                  "Max": "",
                  "ErrorCode": "E-9C5C5"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "755",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "756",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show-switch RJ45 Picture",
                  "Command": "Picture",
                  "Subcommand": "Load",
                  "CommandParameters": "=$testplanpath + 'SwitchRJ45.jpg'",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "755"
                  },
                  "Section": 1
                },
                {
                  "$id": "757",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Waitkey",
                  "Command": "Wait Key",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "755"
                  },
                  "Section": 1
                },
                {
                  "$id": "758",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "759",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "760",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "761",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "762",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "763",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "764",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "765",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "766",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "767",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "768",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "TP97_0V",
                      "Process": "",
                      "Min": "-0.1",
                      "Max": "0.1",
                      "ErrorCode": "E-EEAC3"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "755"
                  },
                  "Section": 1
                }
              ],
              "Label": "Wrong POE Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            },
            {
              "$id": "769",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "770",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "771",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "772",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "773",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "774",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": true,
              "RetryCount": 1,
              "WaitInterval": 200,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Micpod delay",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "716"
              },
              "Section": 1
            }
          ],
          "Label": "LTDM Test-Mute Function",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "775",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "776",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "VCC 5V0 chcek",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "777",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "778",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "779",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "780",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "PA0"
                },
                {
                  "$id": "781",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "782",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "783",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "784",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "785",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "786",
                  "IsShowingInPis": true,
                  "PisIndex": 30,
                  "VariableName": "VCC_5V_Vol",
                  "Process": "",
                  "Min": "4.7",
                  "Max": "5.3",
                  "ErrorCode": "E-BDD49"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            }
          ],
          "Label": "TP67 VCC 5V0",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "787",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "788",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "789",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "790",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "791",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "792",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 0V;OUTP 1;CURR 3A;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "788"
                  },
                  "Section": 1
                },
                {
                  "$id": "793",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "1000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "788"
                  },
                  "Section": 1
                },
                {
                  "$id": "794",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "795",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "796",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "797",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "798",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "799",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "800",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "801",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "802",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "803",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "804",
                      "IsShowingInPis": true,
                      "PisIndex": 31,
                      "VariableName": "TP97_0V_48V",
                      "Process": "",
                      "Min": "0",
                      "Max": "10",
                      "ErrorCode": "E-57649"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 5,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "788"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 0V Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            },
            {
              "$id": "805",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "806",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=1V74",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "807",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "808",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "809",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 1.74V;OUTP 1;CURR 3A;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "805"
                  },
                  "Section": 1
                },
                {
                  "$id": "810",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "1000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "805"
                  },
                  "Section": 1
                },
                {
                  "$id": "811",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 1V74-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "812",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "813",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "814",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "815",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "816",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "817",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "818",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "819",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "820",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "821",
                      "IsShowingInPis": true,
                      "PisIndex": 32,
                      "VariableName": "TP97_1V74_48V",
                      "Process": "",
                      "Min": "45",
                      "Max": "50",
                      "ErrorCode": "E-6411E"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 5,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "805"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 1V74 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            },
            {
              "$id": "822",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "823",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V6",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "824",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "825",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "826",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 22.6V;OUTP 1;CURR 3A;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": true,
                  "RetryCount": 5,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "822"
                  },
                  "Section": 1
                },
                {
                  "$id": "827",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "1000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "822"
                  },
                  "Section": 1
                },
                {
                  "$id": "828",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V6-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "829",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "830",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "831",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "832",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "833",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "834",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "835",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "836",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "837",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "838",
                      "IsShowingInPis": true,
                      "PisIndex": 33,
                      "VariableName": "TP97_22V6_48V",
                      "Process": "",
                      "Min": "45",
                      "Max": "50",
                      "ErrorCode": "E-C8AAB"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "822"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V6 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            },
            {
              "$id": "839",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "840",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V8",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "841",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "842",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "843",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 22.8V;OUTP 1;CURR 3A;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "839"
                  },
                  "Section": 1
                },
                {
                  "$id": "844",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "1000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "839"
                  },
                  "Section": 1
                },
                {
                  "$id": "845",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V8-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "846",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "847",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "848",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "849",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "850",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "851",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "852",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "853",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "854",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "855",
                      "IsShowingInPis": true,
                      "PisIndex": 34,
                      "VariableName": "TP97_22V8_48V",
                      "Process": "",
                      "Min": "45",
                      "Max": "50",
                      "ErrorCode": "E-6054C"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 5,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "839"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V8 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            },
            {
              "$id": "856",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "857",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "858",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "859",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "860",
                      "ArgumentName": "CommandtoPPS",
                      "ArgumentValue": "VOLT 0V;OUTP 1;CURR 3A;"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "856"
                  },
                  "Section": 1
                },
                {
                  "$id": "861",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "1000",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "856"
                  },
                  "Section": 1
                },
                {
                  "$id": "862",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "863",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "864",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "865",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "866",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "867",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "868",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "869",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "870",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "871",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "872",
                      "IsShowingInPis": true,
                      "PisIndex": 35,
                      "VariableName": "TP97_OFF_48V",
                      "Process": "",
                      "Min": "0",
                      "Max": "10",
                      "ErrorCode": "E-4C303"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 5,
                  "WaitInterval": 200,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "856"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 OFF Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            },
            {
              "$id": "873",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "874",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "875",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "876",
                  "ArgumentName": "CommandtoPPS",
                  "ArgumentValue": "VOLT 0V;OUTP 0;CURR 3000 MA;"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "787"
              },
              "Section": 1
            }
          ],
          "Label": "TP97 Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        },
        {
          "$id": "877",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "878",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to PASS",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "879",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "880",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_pass"
                },
                {
                  "$id": "881",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "882",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "883",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "884",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "885",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "877"
              },
              "Section": 1
            },
            {
              "$id": "886",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "887",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "888",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "889",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "890",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "891",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "877"
              },
              "Section": 1
            },
            {
              "$id": "892",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "893",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "894",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "895",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "896",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "897",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "898",
                  "IsShowingInPis": true,
                  "PisIndex": 22,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "899",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "900",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retApi",
                  "Process": "",
                  "Min": "OK",
                  "Max": "",
                  "ErrorCode": "E-D1319"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "877"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Pass",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "378"
          },
          "Section": 1
        }
      ],
      "Label": "Test Items",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 1
    },
    {
      "$id": "901",
      "Name": "",
      "Children": [
        {
          "$id": "902",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Clear-Picture",
          "Command": "Picture",
          "Subcommand": "Clear",
          "CommandParameters": "\r\n",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "901"
          },
          "Section": 2
        },
        {
          "$id": "903",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Reset 3634A=0V 3A",
          "Command": "DLL",
          "Subcommand": "Execute",
          "CommandParameters": "UTS2_VISA_cs.dll",
          "Arguments": [
            {
              "$id": "904",
              "ArgumentName": "Command",
              "ArgumentValue": "3:Write"
            },
            {
              "$id": "905",
              "ArgumentName": "NickName",
              "ArgumentValue": "KY3634"
            },
            {
              "$id": "906",
              "ArgumentName": "CommandtoPPS",
              "ArgumentValue": "VOLT 0V;OUTP 0;CURR 3000 MA;"
            }
          ],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "901"
          },
          "Section": 2
        },
        {
          "$id": "907",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "908",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "1000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "907"
              },
              "Section": 2
            },
            {
              "$id": "909",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE Power Off",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "910",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "911",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "912",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "913",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:POWER OFF"
                },
                {
                  "$id": "914",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "915",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "916",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "917",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "918",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "919",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "poe_response",
                  "Process": "",
                  "Min": "AC OFF,DC OFF",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "907"
              },
              "Section": 2
            }
          ],
          "Label": "POE Power OFF",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "901"
          },
          "Section": 2
        },
        {
          "$id": "920",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "921",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Up",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "922",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "923",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "924",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "925",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39L"
                },
                {
                  "$id": "926",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "927",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "928",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "929",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "930",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "931",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "acon_response",
                  "Process": "",
                  "Min": "AA",
                  "Max": "",
                  "ErrorCode": "E-66917"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "920"
              },
              "Section": 2
            },
            {
              "$id": "932",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "1000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "920"
              },
              "Section": 2
            }
          ],
          "Label": "Cycler UP",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "901"
          },
          "Section": 2
        }
      ],
      "Label": "Post Items",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 2
    },
    {
      "$id": "933",
      "Name": "",
      "Children": [
        {
          "$id": "934",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Free All DLL",
          "Command": "DLL",
          "Subcommand": "Free",
          "CommandParameters": "",
          "Arguments": [],
          "ResultVariables": [],
          "FailRetryEnabled": false,
          "RetryCount": 0,
          "WaitInterval": 0,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
          "LoopCount": 0,
          "IfEnabled": false,
          "IfJumpLabel": "",
          "IfConditions": [],
          "IfLogic": 0,
          "GotoEnabled": false,
          "GotoLabel": "",
          "Label": "",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "933"
          },
          "Section": 3
        }
      ],
      "Label": "Termination",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 3
    },
    {
      "$id": "935",
      "Name": "",
      "Children": [
        {
          "$id": "936",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "937",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Key IN 8L SN",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_KeyIn.dll",
              "Arguments": [
                {
                  "$id": "938",
                  "ArgumentName": "",
                  "ArgumentValue": "04:auto return"
                },
                {
                  "$id": "939",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "940",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number"
                },
                {
                  "$id": "941",
                  "ArgumentName": "",
                  "ArgumentValue": "20"
                },
                {
                  "$id": "942",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                },
                {
                  "$id": "943",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "944",
                  "ArgumentName": "",
                  "ArgumentValue": "1:12"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "945",
                  "IsShowingInPis": true,
                  "PisIndex": 36,
                  "VariableName": "scan_8LSN",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-61EBF"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "936"
              },
              "Section": 4
            },
            {
              "$id": "946",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "show-8L",
              "Command": "Show Text",
              "Subcommand": "",
              "CommandParameters": "=var_scan_8LSN\r\n",
              "Arguments": [
                {
                  "$id": "947",
                  "ArgumentName": "",
                  "ArgumentValue": "0xFF0000"
                },
                {
                  "$id": "948",
                  "ArgumentName": "",
                  "ArgumentValue": "30"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "936"
              },
              "Section": 4
            },
            {
              "$id": "949",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Back",
              "Command": "Function",
              "Subcommand": "Back",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "936"
              },
              "Section": 4
            }
          ],
          "Label": "Key IN 8L SN",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "935"
          },
          "Section": 4
        },
        {
          "$id": "950",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "951",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find Device loop ++",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "952",
                  "IsShowingInPis": true,
                  "PisIndex": 18,
                  "VariableName": "Finddevloop",
                  "Process": "=numcal(var_Finddevloop+1)",
                  "Min": "0",
                  "Max": "100",
                  "ErrorCode": "E-D144C"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "Loop1",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            },
            {
              "$id": "953",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Delay",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "2000",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            },
            {
              "$id": "954",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB devices",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "955",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "956",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb devices"
                },
                {
                  "$id": "957",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "958",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "959",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "960",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "cmdretstr",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-BB963"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            },
            {
              "$id": "961",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "cmdretstr > 30 digits?(Not find device Fail)",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "962",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "tmp",
                  "Process": "=length(var_cmdretstr)",
                  "Min": "30",
                  "Max": "100",
                  "ErrorCode": "E-D2430"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": true,
              "FailJumpLabel": "Find ADB Devices",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            },
            {
              "$id": "963",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get cmd device original SN",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "964",
                  "IsShowingInPis": true,
                  "PisIndex": 37,
                  "VariableName": "devcmdsn",
                  "Process": "=substr(var_cmdretstr,25:-7)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-1B86F"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            },
            {
              "$id": "965",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Back",
              "Command": "Function",
              "Subcommand": "Back",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "950"
              },
              "Section": 4
            }
          ],
          "Label": "Find ADB Devices",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "935"
          },
          "Section": 4
        },
        {
          "$id": "966",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "967",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "968",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "969",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "970",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "971",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "972",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "973",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "974",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "975",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "976",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "977",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "978",
                      "IsShowingInPis": true,
                      "PisIndex": 39,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "967"
                  },
                  "Section": 4
                },
                {
                  "$id": "979",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Assign Data From Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "980",
                      "ArgumentName": "Command",
                      "ArgumentValue": "18:NewAssignAddress"
                    },
                    {
                      "$id": "981",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "982",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "983",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "984",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "985",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "986",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "987",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "988",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "status;used"
                    },
                    {
                      "$id": "989",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "0;0"
                    },
                    {
                      "$id": "990",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "status;pc;statusTime"
                    },
                    {
                      "$id": "991",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+$mac_address+';'+var_ServerTime"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "992",
                      "IsShowingInPis": true,
                      "PisIndex": 40,
                      "VariableName": "AssignData",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-6613F"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "967"
                  },
                  "Section": 4
                },
                {
                  "$id": "993",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "100",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "967"
                  },
                  "Section": 4
                },
                {
                  "$id": "994",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Status == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "995",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "996",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "997",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "998",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "999",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1000",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1001",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1002",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1003",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1004",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1005",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "status"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1006",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1007",
                      "IsShowingInPis": true,
                      "PisIndex": 41,
                      "VariableName": "DataStatus",
                      "Process": "",
                      "Min": "1",
                      "Max": "1",
                      "ErrorCode": "E-D6B70"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "967"
                  },
                  "Section": 4
                },
                {
                  "$id": "1008",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Back",
                  "Command": "Function",
                  "Subcommand": "Back",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "967"
                  },
                  "Section": 4
                }
              ],
              "Label": "Assign Data & Change status to 1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "966"
              },
              "Section": 4
            },
            {
              "$id": "1009",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1010",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1011",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "1012",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1013",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1014",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1015",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1016",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1017",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1018",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1019",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1020",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                },
                {
                  "$id": "1021",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Update used = 1 to Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1022",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Update"
                    },
                    {
                      "$id": "1023",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1024",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1025",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1026",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1027",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1028",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1029",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1030",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1031",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1032",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "used;usedTime;product"
                    },
                    {
                      "$id": "1033",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+var_ServerTime+';'+var_product_name"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1034",
                      "IsShowingInPis": true,
                      "PisIndex": 42,
                      "VariableName": "UpdateStatus",
                      "Process": "",
                      "Min": "1",
                      "Max": "1",
                      "ErrorCode": "E-E9DEC"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                },
                {
                  "$id": "1035",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Delay",
                  "Command": "Delay",
                  "Subcommand": "",
                  "CommandParameters": "100",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                },
                {
                  "$id": "1036",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Used == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1037",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1038",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1039",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1040",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1041",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1042",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1043",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1044",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1045",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1046",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1047",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "used"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1048",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1049",
                      "IsShowingInPis": true,
                      "PisIndex": 43,
                      "VariableName": "DataUsed",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-3379F"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                },
                {
                  "$id": "1050",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Move Data to Used Table",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1051",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Move"
                    },
                    {
                      "$id": "1052",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1053",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1054",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1055",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1056",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1057",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1058",
                      "ArgumentName": "OriginalTable",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1059",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1060",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1061",
                      "ArgumentName": "DestinationTable",
                      "ArgumentValue": "=var_TableFunctionStr+'_address_history'"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                },
                {
                  "$id": "1062",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Back",
                  "Command": "Function",
                  "Subcommand": "Back",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 0,
                  "WaitInterval": 0,
                  "FailJumpEnabled": false,
                  "FailJumpLabel": "",
                  "LoopEnabled": false,
                  "LoopLabel": "",
                  "LoopCount": 0,
                  "IfEnabled": false,
                  "IfJumpLabel": "",
                  "IfConditions": [],
                  "IfLogic": 0,
                  "GotoEnabled": false,
                  "GotoLabel": "",
                  "Label": "",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "1009"
                  },
                  "Section": 4
                }
              ],
              "Label": "Change Used to 1 & Move Data to Used",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "966"
              },
              "Section": 4
            }
          ],
          "Label": "Assign Data Process",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "935"
          },
          "Section": 4
        }
      ],
      "Label": "Function",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 4
    }
  ]
}