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
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "22",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "23",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial DZR ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "24",
                      "ArgumentName": "Command",
                      "ArgumentValue": "8:HexAutoInitial"
                    },
                    {
                      "$id": "25",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "26",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "27",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "28",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "A801CC"
                    },
                    {
                      "$id": "29",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "30",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "A80133"
                    },
                    {
                      "$id": "31",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "32",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "33",
                      "IsShowingInPis": true,
                      "PisIndex": 2,
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
                    "$ref": "22"
                  },
                  "Section": 0
                },
                {
                  "$id": "34",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Query_temperature",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "35",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Hex_Query"
                    },
                    {
                      "$id": "36",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_DZR_COM"
                    },
                    {
                      "$id": "37",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "38",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "A801AA"
                    },
                    {
                      "$id": "39",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "40",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "41",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "hex"
                    },
                    {
                      "$id": "42",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "43",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "44",
                      "IsShowingInPis": true,
                      "PisIndex": 3,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-42192"
                    },
                    {
                      "$id": "45",
                      "IsShowingInPis": true,
                      "PisIndex": 4,
                      "VariableName": "temp_sign",
                      "Process": "=SubStr(var_temp_raw,5:6)",
                      "Min": "00",
                      "Max": "00",
                      "ErrorCode": "E-97633"
                    },
                    {
                      "$id": "46",
                      "IsShowingInPis": true,
                      "PisIndex": 5,
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
                    "$ref": "22"
                  },
                  "Section": 0
                },
                {
                  "$id": "47",
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
                    "$ref": "22"
                  },
                  "Section": 0
                }
              ],
              "Label": "Temperature_DZR",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "48",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "49",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial DL11B ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "50",
                      "ArgumentName": "Command",
                      "ArgumentValue": "8:HexAutoInitial"
                    },
                    {
                      "$id": "51",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "52",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "53",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "54",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "01040400000130FA"
                    },
                    {
                      "$id": "55",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "56",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "010402"
                    },
                    {
                      "$id": "57",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "58",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "59",
                      "IsShowingInPis": true,
                      "PisIndex": 6,
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
                    "$ref": "48"
                  },
                  "Section": 0
                },
                {
                  "$id": "60",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Query_temperature",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COMV2_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "61",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Hex_Query"
                    },
                    {
                      "$id": "62",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_DL11B_COM"
                    },
                    {
                      "$id": "63",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "64",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "01040400000130FA"
                    },
                    {
                      "$id": "65",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "66",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "67",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "hex"
                    },
                    {
                      "$id": "68",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "69",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "70",
                      "IsShowingInPis": true,
                      "PisIndex": 3,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-42192"
                    },
                    {
                      "$id": "71",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "temp_sign",
                      "Process": "=SubStr(var_temp_raw,5:6)",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-97633"
                    },
                    {
                      "$id": "72",
                      "IsShowingInPis": true,
                      "PisIndex": 7,
                      "VariableName": "current_temp2",
                      "Process": "=Hex2Dec(SubStr(var_temp_raw,7:10))",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-7407B"
                    },
                    {
                      "$id": "73",
                      "IsShowingInPis": true,
                      "PisIndex": 5,
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
                    "$ref": "48"
                  },
                  "Section": 0
                },
                {
                  "$id": "74",
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
                    "$ref": "48"
                  },
                  "Section": 0
                }
              ],
              "Label": "Temperature_DL",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "75",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "76",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read POE Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "77",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "78",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "79",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "80",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "POE_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "81",
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "82",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "83",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "84",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "85",
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "86",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "87",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "88",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "89",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "90",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "91",
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "92",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "93",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "94",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "95",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "96",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "97",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "98",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "99",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "AC OFF,DC OFF"
                    },
                    {
                      "$id": "100",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "101",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "102",
                      "IsShowingInPis": true,
                      "PisIndex": 8,
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "103",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch POE Port 1 output enable",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "104",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "105",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "106",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "107",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:OUT1"
                    },
                    {
                      "$id": "108",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "109",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "110",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "111",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "112",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "113",
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "114",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "115",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE AC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "116",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "117",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "118",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:AC ON"
                        },
                        {
                          "$id": "119",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "120",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "121",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "122",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "123",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "124",
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
                        "$ref": "114"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "125",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE AC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "126",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "127",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "128",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:AC POWER"
                        },
                        {
                          "$id": "129",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "130",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "131",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "132",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "133",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "134",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "135",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-444D5"
                        },
                        {
                          "$id": "136",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-20A1E"
                        },
                        {
                          "$id": "137",
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
                        "$ref": "114"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "AC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "138",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "139",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE DC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "140",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "141",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "142",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:DC ON"
                        },
                        {
                          "$id": "143",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "144",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "145",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "146",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "147",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "148",
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
                        "$ref": "138"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "149",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE DC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "150",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "151",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "152",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:DC POWER"
                        },
                        {
                          "$id": "153",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "154",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "155",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "156",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "157",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "158",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "159",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-C5400"
                        },
                        {
                          "$id": "160",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-00FD2"
                        },
                        {
                          "$id": "161",
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
                        "$ref": "138"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "DC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "162",
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
                    "$ref": "75"
                  },
                  "Section": 0
                },
                {
                  "$id": "163",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set POE Power Off",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "164",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "165",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "166",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "167",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "168",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "169",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "170",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "171",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "172",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "173",
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
                    "$ref": "75"
                  },
                  "Section": 0
                }
              ],
              "Label": "POE Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "174",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "175",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "176",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "177",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "178",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "179",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "ACON_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "180",
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
                    "$ref": "174"
                  },
                  "Section": 0
                },
                {
                  "$id": "181",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "182",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "183",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "184",
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
                    "$ref": "174"
                  },
                  "Section": 0
                },
                {
                  "$id": "185",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "186",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "187",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "188",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "189",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "190",
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
                    "$ref": "174"
                  },
                  "Section": 0
                },
                {
                  "$id": "191",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "192",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "193",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "194",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "195",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "196",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "197",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "198",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON BOX"
                    },
                    {
                      "$id": "199",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "200",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "200000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "201",
                      "IsShowingInPis": true,
                      "PisIndex": 9,
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
                    "$ref": "174"
                  },
                  "Section": 0
                },
                {
                  "$id": "202",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Cycler Up",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "203",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "204",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "205",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "206",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "P39L"
                    },
                    {
                      "$id": "207",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "208",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "209",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "210",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "211",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "212",
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
                    "$ref": "174"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
              },
              "Section": 0
            },
            {
              "$id": "213",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "214",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "215",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "216",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "217",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "218",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "ACON_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "219",
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
                    "$ref": "213"
                  },
                  "Section": 0
                },
                {
                  "$id": "220",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "221",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "222",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "223",
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
                    "$ref": "213"
                  },
                  "Section": 0
                },
                {
                  "$id": "224",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "225",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "226",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "227",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "228",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "229",
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
                    "$ref": "213"
                  },
                  "Section": 0
                },
                {
                  "$id": "230",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "231",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "232",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "233",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "234",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "235",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "236",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "237",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON BOX"
                    },
                    {
                      "$id": "238",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "239",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "200000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "240",
                      "IsShowingInPis": true,
                      "PisIndex": 9,
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
                    "$ref": "213"
                  },
                  "Section": 0
                },
                {
                  "$id": "241",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Cycler Up",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "242",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "243",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "244",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "245",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "VER"
                    },
                    {
                      "$id": "246",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "247",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "248",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "249",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "250",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "251",
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
                    "$ref": "213"
                  },
                  "Section": 0
                },
                {
                  "$id": "252",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Measure POE AC Current",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "253",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "254",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "255",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "256",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "POWER"
                    },
                    {
                      "$id": "257",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "2000"
                    },
                    {
                      "$id": "258",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "259",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "260",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "261",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "262",
                      "IsShowingInPis": true,
                      "PisIndex": 10,
                      "VariableName": "POE_AC_Vol",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-444D5"
                    },
                    {
                      "$id": "263",
                      "IsShowingInPis": true,
                      "PisIndex": 11,
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
                    "$ref": "213"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON Box Plus Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "20"
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
          "$id": "264",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "265",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "266",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Load",
                  "Command": "DLL",
                  "Subcommand": "Load",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "267",
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
                    "$ref": "265"
                  },
                  "Section": 0
                },
                {
                  "$id": "268",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "269",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "270",
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
                    "$ref": "265"
                  },
                  "Section": 0
                },
                {
                  "$id": "271",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "272",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "273",
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
                    "$ref": "265"
                  },
                  "Section": 0
                }
              ],
              "Label": "UTS_SCPI",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "264"
              },
              "Section": 0
            },
            {
              "$id": "274",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "275",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "SCPI Assign 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "276",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:Assign"
                    },
                    {
                      "$id": "277",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "278",
                      "ArgumentName": "NameOfIDN",
                      "ArgumentValue": "\"[3634A]\""
                    },
                    {
                      "$id": "279",
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
                    "$ref": "274"
                  },
                  "Section": 0
                },
                {
                  "$id": "280",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set Max 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "281",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "282",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "283",
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
                    "$ref": "274"
                  },
                  "Section": 0
                },
                {
                  "$id": "284",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "KY3634A Sample rate/period",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "285",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "286",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "287",
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
                    "$ref": "274"
                  },
                  "Section": 0
                },
                {
                  "$id": "288",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V 3A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "289",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "290",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "291",
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
                    "$ref": "274"
                  },
                  "Section": 0
                },
                {
                  "$id": "292",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "293",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Keysight 3634A Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "UTS2_VISA_cs.dll",
                      "Arguments": [
                        {
                          "$id": "294",
                          "ArgumentName": "Command",
                          "ArgumentValue": "5:QUERY"
                        },
                        {
                          "$id": "295",
                          "ArgumentName": "NickName",
                          "ArgumentValue": "KY3634"
                        },
                        {
                          "$id": "296",
                          "ArgumentName": "NameofIDN",
                          "ArgumentValue": "MEAS:CURR?"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "297",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "echo",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-33267"
                        },
                        {
                          "$id": "298",
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
                        "$ref": "292"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "E3634 Current test",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "274"
                  },
                  "Section": 0
                }
              ],
              "Label": "Keysight E3634A_USB",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "264"
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
          "$id": "299",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "300",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS_SZTDE_MySQL.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "301",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "302",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server IPAddress",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "303",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "304",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "305",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "306",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "IPAddress"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "307",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "308",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UserName",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "309",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "310",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "311",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "312",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "UserName"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "313",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "314",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server PassWord",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "315",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "316",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "317",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "318",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Password"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "319",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "320",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server Port",
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
                  "ArgumentValue": "Port"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "325",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "326",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server EIS DataBase",
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
                  "ArgumentValue": "EISDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "331",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "332",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UID DataBase",
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
                  "ArgumentValue": "UIDDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "337",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "338",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server MAC DataBase",
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
                  "ArgumentValue": "MACDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "343",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "344",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Define Server Connect Status & UseDataBase",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "345",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "Server_Status",
                  "Process": "0",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-579CD"
                },
                {
                  "$id": "346",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "347",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Initial JDM MySQL Server",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [
                {
                  "$id": "348",
                  "ArgumentName": "Command",
                  "ArgumentValue": "1:Login"
                },
                {
                  "$id": "349",
                  "ArgumentName": "IP",
                  "ArgumentValue": "=var_IPAddress"
                },
                {
                  "$id": "350",
                  "ArgumentName": "UserName",
                  "ArgumentValue": "=var_UserName"
                },
                {
                  "$id": "351",
                  "ArgumentName": "Password",
                  "ArgumentValue": "=var_Password"
                },
                {
                  "$id": "352",
                  "ArgumentName": "DataBase",
                  "ArgumentValue": "=var_UseDataBase"
                },
                {
                  "$id": "353",
                  "ArgumentName": "Port",
                  "ArgumentValue": "=var_Port"
                },
                {
                  "$id": "354",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "355",
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
                "$ref": "299"
              },
              "Section": 0
            },
            {
              "$id": "356",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check MySQL Runtime",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "357",
                  "ArgumentName": "Command",
                  "ArgumentValue": "2:Compare"
                },
                {
                  "$id": "358",
                  "ArgumentName": "String1",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "359",
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
                "$ref": "299"
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
      "$id": "360",
      "Name": "",
      "Children": [
        {
          "$id": "361",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "362",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get_Line_strong",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_txtinfo_cs.dll'",
              "Arguments": [
                {
                  "$id": "363",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "1:GetLineString"
                },
                {
                  "$id": "364",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + '910-005872.txt'"
                },
                {
                  "$id": "365",
                  "ArgumentName": "LineNum",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "366",
                  "IsShowingInPis": true,
                  "PisIndex": 12,
                  "VariableName": "Line_string",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-122FB"
                },
                {
                  "$id": "367",
                  "IsShowingInPis": true,
                  "PisIndex": 13,
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
                "$ref": "361"
              },
              "Section": 1
            },
            {
              "$id": "368",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "DeleteLineString",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_txtinfo_cs.dll'",
              "Arguments": [
                {
                  "$id": "369",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "2:DeleteLineString"
                },
                {
                  "$id": "370",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + '910-005872.txt'"
                },
                {
                  "$id": "371",
                  "ArgumentName": "LineNum",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "372",
                  "IsShowingInPis": true,
                  "PisIndex": 14,
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
                "$ref": "361"
              },
              "Section": 1
            }
          ],
          "Label": "UTS_SZTDE_txtInfo",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "373",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "374",
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
                "$ref": "373"
              },
              "Section": 1
            },
            {
              "$id": "375",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Loop retry=0",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "376",
                  "IsShowingInPis": true,
                  "PisIndex": 15,
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
                "$ref": "373"
              },
              "Section": 1
            }
          ],
          "Label": "Initial Test loop",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "377",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "378",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Down",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "379",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "380",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "381",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "382",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39H"
                },
                {
                  "$id": "383",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "384",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "385",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "386",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "387",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "388",
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
                "$ref": "377"
              },
              "Section": 1
            }
          ],
          "Label": "Cycler Down",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "389",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "390",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "391",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "392",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "393",
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
                "$ref": "389"
              },
              "Section": 1
            },
            {
              "$id": "394",
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
                "$ref": "389"
              },
              "Section": 1
            }
          ],
          "Label": "Micpod DC48V",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
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
              "Name": "Set POE AC enable",
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
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "399",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "400",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:AC ON"
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
                  "ArgumentValue": "0D 0D"
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
                "$ref": "395"
              },
              "Section": 1
            },
            {
              "$id": "407",
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
                "$ref": "395"
              },
              "Section": 1
            },
            {
              "$id": "408",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure POE AC Current",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "409",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "410",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "411",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "412",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "MEA:AC POWER"
                },
                {
                  "$id": "413",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "414",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "415",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "416",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "417",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "418",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "poe_response",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                },
                {
                  "$id": "419",
                  "IsShowingInPis": true,
                  "PisIndex": 10,
                  "VariableName": "POE_AC_Vol",
                  "Process": "=substr(var_poe_response,1:5)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-444D5"
                },
                {
                  "$id": "420",
                  "IsShowingInPis": true,
                  "PisIndex": 11,
                  "VariableName": "POE_AC_Current",
                  "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                  "Min": "0",
                  "Max": "300",
                  "ErrorCode": "E-20A1E"
                },
                {
                  "$id": "421",
                  "IsShowingInPis": true,
                  "PisIndex": 16,
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
                "$ref": "395"
              },
              "Section": 1
            }
          ],
          "Label": "POE AC Power ON",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "422",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "423",
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
                "$ref": "422"
              },
              "Section": 1
            }
          ],
          "Label": "Check ADB Device",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "424",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "425",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB root",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "426",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "427",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb root"
                },
                {
                  "$id": "428",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "429",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "430",
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
                "$ref": "424"
              },
              "Section": 1
            }
          ],
          "Label": "Device root",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "431",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "432",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read UID from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "433",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "434",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_uid"
                },
                {
                  "$id": "435",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "436",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "uid=;Error Message=;API status="
                },
                {
                  "$id": "437",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "438",
                  "IsShowingInPis": true,
                  "PisIndex": 17,
                  "VariableName": "UID",
                  "Process": "",
                  "Min": "XXXXXXXXXXXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-C270F"
                },
                {
                  "$id": "439",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "440",
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
                "$ref": "431"
              },
              "Section": 1
            },
            {
              "$id": "441",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "442",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run Bat Get 3bit random UID",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "443",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "444",
                      "ArgumentName": "Command",
                      "ArgumentValue": "RandomUID.bat"
                    },
                    {
                      "$id": "445",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "446",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "UID="
                    },
                    {
                      "$id": "447",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "448",
                      "IsShowingInPis": true,
                      "PisIndex": 18,
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
                    "$ref": "441"
                  },
                  "Section": 1
                },
                {
                  "$id": "449",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Generate UID",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "450",
                      "IsShowingInPis": true,
                      "PisIndex": 17,
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
                    "$ref": "441"
                  },
                  "Section": 1
                },
                {
                  "$id": "451",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write UID to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "452",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "453",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_uid '+var_UID"
                    },
                    {
                      "$id": "454",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "455",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "456",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
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
                    "$ref": "441"
                  },
                  "Section": 1
                },
                {
                  "$id": "459",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "460",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "461",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "462",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "463",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "464",
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
                    "$ref": "441"
                  },
                  "Section": 1
                },
                {
                  "$id": "465",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read UID from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "466",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "467",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_uid"
                    },
                    {
                      "$id": "468",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "469",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "uid=;Error Message=;API status="
                    },
                    {
                      "$id": "470",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "471",
                      "IsShowingInPis": true,
                      "PisIndex": 17,
                      "VariableName": "UID",
                      "Process": "",
                      "Min": "XXXXXXXXXXXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-C270F"
                    },
                    {
                      "$id": "472",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "473",
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
                    "$ref": "441"
                  },
                  "Section": 1
                }
              ],
              "Label": "Generate UID",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "431"
              },
              "Section": 1
            },
            {
              "$id": "474",
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
                "$ref": "431"
              },
              "Section": 1
            }
          ],
          "Label": "UID Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "475",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "476",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Pre-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "477",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "478",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_pre_station"
                },
                {
                  "$id": "479",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "480",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_pre_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "481",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "482",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "pre_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-307AC"
                },
                {
                  "$id": "483",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "484",
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
                "$ref": "475"
              },
              "Section": 1
            }
          ],
          "Label": "Check Pre-Station PassFlag Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "485",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "486",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to FAIL",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "487",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "488",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_fail"
                },
                {
                  "$id": "489",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "490",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "491",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "492",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "493",
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
                "$ref": "485"
              },
              "Section": 1
            },
            {
              "$id": "494",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
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
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "497",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "498",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "499",
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
                "$ref": "485"
              },
              "Section": 1
            },
            {
              "$id": "500",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "501",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "502",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "503",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "504",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "505",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "506",
                  "IsShowingInPis": true,
                  "PisIndex": 19,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "FAIL",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "507",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "508",
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
                "$ref": "485"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Fail",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "509",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "510",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device Setting Version",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "511",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "512",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                },
                {
                  "$id": "513",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "Device"
                },
                {
                  "$id": "514",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Version"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "515",
                  "IsShowingInPis": true,
                  "PisIndex": 20,
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
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "516",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Version Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "517",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "518",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell versions"
                },
                {
                  "$id": "519",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "520",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "model=;software version=;Error Message=;API status="
                },
                {
                  "$id": "521",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "522",
                  "IsShowingInPis": true,
                  "PisIndex": 21,
                  "VariableName": "devModel",
                  "Process": "",
                  "Min": "Sentinel",
                  "Max": "",
                  "ErrorCode": "E-77190"
                },
                {
                  "$id": "523",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "swVersion",
                  "Process": "",
                  "Min": "=var_Dev_Ver",
                  "Max": "",
                  "ErrorCode": "E-42F89"
                },
                {
                  "$id": "524",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "525",
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
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "526",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device sensor ID Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "527",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "528",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sensor ID"
                },
                {
                  "$id": "529",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "530",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "MAIN sensor ID=;SUB sensor ID=;Error Message=;API status="
                },
                {
                  "$id": "531",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "532",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "main_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-F22B4"
                },
                {
                  "$id": "533",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "sub_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-D16C2"
                },
                {
                  "$id": "534",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "535",
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
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "536",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device CPU temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "537",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "538",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_cpu_temp"
                },
                {
                  "$id": "539",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "540",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "cpu_big1=;Error Message=;API status="
                },
                {
                  "$id": "541",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "542",
                  "IsShowingInPis": true,
                  "PisIndex": 22,
                  "VariableName": "dev_CPU_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3A766"
                },
                {
                  "$id": "543",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "544",
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
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "545",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device NTC temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "546",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "547",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_NTC_temp"
                },
                {
                  "$id": "548",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "549",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "temp1=;Error Message=;API status="
                },
                {
                  "$id": "550",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "551",
                  "IsShowingInPis": true,
                  "PisIndex": 23,
                  "VariableName": "dev_NTC_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EA589"
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
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "554",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DRAM Test",
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
                  "ArgumentValue": "adb shell dram_info"
                },
                {
                  "$id": "557",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "558",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
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
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "561",
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
                "$ref": "509"
              },
              "Section": 1
            },
            {
              "$id": "562",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DROM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "563",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "564",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell drom_info"
                },
                {
                  "$id": "565",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "566",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "567",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "568",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "569",
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
                "$ref": "509"
              },
              "Section": 1
            }
          ],
          "Label": "Device information Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "570",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "571",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Write Product Name to device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "572",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "573",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_product_name '+var_project_name"
                },
                {
                  "$id": "574",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "575",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "576",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "577",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "578",
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
                "$ref": "570"
              },
              "Section": 1
            },
            {
              "$id": "579",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "580",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "581",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "582",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "583",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "584",
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
                "$ref": "570"
              },
              "Section": 1
            },
            {
              "$id": "585",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Product Name from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "586",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "587",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_product_name"
                },
                {
                  "$id": "588",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "589",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Product name=;Error Message=;API status="
                },
                {
                  "$id": "590",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "591",
                  "IsShowingInPis": true,
                  "PisIndex": 24,
                  "VariableName": "dev_product_name",
                  "Process": "",
                  "Min": "=var_project_name",
                  "Max": "",
                  "ErrorCode": "E-9C73A"
                },
                {
                  "$id": "592",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "593",
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
                "$ref": "570"
              },
              "Section": 1
            }
          ],
          "Label": "Product Name Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "594",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "595",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read 8LSN from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "596",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "597",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_sn"
                },
                {
                  "$id": "598",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "599",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "sn=;Error Message=;API status="
                },
                {
                  "$id": "600",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "601",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "8L_SN",
                  "Process": "",
                  "Min": "XXXXLZXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-55614"
                },
                {
                  "$id": "602",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "603",
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
                "$ref": "594"
              },
              "Section": 1
            },
            {
              "$id": "604",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "605",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Key IN 8L SN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_KeyIn.dll",
                  "Arguments": [
                    {
                      "$id": "606",
                      "ArgumentName": "",
                      "ArgumentValue": "04:auto return"
                    },
                    {
                      "$id": "607",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "608",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number"
                    },
                    {
                      "$id": "609",
                      "ArgumentName": "",
                      "ArgumentValue": "20"
                    },
                    {
                      "$id": "610",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                    },
                    {
                      "$id": "611",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "612",
                      "ArgumentName": "",
                      "ArgumentValue": "1:12"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "613",
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
                    "$ref": "604"
                  },
                  "Section": 1
                },
                {
                  "$id": "614",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show-8L",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "=var_scan_8LSN\r\n",
                  "Arguments": [
                    {
                      "$id": "615",
                      "ArgumentName": "",
                      "ArgumentValue": "0xFF0000"
                    },
                    {
                      "$id": "616",
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
                    "$ref": "604"
                  },
                  "Section": 1
                },
                {
                  "$id": "617",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write 8LSN to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "618",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "619",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_sn '+var_scan_8LSN"
                    },
                    {
                      "$id": "620",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "621",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "622",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "623",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "624",
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
                    "$ref": "604"
                  },
                  "Section": 1
                },
                {
                  "$id": "625",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "626",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "627",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "628",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "629",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "630",
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
                    "$ref": "604"
                  },
                  "Section": 1
                },
                {
                  "$id": "631",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read 8LSN from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "632",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "633",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_sn"
                    },
                    {
                      "$id": "634",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "635",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "sn=;Error Message=;API status="
                    },
                    {
                      "$id": "636",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "637",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "8L_SN",
                      "Process": "",
                      "Min": "XXXXLZXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-55614"
                    },
                    {
                      "$id": "638",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "639",
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
                    "$ref": "604"
                  },
                  "Section": 1
                }
              ],
              "Label": "Call Key IN 8L SN",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "594"
              },
              "Section": 1
            },
            {
              "$id": "640",
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
                "$ref": "594"
              },
              "Section": 1
            }
          ],
          "Label": "8LSN Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "641",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "642",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "ZYNQ Version Check",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "643",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "644",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell audio getfwver"
                },
                {
                  "$id": "645",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "646",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "result=;Error Message=;API status="
                },
                {
                  "$id": "647",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "648",
                  "IsShowingInPis": true,
                  "PisIndex": 25,
                  "VariableName": "audioVersion",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-93272"
                },
                {
                  "$id": "649",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "650",
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
                "$ref": "641"
              },
              "Section": 1
            }
          ],
          "Label": "Audio board version check",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "651",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "652",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "653",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Define Server UseDataBase & AssignData & AssignTable & TableFunction",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "654",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "UseDataBase",
                      "Process": "=var_MACDataBase",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-06A5A"
                    },
                    {
                      "$id": "655",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "AssignData",
                      "Process": "-",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-6613F"
                    },
                    {
                      "$id": "656",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "TableFunctionStr",
                      "Process": "mac",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F8C27"
                    },
                    {
                      "$id": "657",
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
                    "$ref": "652"
                  },
                  "Section": 1
                },
                {
                  "$id": "658",
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
                    "$ref": "652"
                  },
                  "Section": 1
                },
                {
                  "$id": "659",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write Mac to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "660",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "661",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell ethernet setmacaddr '+var_AssignData"
                    },
                    {
                      "$id": "662",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "663",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "664",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "665",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "666",
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
                    "$ref": "652"
                  },
                  "Section": 1
                },
                {
                  "$id": "667",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "668",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "669",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "670",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "671",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "672",
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
                    "$ref": "652"
                  },
                  "Section": 1
                },
                {
                  "$id": "673",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read Mac from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "674",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "675",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell ethernet getmacaddr"
                    },
                    {
                      "$id": "676",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "677",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "MAC address=;Error Message=;API status="
                    },
                    {
                      "$id": "678",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "679",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "dev_eth_mac",
                      "Process": "",
                      "Min": "=var_AssignData",
                      "Max": "",
                      "ErrorCode": "E-5A322"
                    },
                    {
                      "$id": "680",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "681",
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
                    "$ref": "652"
                  },
                  "Section": 1
                },
                {
                  "$id": "682",
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
                    "$ref": "652"
                  },
                  "Section": 1
                }
              ],
              "Label": "Server Assign Mac",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "651"
              },
              "Section": 1
            },
            {
              "$id": "683",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device IP address from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "684",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "685",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_ethernetaddr"
                },
                {
                  "$id": "686",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "687",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "IP address=;Error Message=;API status="
                },
                {
                  "$id": "688",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "689",
                  "IsShowingInPis": true,
                  "PisIndex": 26,
                  "VariableName": "dev_ip",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-374E6"
                },
                {
                  "$id": "690",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "691",
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
                "$ref": "651"
              },
              "Section": 1
            },
            {
              "$id": "692",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Ethernet Ping ip address",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "693",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "694",
                  "ArgumentName": "ADBCommand",
                  "ArgumentValue": "adb shell ping -c 3 192.168.50.1"
                },
                {
                  "$id": "695",
                  "ArgumentName": "EndString",
                  "ArgumentValue": "3 received"
                },
                {
                  "$id": "696",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "697",
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
                "$ref": "651"
              },
              "Section": 1
            }
          ],
          "Label": "Ethernet Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "698",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "699",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "700",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "701",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
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
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "704",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "705",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "706",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "707",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "708",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Micpod LTDM Initial",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "709",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMDR"
                },
                {
                  "$id": "710",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell /vendor/bin/audiocore /vendor/etc/sentinel.ini &"
                },
                {
                  "$id": "711",
                  "ArgumentName": "Delay",
                  "ArgumentValue": "35000"
                },
                {
                  "$id": "712",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "713",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "714",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Micpod device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "715",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "716",
                  "ArgumentName": "Command",
                  "ArgumentValue": "tdebt.exe -c micpod -g micpod_button_status"
                },
                {
                  "$id": "717",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "718",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "719",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "720",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "721",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "722",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "723",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "724",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "725",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "726",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "727",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "728",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "729",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "730",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "731",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "732",
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
                    "$ref": "721"
                  },
                  "Section": 1
                }
              ],
              "Label": "Micpod 48V Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "733",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Confirm LTDM Result",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "734",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "13:ShowDialog"
                },
                {
                  "$id": "735",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + 'MicpodTest.jpg'"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "736",
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
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "737",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "738",
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
                    "$ref": "737"
                  },
                  "Section": 1
                },
                {
                  "$id": "739",
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
                    "$ref": "737"
                  },
                  "Section": 1
                },
                {
                  "$id": "740",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V chcek",
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
                    "$ref": "737"
                  },
                  "Section": 1
                }
              ],
              "Label": "Wrong POE Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "698"
              },
              "Section": 1
            },
            {
              "$id": "751",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "752",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "753",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "754",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "755",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "756",
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
                "$ref": "698"
              },
              "Section": 1
            }
          ],
          "Label": "LTDM Test-Mute Function",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "757",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "758",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "VCC 5V0 chcek",
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
                  "ArgumentValue": "PA0"
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
                  "IsShowingInPis": true,
                  "PisIndex": 27,
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
                "$ref": "757"
              },
              "Section": 1
            }
          ],
          "Label": "TP67 VCC 5V0",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "769",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "770",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "771",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "772",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "773",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "774",
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
                    "$ref": "770"
                  },
                  "Section": 1
                },
                {
                  "$id": "775",
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
                    "$ref": "770"
                  },
                  "Section": 1
                },
                {
                  "$id": "776",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
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
                      "ArgumentValue": "PA14"
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
                      "PisIndex": 28,
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
                    "$ref": "770"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 0V Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "769"
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
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=1V74",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "789",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "790",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "791",
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
                    "$ref": "787"
                  },
                  "Section": 1
                },
                {
                  "$id": "792",
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
                    "$ref": "787"
                  },
                  "Section": 1
                },
                {
                  "$id": "793",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 1V74-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "794",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "795",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "796",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "797",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "798",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "799",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "800",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "801",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "802",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "803",
                      "IsShowingInPis": true,
                      "PisIndex": 29,
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
                    "$ref": "787"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 1V74 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "769"
              },
              "Section": 1
            },
            {
              "$id": "804",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "805",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V6",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "806",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "807",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "808",
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
                    "$ref": "804"
                  },
                  "Section": 1
                },
                {
                  "$id": "809",
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
                    "$ref": "804"
                  },
                  "Section": 1
                },
                {
                  "$id": "810",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V6-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "811",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "812",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "813",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "814",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "815",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "816",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "817",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "818",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "819",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "820",
                      "IsShowingInPis": true,
                      "PisIndex": 30,
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
                    "$ref": "804"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V6 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "769"
              },
              "Section": 1
            },
            {
              "$id": "821",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "822",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V8",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "823",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "824",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "825",
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
                    "$ref": "821"
                  },
                  "Section": 1
                },
                {
                  "$id": "826",
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
                    "$ref": "821"
                  },
                  "Section": 1
                },
                {
                  "$id": "827",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V8-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "828",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "829",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "830",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "831",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "832",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "833",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "834",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "835",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "836",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "837",
                      "IsShowingInPis": true,
                      "PisIndex": 31,
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
                    "$ref": "821"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V8 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "769"
              },
              "Section": 1
            },
            {
              "$id": "838",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "839",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "840",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "841",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "842",
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
                    "$ref": "838"
                  },
                  "Section": 1
                },
                {
                  "$id": "843",
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
                    "$ref": "838"
                  },
                  "Section": 1
                },
                {
                  "$id": "844",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "845",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "846",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "847",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "848",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "849",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "850",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "851",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "852",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "853",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "854",
                      "IsShowingInPis": true,
                      "PisIndex": 32,
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
                    "$ref": "838"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 OFF Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "769"
              },
              "Section": 1
            },
            {
              "$id": "855",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "856",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "857",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "858",
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
                "$ref": "769"
              },
              "Section": 1
            }
          ],
          "Label": "TP97 Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
          },
          "Section": 1
        },
        {
          "$id": "859",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "860",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to PASS",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "861",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "862",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_pass"
                },
                {
                  "$id": "863",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "864",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "865",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "866",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "867",
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
                "$ref": "859"
              },
              "Section": 1
            },
            {
              "$id": "868",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "869",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "870",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "871",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "872",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "873",
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
                "$ref": "859"
              },
              "Section": 1
            },
            {
              "$id": "874",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "875",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "876",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "877",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "878",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "879",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "880",
                  "IsShowingInPis": true,
                  "PisIndex": 19,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "881",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "882",
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
                "$ref": "859"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Pass",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "360"
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
      "$id": "883",
      "Name": "",
      "Children": [
        {
          "$id": "884",
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
            "$ref": "883"
          },
          "Section": 2
        },
        {
          "$id": "885",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Reset 3634A=0V 3A",
          "Command": "DLL",
          "Subcommand": "Execute",
          "CommandParameters": "UTS2_VISA_cs.dll",
          "Arguments": [
            {
              "$id": "886",
              "ArgumentName": "Command",
              "ArgumentValue": "3:Write"
            },
            {
              "$id": "887",
              "ArgumentName": "NickName",
              "ArgumentValue": "KY3634"
            },
            {
              "$id": "888",
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
            "$ref": "883"
          },
          "Section": 2
        },
        {
          "$id": "889",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "890",
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
                "$ref": "889"
              },
              "Section": 2
            },
            {
              "$id": "891",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE Power Off",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "892",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "893",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "894",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "895",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:POWER OFF"
                },
                {
                  "$id": "896",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "897",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "898",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "899",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "900",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "901",
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
                "$ref": "889"
              },
              "Section": 2
            }
          ],
          "Label": "POE Power OFF",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "883"
          },
          "Section": 2
        },
        {
          "$id": "902",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "903",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Up",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "904",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "905",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "906",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "907",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39L"
                },
                {
                  "$id": "908",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "909",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "910",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "911",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "912",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "913",
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
                "$ref": "902"
              },
              "Section": 2
            },
            {
              "$id": "914",
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
                "$ref": "902"
              },
              "Section": 2
            }
          ],
          "Label": "Cycler UP",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "883"
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
      "$id": "915",
      "Name": "",
      "Children": [
        {
          "$id": "916",
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
            "$ref": "915"
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
      "$id": "917",
      "Name": "",
      "Children": [
        {
          "$id": "918",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "919",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Key IN 8L SN",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_KeyIn.dll",
              "Arguments": [
                {
                  "$id": "920",
                  "ArgumentName": "",
                  "ArgumentValue": "04:auto return"
                },
                {
                  "$id": "921",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "922",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number"
                },
                {
                  "$id": "923",
                  "ArgumentName": "",
                  "ArgumentValue": "20"
                },
                {
                  "$id": "924",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                },
                {
                  "$id": "925",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "926",
                  "ArgumentName": "",
                  "ArgumentValue": "1:12"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "927",
                  "IsShowingInPis": true,
                  "PisIndex": 33,
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
                "$ref": "918"
              },
              "Section": 4
            },
            {
              "$id": "928",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "show-8L",
              "Command": "Show Text",
              "Subcommand": "",
              "CommandParameters": "=var_scan_8LSN\r\n",
              "Arguments": [
                {
                  "$id": "929",
                  "ArgumentName": "",
                  "ArgumentValue": "0xFF0000"
                },
                {
                  "$id": "930",
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
                "$ref": "918"
              },
              "Section": 4
            },
            {
              "$id": "931",
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
                "$ref": "918"
              },
              "Section": 4
            }
          ],
          "Label": "Key IN 8L SN",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "917"
          },
          "Section": 4
        },
        {
          "$id": "932",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "933",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find Device loop ++",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "934",
                  "IsShowingInPis": true,
                  "PisIndex": 15,
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
                "$ref": "932"
              },
              "Section": 4
            },
            {
              "$id": "935",
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
                "$ref": "932"
              },
              "Section": 4
            },
            {
              "$id": "936",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB devices",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "937",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "938",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb devices"
                },
                {
                  "$id": "939",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "940",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "941",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "942",
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
                "$ref": "932"
              },
              "Section": 4
            },
            {
              "$id": "943",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "cmdretstr > 30 digits?(Not find device Fail)",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "944",
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
                "$ref": "932"
              },
              "Section": 4
            },
            {
              "$id": "945",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get cmd device original SN",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "946",
                  "IsShowingInPis": true,
                  "PisIndex": 34,
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
                "$ref": "932"
              },
              "Section": 4
            },
            {
              "$id": "947",
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
                "$ref": "932"
              },
              "Section": 4
            }
          ],
          "Label": "Find ADB Devices",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "917"
          },
          "Section": 4
        },
        {
          "$id": "948",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "949",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "950",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "951",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "952",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "953",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "954",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "955",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "956",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "957",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "958",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "959",
                      "IsShowingInPis": true,
                      "PisIndex": 35,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "960",
                      "IsShowingInPis": true,
                      "PisIndex": 36,
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
                    "$ref": "949"
                  },
                  "Section": 4
                },
                {
                  "$id": "961",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Assign Data From Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "962",
                      "ArgumentName": "Command",
                      "ArgumentValue": "18:NewAssignAddress"
                    },
                    {
                      "$id": "963",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "964",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "965",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "966",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "967",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "968",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "969",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "970",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "status;used"
                    },
                    {
                      "$id": "971",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "0;0"
                    },
                    {
                      "$id": "972",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "status;pc;statusTime"
                    },
                    {
                      "$id": "973",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+$mac_address+';'+var_ServerTime"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "974",
                      "IsShowingInPis": true,
                      "PisIndex": 37,
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
                    "$ref": "949"
                  },
                  "Section": 4
                },
                {
                  "$id": "975",
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
                    "$ref": "949"
                  },
                  "Section": 4
                },
                {
                  "$id": "976",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Status == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "977",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "978",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "979",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "980",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "981",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "982",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "983",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "984",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "985",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "986",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "987",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "status"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "988",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "989",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
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
                    "$ref": "949"
                  },
                  "Section": 4
                },
                {
                  "$id": "990",
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
                    "$ref": "949"
                  },
                  "Section": 4
                }
              ],
              "Label": "Assign Data & Change status to 1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "948"
              },
              "Section": 4
            },
            {
              "$id": "991",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "992",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "993",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "994",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "995",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "996",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "997",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "998",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "999",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1000",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1001",
                      "IsShowingInPis": true,
                      "PisIndex": 35,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1002",
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
                    "$ref": "991"
                  },
                  "Section": 4
                },
                {
                  "$id": "1003",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Update used = 1 to Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1004",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Update"
                    },
                    {
                      "$id": "1005",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1006",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1007",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1008",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1009",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1010",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1011",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1012",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1013",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1014",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "used;usedTime;product"
                    },
                    {
                      "$id": "1015",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+var_ServerTime+';'+var_product_name"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1016",
                      "IsShowingInPis": true,
                      "PisIndex": 39,
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
                    "$ref": "991"
                  },
                  "Section": 4
                },
                {
                  "$id": "1017",
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
                    "$ref": "991"
                  },
                  "Section": 4
                },
                {
                  "$id": "1018",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Used == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1019",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1020",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1021",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1022",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1023",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1024",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1025",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1026",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1027",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1028",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1029",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "used"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1030",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1031",
                      "IsShowingInPis": true,
                      "PisIndex": 40,
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
                    "$ref": "991"
                  },
                  "Section": 4
                },
                {
                  "$id": "1032",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Move Data to Used Table",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1033",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Move"
                    },
                    {
                      "$id": "1034",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1035",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1036",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1037",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1038",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1039",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1040",
                      "ArgumentName": "OriginalTable",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1041",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1042",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1043",
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
                    "$ref": "991"
                  },
                  "Section": 4
                },
                {
                  "$id": "1044",
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
                    "$ref": "991"
                  },
                  "Section": 4
                }
              ],
              "Label": "Change Used to 1 & Move Data to Used",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "948"
              },
              "Section": 4
            }
          ],
          "Label": "Assign Data Process",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "917"
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