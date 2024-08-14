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
          "Name": "Prefix name",
          "Command": "Prefix",
          "Subcommand": "",
          "CommandParameters": "",
          "Arguments": [
            {
              "$id": "4",
              "ArgumentName": "BU",
              "ArgumentValue": "CP&G"
            },
            {
              "$id": "5",
              "ArgumentName": "Project",
              "ArgumentValue": "SANAK_L_PLUS2_R"
            },
            {
              "$id": "6",
              "ArgumentName": "Station",
              "ArgumentValue": "RF"
            },
            {
              "$id": "7",
              "ArgumentName": "Stage",
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
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "9",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS2_CommMini.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "10",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "CommMini DLL Ver",
                  "Process": "",
                  "Min": "20200910",
                  "Max": "99999999",
                  "ErrorCode": "E-1021B"
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
                "$ref": "8"
              },
              "Section": 0
            },
            {
              "$id": "11",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "1: Initial Keyence",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "12",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "13",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "60: Search"
                },
                {
                  "$id": "14",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "9600;N;8;1.0"
                },
                {
                  "$id": "15",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "'KEYENCE'0d"
                },
                {
                  "$id": "16",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "'OK,KEYENCE,SR-700,1.12'"
                },
                {
                  "$id": "17",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "18",
                  "IsShowingInPis": true,
                  "PisIndex": 2,
                  "VariableName": "Comport",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-6455B"
                },
                {
                  "$id": "19",
                  "IsShowingInPis": true,
                  "PisIndex": 3,
                  "VariableName": "StartStr",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-C3007"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 20,
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
                "$ref": "8"
              },
              "Section": 0
            }
          ],
          "Label": "Ini Keyence",
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
      "$id": "20",
      "Name": "",
      "Children": [
        {
          "$id": "21",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "22",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Start Barcode Scan",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "23",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "24",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "25",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'LON'0D"
                },
                {
                  "$id": "26",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "27",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "28",
                  "ArgumentName": "Rx End Str",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "29",
                  "ArgumentName": "Purge Rx buf before Tx CMD",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "30",
                  "ArgumentName": "Change Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "31",
                  "IsShowingInPis": true,
                  "PisIndex": 4,
                  "VariableName": "Barcode_DUT",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EE041"
                },
                {
                  "$id": "32",
                  "IsShowingInPis": true,
                  "PisIndex": 5,
                  "VariableName": "Barcode_DUT_length",
                  "Process": "=length(var_Barcode_DUT)",
                  "Min": "12",
                  "Max": "",
                  "ErrorCode": "E-8949D"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "21"
              },
              "Section": 1
            },
            {
              "$id": "33",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Stop Barcode Scan",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "34",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "35",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "53:Send Cmd"
                },
                {
                  "$id": "36",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'LOFF'0D"
                },
                {
                  "$id": "37",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "21"
              },
              "Section": 1
            }
          ],
          "Label": "Scan Serial Number_Keyence",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "20"
          },
          "Section": 1
        },
        {
          "$id": "38",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "39",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Scanner Reset",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "40",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "41",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "42",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'RESET'0D"
                },
                {
                  "$id": "43",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "44",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "45",
                  "ArgumentName": "Rx End Str",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "46",
                  "ArgumentName": "Purge Rx buf before Tx CMD",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "47",
                  "ArgumentName": "Change Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "48",
                  "IsShowingInPis": true,
                  "PisIndex": 6,
                  "VariableName": "response",
                  "Process": "",
                  "Min": "='OK'",
                  "Max": "",
                  "ErrorCode": "E-2F09B"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "38"
              },
              "Section": 1
            },
            {
              "$id": "49",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Scanner Clear Buffer",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "50",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "51",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "52",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'BCLR'0D"
                },
                {
                  "$id": "53",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "54",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "55",
                  "ArgumentName": "Rx End Str",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "56",
                  "ArgumentName": "Purge Rx buf before Tx CMD",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "57",
                  "ArgumentName": "Change Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "58",
                  "IsShowingInPis": true,
                  "PisIndex": 6,
                  "VariableName": "response",
                  "Process": "",
                  "Min": "='OK'",
                  "Max": "",
                  "ErrorCode": "E-2F09B"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "38"
              },
              "Section": 1
            },
            {
              "$id": "59",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Laser ON",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "60",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "61",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "62",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'AMON'0D"
                },
                {
                  "$id": "63",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "64",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "65",
                  "ArgumentName": "Rx End Str",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "66",
                  "ArgumentName": "Purge Rx buf before Tx CMD",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "67",
                  "ArgumentName": "Change Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "68",
                  "IsShowingInPis": true,
                  "PisIndex": 6,
                  "VariableName": "response",
                  "Process": "",
                  "Min": "='OK,AMON'",
                  "Max": "",
                  "ErrorCode": "E-2F09B"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "38"
              },
              "Section": 1
            },
            {
              "$id": "69",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Laser OFF",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "70",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "3"
                },
                {
                  "$id": "71",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "72",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "'AMOFF'0D"
                },
                {
                  "$id": "73",
                  "ArgumentName": "TxCmd Str type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "74",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "75",
                  "ArgumentName": "Rx End Str",
                  "ArgumentValue": "0d"
                },
                {
                  "$id": "76",
                  "ArgumentName": "Purge Rx buf before Tx CMD",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "77",
                  "ArgumentName": "Change Format",
                  "ArgumentValue": ""
                }
              ],
              "ResultVariables": [
                {
                  "$id": "78",
                  "IsShowingInPis": true,
                  "PisIndex": 6,
                  "VariableName": "response",
                  "Process": "",
                  "Min": "='OK,AMON'",
                  "Max": "",
                  "ErrorCode": "E-2F09B"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 10,
              "WaitInterval": 100,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
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
                "$ref": "38"
              },
              "Section": 1
            }
          ],
          "Label": "Other commands",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "20"
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
      "$id": "79",
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
      "$id": "80",
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
      "$id": "81",
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