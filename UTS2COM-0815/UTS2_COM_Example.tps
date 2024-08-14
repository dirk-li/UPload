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
          "Name": "Load UTS2_CommMini.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "UTS2_CommMini.dll",
          "Arguments": [],
          "ResultVariables": [
            {
              "$id": "19",
              "IsShowingInPis": true,
              "PisIndex": 2,
              "VariableName": "UTS2_CommMini_Ver",
              "Process": "",
              "Min": "20210325",
              "Max": "99999999",
              "ErrorCode": "E-D604C"
            }
          ],
          "FailRetryEnabled": true,
          "RetryCount": 5,
          "WaitInterval": 20,
          "FailJumpEnabled": false,
          "FailJumpLabel": "",
          "LoopEnabled": false,
          "LoopLabel": "",
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
          "$id": "20",
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
          "$id": "21",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "22",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "var assign",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "23",
                  "IsShowingInPis": true,
                  "PisIndex": 3,
                  "VariableName": "Com_A30_Scanner",
                  "Process": "3",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-31A24"
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
                "$ref": "21"
              },
              "Section": 0
            },
            {
              "$id": "24",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "60: Search GFS4470 Scanner",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "25",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "=var_Com_A30_Scanner"
                },
                {
                  "$id": "26",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "60: Search"
                },
                {
                  "$id": "27",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "9600;N;8;1.0"
                },
                {
                  "$id": "28",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "242B24210D"
                },
                {
                  "$id": "29",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "'Gryphon-GFS44'"
                },
                {
                  "$id": "30",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "31",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "Comport",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-AE8F2"
                },
                {
                  "$id": "32",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "StartStr",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-63B3F"
                }
              ],
              "FailRetryEnabled": true,
              "RetryCount": 1,
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
              "Section": 0
            },
            {
              "$id": "33",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset Scanner",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "34",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "=var_Com_Gfs4470"
                },
                {
                  "$id": "35",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "36",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "520D"
                },
                {
                  "$id": "37",
                  "ArgumentName": "TxCmd String Type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "38",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "39",
                  "ArgumentName": "Echo EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "40",
                  "ArgumentName": "Purge Rx buf before Tx Cmd",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [],
              "FailRetryEnabled": false,
              "RetryCount": 3,
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
                "$ref": "21"
              },
              "Section": 0
            },
            {
              "$id": "41",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "42",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Clear Buffer",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "43",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "44",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "65: Purge RxBuf"
                    },
                    {
                      "$id": "45",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "46",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "47",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "48",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "49",
                      "ArgumentName": "Purge Rx buf before Tx Cmd",
                      "ArgumentValue": ""
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 5,
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "41"
                  },
                  "Section": 0
                },
                {
                  "$id": "50",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "variable",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "51",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "8L_PN",
                      "Process": "=''",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-42541"
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
                    "$ref": "41"
                  },
                  "Section": 0
                },
                {
                  "$id": "52",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Stop Scanner Read",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "53",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "54",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "55",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "2E0D0A"
                    },
                    {
                      "$id": "56",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "57",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "58",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "59",
                      "ArgumentName": "Purge Rx buf before Tx Cmd",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 5,
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "41"
                  },
                  "Section": 0
                },
                {
                  "$id": "60",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Start Scanner Read -- 8L PN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "61",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "62",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "63",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "270D0A"
                    },
                    {
                      "$id": "64",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "65",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "66",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "67",
                      "ArgumentName": "Purge Rx buf before Tx Cmd",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "68",
                      "IsShowingInPis": true,
                      "PisIndex": 4,
                      "VariableName": "8L_PN",
                      "Process": "",
                      "Min": "8XX-XXXXXX",
                      "Max": "",
                      "ErrorCode": "E-42541"
                    }
                  ],
                  "FailRetryEnabled": false,
                  "RetryCount": 5,
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "41"
                  },
                  "Section": 0
                },
                {
                  "$id": "69",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Stop Scanner Read",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "70",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "71",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "72",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "2E0D0A"
                    },
                    {
                      "$id": "73",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "74",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "75",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "76",
                      "ArgumentName": "Purge Rx buf before Tx Cmd",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [],
                  "FailRetryEnabled": false,
                  "RetryCount": 5,
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "41"
                  },
                  "Section": 0
                }
              ],
              "Label": "Scan 8L Part Number init_1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "21"
              },
              "Section": 0
            }
          ],
          "Label": "Initial A30 Scanner",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "77",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "78",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "79",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Load",
                  "Command": "DLL",
                  "Subcommand": "Load",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "80",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "78"
                  },
                  "Section": 0
                },
                {
                  "$id": "81",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "82",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "83",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "78"
                  },
                  "Section": 0
                },
                {
                  "$id": "84",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "85",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "86",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "78"
                  },
                  "Section": 0
                }
              ],
              "Label": "UTS_SCPI",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "77"
              },
              "Section": 0
            },
            {
              "$id": "87",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "88",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "SCPI Assign 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "89",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:Assign"
                    },
                    {
                      "$id": "90",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "91",
                      "ArgumentName": "NameOfIDN",
                      "ArgumentValue": "\"[3634A]\""
                    },
                    {
                      "$id": "92",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "87"
                  },
                  "Section": 0
                },
                {
                  "$id": "93",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set Max 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "94",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "95",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "96",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "87"
                  },
                  "Section": 0
                },
                {
                  "$id": "97",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "KY3634A Sample rate/period",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "98",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "99",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "100",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "87"
                  },
                  "Section": 0
                },
                {
                  "$id": "101",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V 3A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "102",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "103",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "104",
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
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "87"
                  },
                  "Section": 0
                },
                {
                  "$id": "105",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "106",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Keysight 3634A Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "UTS2_VISA_cs.dll",
                      "Arguments": [
                        {
                          "$id": "107",
                          "ArgumentName": "Command",
                          "ArgumentValue": "5:QUERY"
                        },
                        {
                          "$id": "108",
                          "ArgumentName": "NickName",
                          "ArgumentValue": "KY3634"
                        },
                        {
                          "$id": "109",
                          "ArgumentName": "NameofIDN",
                          "ArgumentValue": "MEAS:CURR?"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "110",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "echo",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-33267"
                        },
                        {
                          "$id": "111",
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
                        "$ref": "105"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "E3634 Current test",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "87"
                  },
                  "Section": 0
                }
              ],
              "Label": "Keysight E3634A_USB",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "77"
              },
              "Section": 0
            }
          ],
          "Label": "Init_SCPI",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "2"
          },
          "Section": 0
        },
        {
          "$id": "112",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "113",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS2_SZTDE_COM_cs.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
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
                "$ref": "112"
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
                  "Name": "Read POE Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "116",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "117",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "118",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "119",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "POE_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "120",
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "121",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "122",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "123",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "124",
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "125",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "126",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "127",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "128",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "129",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "130",
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "131",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial POE Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "132",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "133",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "134",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "135",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "136",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "137",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "138",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "AC OFF,DC OFF"
                    },
                    {
                      "$id": "139",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "140",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "141",
                      "IsShowingInPis": true,
                      "PisIndex": 5,
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "142",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch POE Port 1 output enable",
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
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "146",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:OUT1"
                    },
                    {
                      "$id": "147",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "148",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "149",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "150",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "151",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "152",
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "153",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "154",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE AC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "155",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "156",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "157",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:AC ON"
                        },
                        {
                          "$id": "158",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "159",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "160",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "161",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "162",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "163",
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
                        "$ref": "153"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "164",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE AC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "165",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "166",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "167",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:AC POWER"
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
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "174",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-444D5"
                        },
                        {
                          "$id": "175",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-20A1E"
                        },
                        {
                          "$id": "176",
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
                        "$ref": "153"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "AC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "177",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "178",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE DC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "179",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "180",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "181",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:DC ON"
                        },
                        {
                          "$id": "182",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "183",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "184",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "185",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "186",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "187",
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
                        "$ref": "177"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "188",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE DC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "189",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "190",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "191",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:DC POWER"
                        },
                        {
                          "$id": "192",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "193",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "194",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "195",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "196",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "197",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "198",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-C5400"
                        },
                        {
                          "$id": "199",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-00FD2"
                        },
                        {
                          "$id": "200",
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
                        "$ref": "177"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "DC Control",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "201",
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
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "202",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set POE Power Off",
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
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "205",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "206",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:POWER OFF"
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
                      "ArgumentValue": "0D 0D"
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
                    "$ref": "114"
                  },
                  "Section": 0
                }
              ],
              "Label": "POE Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
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
                      "PisIndex": 6,
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
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "245",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "P39L"
                    },
                    {
                      "$id": "246",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "247",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
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
                }
              ],
              "Label": "ACON Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "252",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "253",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON Comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_INF.dll",
                  "Arguments": [
                    {
                      "$id": "254",
                      "ArgumentName": "Command",
                      "ArgumentValue": "13:ReadString"
                    },
                    {
                      "$id": "255",
                      "ArgumentName": "FileName",
                      "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                    },
                    {
                      "$id": "256",
                      "ArgumentName": "SectionName",
                      "ArgumentValue": "Instrument"
                    },
                    {
                      "$id": "257",
                      "ArgumentName": "Iden",
                      "ArgumentValue": "ACON_Port"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "258",
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "259",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Close ACON Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "260",
                      "ArgumentName": "Command",
                      "ArgumentValue": "5:CloseCOM"
                    },
                    {
                      "$id": "261",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "262",
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "263",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Define ACON PLUS COM",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "264",
                      "IsShowingInPis": true,
                      "PisIndex": 7,
                      "VariableName": "ACONPLUS_COM",
                      "Process": "COM5",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-24F10"
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "265",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial ACON PLUS ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "266",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:InitialCOM"
                    },
                    {
                      "$id": "267",
                      "ArgumentName": "PortName",
                      "ArgumentValue": "=var_ACONPLUS_COM"
                    },
                    {
                      "$id": "268",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "269",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "270",
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
                  "Status": 0,
                  "BackupStatus": 1,
                  "Parent": {
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "271",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON PLUS ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "272",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "273",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "274",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "275",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "276",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "277",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "278",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON PLUS"
                    },
                    {
                      "$id": "279",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "280",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "2000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "281",
                      "IsShowingInPis": true,
                      "PisIndex": 7,
                      "VariableName": "ACONPLUS_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-24F10"
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "282",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON PLUS Version",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "283",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "284",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACONPLUS_COM"
                    },
                    {
                      "$id": "285",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "286",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "VER"
                    },
                    {
                      "$id": "287",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "288",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "289",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "290",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "291",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "292",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "aconplus_response",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-20917"
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "293",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read ACON PLUS SN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "294",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "295",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACONPLUS_COM"
                    },
                    {
                      "$id": "296",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "297",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "GETSN"
                    },
                    {
                      "$id": "298",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "2000"
                    },
                    {
                      "$id": "299",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "300",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "301",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "302",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "303",
                      "IsShowingInPis": true,
                      "PisIndex": 8,
                      "VariableName": "aconplus_model",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-2DC2F"
                    },
                    {
                      "$id": "304",
                      "IsShowingInPis": true,
                      "PisIndex": 9,
                      "VariableName": "aconplus_sn",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-4CBF5"
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
                    "$ref": "252"
                  },
                  "Section": 0
                },
                {
                  "$id": "305",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Measure Current",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "306",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "307",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACONPLUS_COM"
                    },
                    {
                      "$id": "308",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "309",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "POWER"
                    },
                    {
                      "$id": "310",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "2000"
                    },
                    {
                      "$id": "311",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "312",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "313",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "314",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "315",
                      "IsShowingInPis": true,
                      "PisIndex": 10,
                      "VariableName": "USB_Vol",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-20570"
                    },
                    {
                      "$id": "316",
                      "IsShowingInPis": true,
                      "PisIndex": 11,
                      "VariableName": "USB_Current",
                      "Process": "",
                      "Min": "0",
                      "Max": "300",
                      "ErrorCode": "E-51706"
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
                    "$ref": "252"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON PLUS Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
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
                "$ref": "379"
              },
              "Section": 1
            },
            {
              "$id": "381",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Loop retry=0",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "382",
                  "IsShowingInPis": true,
                  "PisIndex": 12,
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
                "$ref": "379"
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
          "$id": "383",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "384",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Down",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "385",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "386",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "387",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "388",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39H"
                },
                {
                  "$id": "389",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "390",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "391",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "392",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "393",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "394",
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
                "$ref": "383"
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
          "$id": "395",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "396",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "397",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "398",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "399",
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
                "$ref": "395"
              },
              "Section": 1
            },
            {
              "$id": "400",
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
                "$ref": "395"
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
          "$id": "401",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "402",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE AC enable",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "403",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "404",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "405",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "406",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:AC ON"
                },
                {
                  "$id": "407",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "408",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "409",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "410",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "411",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "412",
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
                "$ref": "401"
              },
              "Section": 1
            },
            {
              "$id": "413",
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
                "$ref": "401"
              },
              "Section": 1
            },
            {
              "$id": "414",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure POE AC Current",
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
                  "ArgumentValue": "MEA:AC POWER"
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
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                },
                {
                  "$id": "425",
                  "IsShowingInPis": true,
                  "PisIndex": 13,
                  "VariableName": "POE_AC_Vol",
                  "Process": "=substr(var_poe_response,1:5)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-444D5"
                },
                {
                  "$id": "426",
                  "IsShowingInPis": true,
                  "PisIndex": 14,
                  "VariableName": "POE_AC_Current",
                  "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                  "Min": "0",
                  "Max": "300",
                  "ErrorCode": "E-20A1E"
                },
                {
                  "$id": "427",
                  "IsShowingInPis": true,
                  "PisIndex": 15,
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
                "$ref": "401"
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
          "$id": "428",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "429",
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
                "$ref": "428"
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
          "$id": "430",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "431",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB root",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "432",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "433",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb root"
                },
                {
                  "$id": "434",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "435",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "436",
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
                "$ref": "430"
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
          "$id": "437",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "438",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read UID from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "439",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "440",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_uid"
                },
                {
                  "$id": "441",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "442",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "uid=;Error Message=;API status="
                },
                {
                  "$id": "443",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "444",
                  "IsShowingInPis": true,
                  "PisIndex": 16,
                  "VariableName": "UID",
                  "Process": "",
                  "Min": "XXXXXXXXXXXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-C270F"
                },
                {
                  "$id": "445",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "446",
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
                "$ref": "437"
              },
              "Section": 1
            },
            {
              "$id": "447",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "448",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run Bat Get 3bit random UID",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "449",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "450",
                      "ArgumentName": "Command",
                      "ArgumentValue": "RandomUID.bat"
                    },
                    {
                      "$id": "451",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "452",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "UID="
                    },
                    {
                      "$id": "453",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "454",
                      "IsShowingInPis": true,
                      "PisIndex": 17,
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
                    "$ref": "447"
                  },
                  "Section": 1
                },
                {
                  "$id": "455",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Generate UID",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "456",
                      "IsShowingInPis": true,
                      "PisIndex": 16,
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
                    "$ref": "447"
                  },
                  "Section": 1
                },
                {
                  "$id": "457",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write UID to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "458",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "459",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_uid '+var_UID"
                    },
                    {
                      "$id": "460",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "461",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "462",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "463",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "464",
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
                    "$ref": "447"
                  },
                  "Section": 1
                },
                {
                  "$id": "465",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
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
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "468",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "469",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "470",
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
                    "$ref": "447"
                  },
                  "Section": 1
                },
                {
                  "$id": "471",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read UID from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "472",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "473",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_uid"
                    },
                    {
                      "$id": "474",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "475",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "uid=;Error Message=;API status="
                    },
                    {
                      "$id": "476",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "477",
                      "IsShowingInPis": true,
                      "PisIndex": 16,
                      "VariableName": "UID",
                      "Process": "",
                      "Min": "XXXXXXXXXXXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-C270F"
                    },
                    {
                      "$id": "478",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "479",
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
                    "$ref": "447"
                  },
                  "Section": 1
                }
              ],
              "Label": "Generate UID",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "437"
              },
              "Section": 1
            },
            {
              "$id": "480",
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
                "$ref": "437"
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
          "$id": "481",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "482",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Pre-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "483",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "484",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_pre_station"
                },
                {
                  "$id": "485",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "486",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_pre_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "487",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "488",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "pre_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-307AC"
                },
                {
                  "$id": "489",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "490",
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
                "$ref": "481"
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
          "$id": "491",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "492",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to FAIL",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "493",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "494",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_fail"
                },
                {
                  "$id": "495",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "496",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "497",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "498",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "499",
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
                "$ref": "491"
              },
              "Section": 1
            },
            {
              "$id": "500",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
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
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "503",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "504",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "505",
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
                "$ref": "491"
              },
              "Section": 1
            },
            {
              "$id": "506",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "507",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "508",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "509",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "510",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "511",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "512",
                  "IsShowingInPis": true,
                  "PisIndex": 18,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "FAIL",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "513",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "514",
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
                "$ref": "491"
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
          "$id": "515",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "516",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device Setting Version",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "517",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "518",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                },
                {
                  "$id": "519",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "Device"
                },
                {
                  "$id": "520",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Version"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "521",
                  "IsShowingInPis": true,
                  "PisIndex": 19,
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "522",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Version Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "523",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "524",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell versions"
                },
                {
                  "$id": "525",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "526",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "model=;software version=;Error Message=;API status="
                },
                {
                  "$id": "527",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "528",
                  "IsShowingInPis": true,
                  "PisIndex": 20,
                  "VariableName": "devModel",
                  "Process": "",
                  "Min": "Sentinel",
                  "Max": "",
                  "ErrorCode": "E-77190"
                },
                {
                  "$id": "529",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "swVersion",
                  "Process": "",
                  "Min": "=var_Dev_Ver",
                  "Max": "",
                  "ErrorCode": "E-42F89"
                },
                {
                  "$id": "530",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "531",
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "532",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device sensor ID Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "533",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "534",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sensor ID"
                },
                {
                  "$id": "535",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "536",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "MAIN sensor ID=;SUB sensor ID=;Error Message=;API status="
                },
                {
                  "$id": "537",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "538",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "main_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-F22B4"
                },
                {
                  "$id": "539",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "sub_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-D16C2"
                },
                {
                  "$id": "540",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "541",
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "542",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device CPU temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "543",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "544",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_cpu_temp"
                },
                {
                  "$id": "545",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "546",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "cpu_big1=;Error Message=;API status="
                },
                {
                  "$id": "547",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "548",
                  "IsShowingInPis": true,
                  "PisIndex": 21,
                  "VariableName": "dev_CPU_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3A766"
                },
                {
                  "$id": "549",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "550",
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "551",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device NTC temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "552",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "553",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_NTC_temp"
                },
                {
                  "$id": "554",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "555",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "temp1=;Error Message=;API status="
                },
                {
                  "$id": "556",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "557",
                  "IsShowingInPis": true,
                  "PisIndex": 22,
                  "VariableName": "dev_NTC_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EA589"
                },
                {
                  "$id": "558",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "559",
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "560",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DRAM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "561",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "562",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell dram_info"
                },
                {
                  "$id": "563",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "564",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "565",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "566",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "567",
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
                "$ref": "515"
              },
              "Section": 1
            },
            {
              "$id": "568",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DROM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "569",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "570",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell drom_info"
                },
                {
                  "$id": "571",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "572",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "573",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "574",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "575",
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
                "$ref": "515"
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
          "$id": "576",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "577",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Write Product Name to device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "578",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "579",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_product_name '+var_project_name"
                },
                {
                  "$id": "580",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "581",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "582",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "583",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "584",
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
                "$ref": "576"
              },
              "Section": 1
            },
            {
              "$id": "585",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
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
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "588",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "589",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "590",
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
                "$ref": "576"
              },
              "Section": 1
            },
            {
              "$id": "591",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Product Name from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "592",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "593",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_product_name"
                },
                {
                  "$id": "594",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "595",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Product name=;Error Message=;API status="
                },
                {
                  "$id": "596",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "597",
                  "IsShowingInPis": true,
                  "PisIndex": 23,
                  "VariableName": "dev_product_name",
                  "Process": "",
                  "Min": "=var_project_name",
                  "Max": "",
                  "ErrorCode": "E-9C73A"
                },
                {
                  "$id": "598",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "599",
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
                "$ref": "576"
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
          "$id": "600",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "601",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read 8LSN from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "602",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "603",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_sn"
                },
                {
                  "$id": "604",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "605",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "sn=;Error Message=;API status="
                },
                {
                  "$id": "606",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "607",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "8L_SN",
                  "Process": "",
                  "Min": "XXXXLZXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-55614"
                },
                {
                  "$id": "608",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "609",
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
                "$ref": "600"
              },
              "Section": 1
            },
            {
              "$id": "610",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "611",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Key IN 8L SN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_KeyIn.dll",
                  "Arguments": [
                    {
                      "$id": "612",
                      "ArgumentName": "",
                      "ArgumentValue": "04:auto return"
                    },
                    {
                      "$id": "613",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "614",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number"
                    },
                    {
                      "$id": "615",
                      "ArgumentName": "",
                      "ArgumentValue": "20"
                    },
                    {
                      "$id": "616",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                    },
                    {
                      "$id": "617",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "618",
                      "ArgumentName": "",
                      "ArgumentValue": "1:12"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "619",
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
                    "$ref": "610"
                  },
                  "Section": 1
                },
                {
                  "$id": "620",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show-8L",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "=var_scan_8LSN\r\n",
                  "Arguments": [
                    {
                      "$id": "621",
                      "ArgumentName": "",
                      "ArgumentValue": "0xFF0000"
                    },
                    {
                      "$id": "622",
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
                    "$ref": "610"
                  },
                  "Section": 1
                },
                {
                  "$id": "623",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write 8LSN to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "624",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "625",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_sn '+var_scan_8LSN"
                    },
                    {
                      "$id": "626",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "627",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "628",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "629",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "630",
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
                    "$ref": "610"
                  },
                  "Section": 1
                },
                {
                  "$id": "631",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
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
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "634",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "635",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "636",
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
                    "$ref": "610"
                  },
                  "Section": 1
                },
                {
                  "$id": "637",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read 8LSN from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "638",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "639",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_sn"
                    },
                    {
                      "$id": "640",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "641",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "sn=;Error Message=;API status="
                    },
                    {
                      "$id": "642",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "643",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "8L_SN",
                      "Process": "",
                      "Min": "XXXXLZXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-55614"
                    },
                    {
                      "$id": "644",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "645",
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
                    "$ref": "610"
                  },
                  "Section": 1
                }
              ],
              "Label": "Call Key IN 8L SN",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "600"
              },
              "Section": 1
            },
            {
              "$id": "646",
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
                "$ref": "600"
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
          "$id": "647",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "648",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "ZYNQ Version Check",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "649",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "650",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell audio getfwver"
                },
                {
                  "$id": "651",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "652",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "result=;Error Message=;API status="
                },
                {
                  "$id": "653",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "654",
                  "IsShowingInPis": true,
                  "PisIndex": 24,
                  "VariableName": "audioVersion",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-93272"
                },
                {
                  "$id": "655",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "656",
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
                "$ref": "647"
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
          "$id": "657",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "658",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "659",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Define Server UseDataBase & AssignData & AssignTable & TableFunction",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "660",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "UseDataBase",
                      "Process": "=var_MACDataBase",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-06A5A"
                    },
                    {
                      "$id": "661",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "AssignData",
                      "Process": "-",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-6613F"
                    },
                    {
                      "$id": "662",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "TableFunctionStr",
                      "Process": "mac",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F8C27"
                    },
                    {
                      "$id": "663",
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
                    "$ref": "658"
                  },
                  "Section": 1
                },
                {
                  "$id": "664",
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
                    "$ref": "658"
                  },
                  "Section": 1
                },
                {
                  "$id": "665",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write Mac to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "666",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "667",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell ethernet setmacaddr '+var_AssignData"
                    },
                    {
                      "$id": "668",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "669",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "670",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "671",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "672",
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
                    "$ref": "658"
                  },
                  "Section": 1
                },
                {
                  "$id": "673",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
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
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "676",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "677",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "678",
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
                    "$ref": "658"
                  },
                  "Section": 1
                },
                {
                  "$id": "679",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read Mac from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "680",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "681",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell ethernet getmacaddr"
                    },
                    {
                      "$id": "682",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "683",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "MAC address=;Error Message=;API status="
                    },
                    {
                      "$id": "684",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "685",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "dev_eth_mac",
                      "Process": "",
                      "Min": "=var_AssignData",
                      "Max": "",
                      "ErrorCode": "E-5A322"
                    },
                    {
                      "$id": "686",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "687",
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
                    "$ref": "658"
                  },
                  "Section": 1
                },
                {
                  "$id": "688",
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
                    "$ref": "658"
                  },
                  "Section": 1
                }
              ],
              "Label": "Server Assign Mac",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "657"
              },
              "Section": 1
            },
            {
              "$id": "689",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device IP address from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "690",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "691",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_ethernetaddr"
                },
                {
                  "$id": "692",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "693",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "IP address=;Error Message=;API status="
                },
                {
                  "$id": "694",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "695",
                  "IsShowingInPis": true,
                  "PisIndex": 25,
                  "VariableName": "dev_ip",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-374E6"
                },
                {
                  "$id": "696",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "697",
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
                "$ref": "657"
              },
              "Section": 1
            },
            {
              "$id": "698",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Ethernet Ping ip address",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "699",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "700",
                  "ArgumentName": "ADBCommand",
                  "ArgumentValue": "adb shell ping -c 3 192.168.50.1"
                },
                {
                  "$id": "701",
                  "ArgumentName": "EndString",
                  "ArgumentValue": "3 received"
                },
                {
                  "$id": "702",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "703",
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
                "$ref": "657"
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
          "$id": "704",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "705",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "706",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "707",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "708",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "709",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "710",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "711",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "712",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "713",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "714",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Micpod LTDM Initial",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "715",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMDR"
                },
                {
                  "$id": "716",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell /vendor/bin/audiocore /vendor/etc/sentinel.ini &"
                },
                {
                  "$id": "717",
                  "ArgumentName": "Delay",
                  "ArgumentValue": "35000"
                },
                {
                  "$id": "718",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "719",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "720",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Micpod device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "721",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "722",
                  "ArgumentName": "Command",
                  "ArgumentValue": "tdebt.exe -c micpod -g micpod_button_status"
                },
                {
                  "$id": "723",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "724",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "725",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "726",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "727",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "728",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "729",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "730",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "731",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "732",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "733",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "734",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "735",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "736",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "737",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "738",
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
                    "$ref": "727"
                  },
                  "Section": 1
                }
              ],
              "Label": "Micpod 48V Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "739",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Confirm LTDM Result",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "740",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "13:ShowDialog"
                },
                {
                  "$id": "741",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + 'MicpodTest.jpg'"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "742",
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
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "743",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "744",
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
                    "$ref": "743"
                  },
                  "Section": 1
                },
                {
                  "$id": "745",
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
                    "$ref": "743"
                  },
                  "Section": 1
                },
                {
                  "$id": "746",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "747",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "748",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "749",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "750",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "751",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "752",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "753",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "754",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "755",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "756",
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
                    "$ref": "743"
                  },
                  "Section": 1
                }
              ],
              "Label": "Wrong POE Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "704"
              },
              "Section": 1
            },
            {
              "$id": "757",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "758",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "759",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "760",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "761",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "762",
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
                "$ref": "704"
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
          "$id": "763",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "764",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "VCC 5V0 chcek",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "765",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "766",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "767",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "768",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "PA0"
                },
                {
                  "$id": "769",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "770",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "771",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "772",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "773",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "774",
                  "IsShowingInPis": true,
                  "PisIndex": 26,
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
                "$ref": "763"
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
          "$id": "775",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "776",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "777",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "778",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "779",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "780",
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
                    "$ref": "776"
                  },
                  "Section": 1
                },
                {
                  "$id": "781",
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
                    "$ref": "776"
                  },
                  "Section": 1
                },
                {
                  "$id": "782",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "783",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "784",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "785",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "786",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "787",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "788",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "789",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "790",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "791",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "792",
                      "IsShowingInPis": true,
                      "PisIndex": 27,
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
                    "$ref": "776"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 0V Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            },
            {
              "$id": "793",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "794",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=1V74",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "795",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "796",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "797",
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
                    "$ref": "793"
                  },
                  "Section": 1
                },
                {
                  "$id": "798",
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
                    "$ref": "793"
                  },
                  "Section": 1
                },
                {
                  "$id": "799",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 1V74-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "800",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "801",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "802",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "803",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "804",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "805",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "806",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "807",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "808",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "809",
                      "IsShowingInPis": true,
                      "PisIndex": 28,
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
                    "$ref": "793"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 1V74 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            },
            {
              "$id": "810",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "811",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V6",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "812",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "813",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "814",
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
                    "$ref": "810"
                  },
                  "Section": 1
                },
                {
                  "$id": "815",
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
                    "$ref": "810"
                  },
                  "Section": 1
                },
                {
                  "$id": "816",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V6-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "817",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "818",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "819",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "820",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "821",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "822",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "823",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "824",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "825",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "826",
                      "IsShowingInPis": true,
                      "PisIndex": 29,
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
                    "$ref": "810"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V6 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            },
            {
              "$id": "827",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "828",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V8",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "829",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "830",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "831",
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
                    "$ref": "827"
                  },
                  "Section": 1
                },
                {
                  "$id": "832",
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
                    "$ref": "827"
                  },
                  "Section": 1
                },
                {
                  "$id": "833",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V8-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "834",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "835",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "836",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "837",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "838",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "839",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "840",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "841",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "842",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "843",
                      "IsShowingInPis": true,
                      "PisIndex": 30,
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
                    "$ref": "827"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V8 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            },
            {
              "$id": "844",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "845",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "846",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "847",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "848",
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
                    "$ref": "844"
                  },
                  "Section": 1
                },
                {
                  "$id": "849",
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
                    "$ref": "844"
                  },
                  "Section": 1
                },
                {
                  "$id": "850",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "851",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "852",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "853",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "854",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "855",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "856",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "857",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "858",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "859",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "860",
                      "IsShowingInPis": true,
                      "PisIndex": 31,
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
                    "$ref": "844"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 OFF Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "775"
              },
              "Section": 1
            },
            {
              "$id": "861",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "862",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "863",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "864",
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
                "$ref": "775"
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
          "$id": "865",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "866",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to PASS",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "867",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "868",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_pass"
                },
                {
                  "$id": "869",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "870",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
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
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "873",
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
                "$ref": "865"
              },
              "Section": 1
            },
            {
              "$id": "874",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
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
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "877",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "878",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "879",
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
                "$ref": "865"
              },
              "Section": 1
            },
            {
              "$id": "880",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "881",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "882",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "883",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "884",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "885",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "886",
                  "IsShowingInPis": true,
                  "PisIndex": 18,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "887",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "888",
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
                "$ref": "865"
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
        },
        {
          "$id": "889",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "890",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Query_hex",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "891",
                  "IsShowingInPis": true,
                  "PisIndex": 32,
                  "VariableName": "query_string",
                  "Process": "01 04 04 00 00 01 30 FA",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-63FDD"
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
              "Section": 1
            },
            {
              "$id": "892",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "query_string_dzr",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "893",
                  "IsShowingInPis": true,
                  "PisIndex": 33,
                  "VariableName": "query_string_dzr",
                  "Process": "A8 01 AA",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-A8D6D"
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
              "Section": 1
            },
            {
              "$id": "894",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Query_hex",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "895",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_1",
                  "Process": "=dec2hex('01')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EAC53"
                },
                {
                  "$id": "896",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_2",
                  "Process": "=dec2hex('04')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-C5628"
                },
                {
                  "$id": "897",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_3",
                  "Process": "=dec2hex('04')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-7CA21"
                },
                {
                  "$id": "898",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_4",
                  "Process": "=dec2hex('00')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-7191B"
                },
                {
                  "$id": "899",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_5",
                  "Process": "=dec2hex('00')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-63DB0"
                },
                {
                  "$id": "900",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_6",
                  "Process": "=dec2hex('01')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3A342"
                },
                {
                  "$id": "901",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "query_string_7",
                  "Process": "=dec2hex('30')",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-C34FB"
                },
                {
                  "$id": "902",
                  "IsShowingInPis": true,
                  "PisIndex": 34,
                  "VariableName": "query_hex",
                  "Process": "=var_query_string_1+' '+var_query_string_2+' '+var_query_string_3+' '+var_query_string_4+' '+var_query_string_5+' '+var_query_string_6+' '+var_query_string_7+' FA'",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-0C09B"
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
              "Section": 1
            },
            {
              "$id": "903",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure Temperature",
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
                  "ArgumentValue": "COM5"
                },
                {
                  "$id": "906",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "907",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "=var_query_hex"
                },
                {
                  "$id": "908",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "909",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "910",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "hex"
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
                  "IsShowingInPis": true,
                  "PisIndex": 10,
                  "VariableName": "USB_Vol",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-20570"
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
              "Section": 1
            },
            {
              "$id": "914",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure Temperature",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "915",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "916",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "COM5"
                },
                {
                  "$id": "917",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "918",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "=var_query_string"
                },
                {
                  "$id": "919",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "920",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "921",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "hex"
                },
                {
                  "$id": "922",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "923",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "924",
                  "IsShowingInPis": true,
                  "PisIndex": 10,
                  "VariableName": "USB_Vol",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-20570"
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
              "Section": 1
            },
            {
              "$id": "925",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure Temperature",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "926",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "927",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "COM6"
                },
                {
                  "$id": "928",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "929",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "=var_query_string_dzr"
                },
                {
                  "$id": "930",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "931",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "932",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "933",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "934",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "935",
                  "IsShowingInPis": true,
                  "PisIndex": 35,
                  "VariableName": "Temperature",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-6F687"
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
              "Section": 1
            }
          ],
          "Label": "DL11B-MC-D1",
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
      "$id": "936",
      "Name": "",
      "Children": [
        {
          "$id": "937",
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
            "$ref": "936"
          },
          "Section": 2
        },
        {
          "$id": "938",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Reset 3634A=0V 3A",
          "Command": "DLL",
          "Subcommand": "Execute",
          "CommandParameters": "UTS2_VISA_cs.dll",
          "Arguments": [
            {
              "$id": "939",
              "ArgumentName": "Command",
              "ArgumentValue": "3:Write"
            },
            {
              "$id": "940",
              "ArgumentName": "NickName",
              "ArgumentValue": "KY3634"
            },
            {
              "$id": "941",
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
            "$ref": "936"
          },
          "Section": 2
        },
        {
          "$id": "942",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "943",
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
                "$ref": "942"
              },
              "Section": 2
            },
            {
              "$id": "944",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE Power Off",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "945",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "946",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "947",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "948",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:POWER OFF"
                },
                {
                  "$id": "949",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "950",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "951",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "952",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "953",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "954",
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
                "$ref": "942"
              },
              "Section": 2
            }
          ],
          "Label": "POE Power OFF",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "936"
          },
          "Section": 2
        },
        {
          "$id": "955",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "956",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Up",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "957",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "958",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "959",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "960",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39L"
                },
                {
                  "$id": "961",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "962",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "963",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "964",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "965",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "966",
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
                "$ref": "955"
              },
              "Section": 2
            },
            {
              "$id": "967",
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
                "$ref": "955"
              },
              "Section": 2
            }
          ],
          "Label": "Cycler UP",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "936"
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
      "$id": "968",
      "Name": "",
      "Children": [
        {
          "$id": "969",
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
            "$ref": "968"
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
      "$id": "970",
      "Name": "",
      "Children": [
        {
          "$id": "971",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "972",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Key IN 8L SN",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_KeyIn.dll",
              "Arguments": [
                {
                  "$id": "973",
                  "ArgumentName": "",
                  "ArgumentValue": "04:auto return"
                },
                {
                  "$id": "974",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "975",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number"
                },
                {
                  "$id": "976",
                  "ArgumentName": "",
                  "ArgumentValue": "20"
                },
                {
                  "$id": "977",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                },
                {
                  "$id": "978",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "979",
                  "ArgumentName": "",
                  "ArgumentValue": "1:12"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "980",
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
                "$ref": "971"
              },
              "Section": 4
            },
            {
              "$id": "981",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "show-8L",
              "Command": "Show Text",
              "Subcommand": "",
              "CommandParameters": "=var_scan_8LSN\r\n",
              "Arguments": [
                {
                  "$id": "982",
                  "ArgumentName": "",
                  "ArgumentValue": "0xFF0000"
                },
                {
                  "$id": "983",
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
                "$ref": "971"
              },
              "Section": 4
            },
            {
              "$id": "984",
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
                "$ref": "971"
              },
              "Section": 4
            }
          ],
          "Label": "Key IN 8L SN",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "970"
          },
          "Section": 4
        },
        {
          "$id": "985",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "986",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find Device loop ++",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "987",
                  "IsShowingInPis": true,
                  "PisIndex": 12,
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
                "$ref": "985"
              },
              "Section": 4
            },
            {
              "$id": "988",
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
                "$ref": "985"
              },
              "Section": 4
            },
            {
              "$id": "989",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB devices",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "990",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "991",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb devices"
                },
                {
                  "$id": "992",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "993",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "994",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "995",
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
                "$ref": "985"
              },
              "Section": 4
            },
            {
              "$id": "996",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "cmdretstr > 30 digits?(Not find device Fail)",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "997",
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
                "$ref": "985"
              },
              "Section": 4
            },
            {
              "$id": "998",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get cmd device original SN",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "999",
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
                "$ref": "985"
              },
              "Section": 4
            },
            {
              "$id": "1000",
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
                "$ref": "985"
              },
              "Section": 4
            }
          ],
          "Label": "Find ADB Devices",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "970"
          },
          "Section": 4
        },
        {
          "$id": "1001",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1002",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1003",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1004",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
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
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1012",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1013",
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
                    "$ref": "1002"
                  },
                  "Section": 4
                },
                {
                  "$id": "1014",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Assign Data From Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1015",
                      "ArgumentName": "Command",
                      "ArgumentValue": "18:NewAssignAddress"
                    },
                    {
                      "$id": "1016",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1017",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1018",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1019",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1020",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1021",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1022",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1023",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "status;used"
                    },
                    {
                      "$id": "1024",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "0;0"
                    },
                    {
                      "$id": "1025",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "status;pc;statusTime"
                    },
                    {
                      "$id": "1026",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+$mac_address+';'+var_ServerTime"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1027",
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
                    "$ref": "1002"
                  },
                  "Section": 4
                },
                {
                  "$id": "1028",
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
                    "$ref": "1002"
                  },
                  "Section": 4
                },
                {
                  "$id": "1029",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Status == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1030",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1031",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1032",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1033",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1034",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1035",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1036",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1037",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1038",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1039",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1040",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "status"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1041",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1042",
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
                    "$ref": "1002"
                  },
                  "Section": 4
                },
                {
                  "$id": "1043",
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
                    "$ref": "1002"
                  },
                  "Section": 4
                }
              ],
              "Label": "Assign Data & Change status to 1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1001"
              },
              "Section": 4
            },
            {
              "$id": "1044",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1045",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1046",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "1047",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1048",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1049",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1050",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1051",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1052",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1053",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1054",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1055",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                },
                {
                  "$id": "1056",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Update used = 1 to Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1057",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Update"
                    },
                    {
                      "$id": "1058",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1059",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1060",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1061",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1062",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1063",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1064",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1065",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1066",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1067",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "used;usedTime;product"
                    },
                    {
                      "$id": "1068",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+var_ServerTime+';'+var_product_name"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1069",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                },
                {
                  "$id": "1070",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                },
                {
                  "$id": "1071",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Used == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1072",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1073",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1074",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1075",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1076",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1077",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1078",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1079",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1080",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1081",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1082",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "used"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1083",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1084",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                },
                {
                  "$id": "1085",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Move Data to Used Table",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1086",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Move"
                    },
                    {
                      "$id": "1087",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1088",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1089",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1090",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1091",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1092",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1093",
                      "ArgumentName": "OriginalTable",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1094",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1095",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1096",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                },
                {
                  "$id": "1097",
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
                    "$ref": "1044"
                  },
                  "Section": 4
                }
              ],
              "Label": "Change Used to 1 & Move Data to Used",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1001"
              },
              "Section": 4
            }
          ],
          "Label": "Assign Data Process",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "970"
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