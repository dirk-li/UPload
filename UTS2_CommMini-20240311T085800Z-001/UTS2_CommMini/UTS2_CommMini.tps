83598D5F5BA1B40847AFAA84E4790516
A3D3E09F554A018C753F8B49F02CB00C
018F36A12F0BA315B13BA2EA5C3EB39A
C5EAF854450A52E84542B3930FE41276AA935D7B133CC143
{
  "$id": "1",
  "TestGroups": [
    {
      "$id": "2",
      "Name": "",
      "Children": [
        {
          "$id": "3",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "4",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "C:\\Logitech\\UTS\\UTS_CommMini.dll",
              "Arguments": [
                {
                  "$id": "5",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "6",
                  "ArgumentName": "Command",
                  "ArgumentValue": "60: Search"
                },
                {
                  "$id": "7",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "9600;N;8;1.0"
                },
                {
                  "$id": "8",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "'ABC;'0d0a"
                },
                {
                  "$id": "9",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "AA"
                },
                {
                  "$id": "10",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 0,
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
                "$ref": "3"
              },
              "Section": 0
            },
            {
              "$id": "11",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "01:Initial com",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "C:\\Logitech\\UTS\\UTS_CommMini.dll",
              "Arguments": [
                {
                  "$id": "12",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "13",
                  "ArgumentName": "Command",
                  "ArgumentValue": "60"
                },
                {
                  "$id": "14",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "9600;N;8;1.0"
                },
                {
                  "$id": "15",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "'ABC;'0d0a"
                },
                {
                  "$id": "16",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "'AA'"
                },
                {
                  "$id": "17",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "0"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "18",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "Result",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0137"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
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
                "$ref": "3"
              },
              "Section": 0
            }
          ],
          "Label": "Motor setting1",
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
          "Name": "Prefix",
          "Command": "Prefix",
          "Subcommand": "",
          "CommandParameters": "",
          "Arguments": [
            {
              "$id": "20",
              "ArgumentName": "",
              "ArgumentValue": "CP&G"
            },
            {
              "$id": "21",
              "ArgumentName": "",
              "ArgumentValue": "UTS2.0"
            },
            {
              "$id": "22",
              "ArgumentName": "",
              "ArgumentValue": "CommMini"
            },
            {
              "$id": "23",
              "ArgumentName": "",
              "ArgumentValue": "001"
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
          "$id": "24",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "25",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS_CommMini.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "26",
                  "IsShowingInPis": true,
                  "PisIndex": 2,
                  "VariableName": "CommMini DLL Ver",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0130"
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
                "$ref": "24"
              },
              "Section": 0
            },
            {
              "$id": "27",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "1: Initial DVP32ES2 PLC",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "28",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "29",
                  "ArgumentName": "Command",
                  "ArgumentValue": "60: Search"
                },
                {
                  "$id": "30",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "38400;N;8;1"
                },
                {
                  "$id": "31",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "':0311EC'0d0a"
                },
                {
                  "$id": "32",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "':03111203'"
                },
                {
                  "$id": "33",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "34",
                  "IsShowingInPis": true,
                  "PisIndex": 3,
                  "VariableName": "COM_PLC",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0131"
                },
                {
                  "$id": "35",
                  "IsShowingInPis": true,
                  "PisIndex": 4,
                  "VariableName": "COM_value",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0132"
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
                "$ref": "24"
              },
              "Section": 0
            },
            {
              "$id": "36",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Show DVP32ES2_PLC Found",
              "Command": "Show Text",
              "Subcommand": "",
              "CommandParameters": "DVP32ES2_PLC Found",
              "Arguments": [
                {
                  "$id": "37",
                  "ArgumentName": "",
                  "ArgumentValue": "FF00FF"
                },
                {
                  "$id": "38",
                  "ArgumentName": "",
                  "ArgumentValue": "18"
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
                "$ref": "24"
              },
              "Section": 0
            }
          ],
          "Label": "DVP32ES2_PLC",
          "Description": "",
          "Status": 0,
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
      "$id": "39",
      "Name": "",
      "Children": [
        {
          "$id": "40",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "41",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Initial force gauge IMADA-device 1 for Left key",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "42",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "43",
                  "ArgumentName": "Command",
                  "ArgumentValue": "60:Open and Search  Measure Comm Port"
                },
                {
                  "$id": "44",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "256000;N;8;1.0"
                },
                {
                  "$id": "45",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "'XYN'0d"
                },
                {
                  "$id": "46",
                  "ArgumentName": "EchoStr",
                  "ArgumentValue": "'XYNZTS-5N'"
                },
                {
                  "$id": "47",
                  "ArgumentName": "Str Or Hex",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "48",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Com_FG1",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0004"
                },
                {
                  "$id": "49",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Force_1_COM#",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0005"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "50",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "ObjectIndex assign",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "51",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "com_Orientalmotor",
                  "Process": "3",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0001"
                },
                {
                  "$id": "52",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "com_fg_L",
                  "Process": "1",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0002"
                },
                {
                  "$id": "53",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "com_fg_R",
                  "Process": "2",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0003"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "54",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "read one data",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "55",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "56",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "57",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'D'0d"
                },
                {
                  "$id": "58",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "59",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "60",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "61",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "62",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "63",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Full",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0012"
                },
                {
                  "$id": "64",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "gf",
                  "Process": "=SubStr(var_Full, 2,4)",
                  "Min": "40",
                  "Max": "80",
                  "ErrorCode": "E0013"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "65",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "real time mode",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "66",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "67",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "68",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'T'0d"
                },
                {
                  "$id": "69",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "70",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "71",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "72",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "73",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "74",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "delete all data",
                  "Process": "",
                  "Min": "R",
                  "Max": "",
                  "ErrorCode": "E0011"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "75",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "delete all data",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "76",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "77",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "78",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'C'0d"
                },
                {
                  "$id": "79",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "80",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "81",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "82",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "83",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "84",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "delete all data",
                  "Process": "",
                  "Min": "R",
                  "Max": "",
                  "ErrorCode": "E0011"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "85",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "zero load reset peak z",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "86",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "87",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "88",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'Z'0d"
                },
                {
                  "$id": "89",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "90",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "91",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "92",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "93",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "94",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "zero load reset peak z",
                  "Process": "",
                  "Min": "R",
                  "Max": "",
                  "ErrorCode": "E0010"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "95",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read ver",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "96",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "97",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "98",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'XYV'0d"
                },
                {
                  "$id": "99",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "100",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "101",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "102",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "103",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "104",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "forcegauge_Version",
                  "Process": "",
                  "Min": "XYV3.04",
                  "Max": "",
                  "ErrorCode": "E0009"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "105",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read info",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "106",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "107",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "108",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'XYI'0d"
                },
                {
                  "$id": "109",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "110",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "111",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "112",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "113",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "114",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "forcegauge_info",
                  "Process": "",
                  "Min": "XYI3A10",
                  "Max": "",
                  "ErrorCode": "E0008"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "115",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Sno",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "116",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "117",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "118",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'XYS'0d"
                },
                {
                  "$id": "119",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "120",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "121",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "122",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "123",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "124",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "forcegauge_SNO",
                  "Process": "",
                  "Min": "XYS348855",
                  "Max": "",
                  "ErrorCode": "E0007"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "125",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Name",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "126",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "127",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "128",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'XYN'0d"
                },
                {
                  "$id": "129",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "130",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "131",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "132",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "133",
                  "ArgumentName": "Result Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "134",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Feedback",
                  "Process": "",
                  "Min": "XYNZTS-5N",
                  "Max": "",
                  "ErrorCode": "E0006"
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
                "$ref": "40"
              },
              "Section": 1
            },
            {
              "$id": "135",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "stop continuous",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "136",
                  "ArgumentName": "Com Index",
                  "ArgumentValue": "=VAR_com_fg_L"
                },
                {
                  "$id": "137",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52:Query"
                },
                {
                  "$id": "138",
                  "ArgumentName": "Data Sent",
                  "ArgumentValue": "'Y'0d"
                },
                {
                  "$id": "139",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "140",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "1000"
                },
                {
                  "$id": "141",
                  "ArgumentName": "End String",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "142",
                  "ArgumentName": "Purge Buf",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "143",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "Feedback",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E0006"
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
                "$ref": "40"
              },
              "Section": 1
            }
          ],
          "Label": " gauge IMADA-device",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "39"
          },
          "Section": 1
        },
        {
          "$id": "144",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "145",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Y05=RCV Unplug",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "146",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "147",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "148",
                  "ArgumentName": "",
                  "ArgumentValue": "':03050505FF00EF'0d0a"
                },
                {
                  "$id": "149",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "150",
                  "ArgumentName": "",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "151",
                  "ArgumentName": "",
                  "ArgumentValue": "0D 0A"
                },
                {
                  "$id": "152",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "153",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "Result",
                  "Process": "",
                  "Min": ":03050505FF00EF ",
                  "Max": "",
                  "ErrorCode": "E0137"
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "154",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "delay 25ms",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "25",
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "155",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Y00=Crank Down",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "156",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "157",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "158",
                  "ArgumentName": "",
                  "ArgumentValue": "':03050500FF00F4'0d0a"
                },
                {
                  "$id": "159",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "160",
                  "ArgumentName": "",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "161",
                  "ArgumentName": "",
                  "ArgumentValue": "0D 0A"
                },
                {
                  "$id": "162",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "163",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "Result",
                  "Process": "",
                  "Min": ":03050500FF00F4",
                  "Max": "",
                  "ErrorCode": "E0137"
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "164",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "delay 25ms",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "25",
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "165",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "RST Y05-RCV",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "166",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "167",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "168",
                  "ArgumentName": "",
                  "ArgumentValue": "':030505050000EE'0d0a"
                },
                {
                  "$id": "169",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "170",
                  "ArgumentName": "",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "171",
                  "ArgumentName": "",
                  "ArgumentValue": "0D 0A"
                },
                {
                  "$id": "172",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "173",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "Result",
                  "Process": "",
                  "Min": ":030505050000EE",
                  "Max": "",
                  "ErrorCode": "E0137"
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "174",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "delay 25ms",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "25",
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "175",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "RST Y00-Crank",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini_x32.dll",
              "Arguments": [
                {
                  "$id": "176",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "177",
                  "ArgumentName": "Command",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "178",
                  "ArgumentName": "",
                  "ArgumentValue": "':030505000000F3'0d0a"
                },
                {
                  "$id": "179",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "180",
                  "ArgumentName": "",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "181",
                  "ArgumentName": "",
                  "ArgumentValue": "0D 0A"
                },
                {
                  "$id": "182",
                  "ArgumentName": "",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "183",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "Result",
                  "Process": "",
                  "Min": ":030505000000F3",
                  "Max": "",
                  "ErrorCode": "E0137"
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "184",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "delay 25ms",
              "Command": "Delay",
              "Subcommand": "",
              "CommandParameters": "25",
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
                "$ref": "144"
              },
              "Section": 1
            },
            {
              "$id": "185",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [],
              "Label": "Release",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "144"
              },
              "Section": 1
            }
          ],
          "Label": "PLC",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "39"
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
      "$id": "186",
      "Name": "",
      "Children": [],
      "Label": "Post Items",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 2
    },
    {
      "$id": "187",
      "Name": "",
      "Children": [],
      "Label": "Termination",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 3
    },
    {
      "$id": "188",
      "Name": "",
      "Children": [],
      "Label": "Function",
      "Description": "",
      "Status": 0,
      "BackupStatus": 0,
      "Parent": null,
      "Section": 4
    }
  ]
}