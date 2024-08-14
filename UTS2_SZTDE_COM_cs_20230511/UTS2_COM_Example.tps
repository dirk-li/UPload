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
              "ErrorCode": "E-22AE1"
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
          "Status": 0,
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
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "23",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Load",
                  "Command": "DLL",
                  "Subcommand": "Load",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "24",
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
                    "$ref": "22"
                  },
                  "Section": 0
                },
                {
                  "$id": "25",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "26",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "27",
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
                    "$ref": "22"
                  },
                  "Section": 0
                },
                {
                  "$id": "28",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "VISA Link",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "29",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:Link"
                    },
                    {
                      "$id": "30",
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
                    "$ref": "22"
                  },
                  "Section": 0
                }
              ],
              "Label": "UTS_SCPI",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "21"
              },
              "Section": 0
            },
            {
              "$id": "31",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "32",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "SCPI Assign 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "33",
                      "ArgumentName": "Command",
                      "ArgumentValue": "2:Assign"
                    },
                    {
                      "$id": "34",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "35",
                      "ArgumentName": "NameOfIDN",
                      "ArgumentValue": "\"[3634A]\""
                    },
                    {
                      "$id": "36",
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
                    "$ref": "31"
                  },
                  "Section": 0
                },
                {
                  "$id": "37",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set Max 3634A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "38",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "39",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "40",
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
                    "$ref": "31"
                  },
                  "Section": 0
                },
                {
                  "$id": "41",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "KY3634A Sample rate/period",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "42",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "43",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "44",
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
                    "$ref": "31"
                  },
                  "Section": 0
                },
                {
                  "$id": "45",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V 3A",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "46",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "47",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "48",
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
                    "$ref": "31"
                  },
                  "Section": 0
                },
                {
                  "$id": "49",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "50",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Keysight 3634A Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "UTS2_VISA_cs.dll",
                      "Arguments": [
                        {
                          "$id": "51",
                          "ArgumentName": "Command",
                          "ArgumentValue": "5:QUERY"
                        },
                        {
                          "$id": "52",
                          "ArgumentName": "NickName",
                          "ArgumentValue": "KY3634"
                        },
                        {
                          "$id": "53",
                          "ArgumentName": "NameofIDN",
                          "ArgumentValue": "MEAS:CURR?"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "54",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "echo",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-33267"
                        },
                        {
                          "$id": "55",
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
                        "$ref": "49"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "E3634 Current test",
                  "Description": "",
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "31"
                  },
                  "Section": 0
                }
              ],
              "Label": "Keysight E3634A_USB",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "21"
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
          "$id": "56",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "57",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "var assign",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "58",
                  "IsShowingInPis": true,
                  "PisIndex": 3,
                  "VariableName": "Com_A30_Scanner",
                  "Process": "3",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-9A932"
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
                "$ref": "56"
              },
              "Section": 0
            },
            {
              "$id": "59",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "60: Search GFS4470 Scanner",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "60",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "=var_Com_A30_Scanner"
                },
                {
                  "$id": "61",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "60: Search"
                },
                {
                  "$id": "62",
                  "ArgumentName": "ComString",
                  "ArgumentValue": "9600;N;8;1.0"
                },
                {
                  "$id": "63",
                  "ArgumentName": "QueryString",
                  "ArgumentValue": "242B24210D"
                },
                {
                  "$id": "64",
                  "ArgumentName": "EchoString",
                  "ArgumentValue": "'Gryphon-GFS44'"
                },
                {
                  "$id": "65",
                  "ArgumentName": "CmdString Type",
                  "ArgumentValue": "1"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "66",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "Comport",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-14291"
                },
                {
                  "$id": "67",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "StartStr",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3CDC4"
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
                "$ref": "56"
              },
              "Section": 0
            },
            {
              "$id": "68",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset Scanner",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_CommMini.dll",
              "Arguments": [
                {
                  "$id": "69",
                  "ArgumentName": "ObjectIndex",
                  "ArgumentValue": "=var_Com_Gfs4470"
                },
                {
                  "$id": "70",
                  "ArgumentName": "COMMAND",
                  "ArgumentValue": "52: Query"
                },
                {
                  "$id": "71",
                  "ArgumentName": "TxCmd String",
                  "ArgumentValue": "520D"
                },
                {
                  "$id": "72",
                  "ArgumentName": "TxCmd String Type",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "73",
                  "ArgumentName": "Timeout",
                  "ArgumentValue": "2000"
                },
                {
                  "$id": "74",
                  "ArgumentName": "Echo EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "75",
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
                "$ref": "56"
              },
              "Section": 0
            },
            {
              "$id": "76",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "77",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Clear Buffer",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "78",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "79",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "65: Purge RxBuf"
                    },
                    {
                      "$id": "80",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "81",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "82",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "83",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "84",
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
                    "$ref": "76"
                  },
                  "Section": 0
                },
                {
                  "$id": "85",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "variable",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "86",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "8L_PN",
                      "Process": "=''",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-72AA5"
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
                    "$ref": "76"
                  },
                  "Section": 0
                },
                {
                  "$id": "87",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Stop Scanner Read",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "88",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_A30_Scanner"
                    },
                    {
                      "$id": "89",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "90",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "2E0D0A"
                    },
                    {
                      "$id": "91",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "92",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "93",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "94",
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
                    "$ref": "76"
                  },
                  "Section": 0
                },
                {
                  "$id": "95",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Start Scanner Read -- 8L PN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "96",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_A30_Scanner"
                    },
                    {
                      "$id": "97",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "98",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "05 57 A0 01 01 FF 02"
                    },
                    {
                      "$id": "99",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "100",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "101",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "102",
                      "ArgumentName": "Purge Rx buf before Tx Cmd",
                      "ArgumentValue": "1"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "103",
                      "IsShowingInPis": true,
                      "PisIndex": 4,
                      "VariableName": "8L_PN",
                      "Process": "",
                      "Min": "8XX-XXXXXX",
                      "Max": "",
                      "ErrorCode": "E-72AA5"
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
                    "$ref": "76"
                  },
                  "Section": 0
                },
                {
                  "$id": "104",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Stop Scanner Read",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_CommMini.dll",
                  "Arguments": [
                    {
                      "$id": "105",
                      "ArgumentName": "ObjectIndex",
                      "ArgumentValue": "=var_Com_Gfs4470"
                    },
                    {
                      "$id": "106",
                      "ArgumentName": "COMMAND",
                      "ArgumentValue": "52: Query"
                    },
                    {
                      "$id": "107",
                      "ArgumentName": "TxCmd String",
                      "ArgumentValue": "2E0D0A"
                    },
                    {
                      "$id": "108",
                      "ArgumentName": "TxCmd String Type",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "109",
                      "ArgumentName": "Timeout",
                      "ArgumentValue": "500"
                    },
                    {
                      "$id": "110",
                      "ArgumentName": "Echo EndString",
                      "ArgumentValue": "0d0a"
                    },
                    {
                      "$id": "111",
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
                    "$ref": "76"
                  },
                  "Section": 0
                }
              ],
              "Label": "Scan 8L Part Number init_1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "56"
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
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "139",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "AC OFF,DC OFF"
                    },
                    {
                      "$id": "140",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "141",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "20000"
                    },
                    {
                      "$id": "142",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "143",
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
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "144",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch POE Port 1 output enable",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "145",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "146",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "147",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "148",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:OUT1"
                    },
                    {
                      "$id": "149",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "150",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "151",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "152",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "153",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "154",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "155",
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
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "114"
                  },
                  "Section": 0
                },
                {
                  "$id": "156",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "157",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE AC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "158",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "159",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "160",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:AC ON"
                        },
                        {
                          "$id": "161",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "162",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "163",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "164",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "165",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "166",
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
                        "$ref": "156"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "167",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE AC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "168",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "169",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "170",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:AC POWER"
                        },
                        {
                          "$id": "171",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "172",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "173",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "174",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "175",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "176",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "177",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-444D5"
                        },
                        {
                          "$id": "178",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_AC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-20A1E"
                        },
                        {
                          "$id": "179",
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
                        "$ref": "156"
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
                  "$id": "180",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "181",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set POE DC enable",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "182",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "183",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "184",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "SET:DC ON"
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
                        "$ref": "180"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "191",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Measure POE DC Current",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "192",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "193",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_POE_COM"
                        },
                        {
                          "$id": "194",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "MEA:DC POWER"
                        },
                        {
                          "$id": "195",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "196",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "197",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "str"
                        },
                        {
                          "$id": "198",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D 0D"
                        },
                        {
                          "$id": "199",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "200",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "poe_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-915A4"
                        },
                        {
                          "$id": "201",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Vol",
                          "Process": "=substr(var_poe_response,1:5)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-C5400"
                        },
                        {
                          "$id": "202",
                          "IsShowingInPis": true,
                          "PisIndex": 0,
                          "VariableName": "POE_DC_Current",
                          "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-00FD2"
                        },
                        {
                          "$id": "203",
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
                        "$ref": "180"
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
                  "$id": "204",
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
                  "$id": "205",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set POE Power Off",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "206",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "207",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_POE_COM"
                    },
                    {
                      "$id": "208",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "209",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:POWER OFF"
                    },
                    {
                      "$id": "210",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "211",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "212",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "213",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "214",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "215",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "216",
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
                  "Status": 1,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "114"
                  },
                  "Section": 0
                }
              ],
              "Label": "POE Box Initial",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "217",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "218",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Auto Initial ACON Plus Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "219",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "220",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "221",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "222",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "223",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "IDN"
                    },
                    {
                      "$id": "224",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "225",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "226",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "ACON BOX"
                    },
                    {
                      "$id": "227",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "228",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "229",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "200000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "230",
                      "IsShowingInPis": true,
                      "PisIndex": 5,
                      "VariableName": "ACONPLUS_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-5CE33"
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
                    "$ref": "217"
                  },
                  "Section": 0
                },
                {
                  "$id": "231",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Measure POE AC Current",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "232",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "233",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACONPLUS_COM"
                    },
                    {
                      "$id": "234",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "235",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "POWER"
                    },
                    {
                      "$id": "236",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "237",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "238",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "2000"
                    },
                    {
                      "$id": "239",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "240",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "241",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "242",
                      "IsShowingInPis": true,
                      "PisIndex": 6,
                      "VariableName": "POE_AC_Vol",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-444D5"
                    },
                    {
                      "$id": "243",
                      "IsShowingInPis": true,
                      "PisIndex": 7,
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
                    "$ref": "217"
                  },
                  "Section": 0
                }
              ],
              "Label": "ACON Box Plus Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "244",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "245",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial TYPEC Box ComPort",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "246",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "247",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "248",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "249",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "250",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "GET:TYPEC SWITCH"
                    },
                    {
                      "$id": "251",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "252",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "253",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "TYPEC SWITCH"
                    },
                    {
                      "$id": "254",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "255",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "256",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "257",
                      "IsShowingInPis": true,
                      "PisIndex": 8,
                      "VariableName": "Typec_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-3C6F0"
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
                    "$ref": "244"
                  },
                  "Section": 0
                },
                {
                  "$id": "258",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch USBA output enable",
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
                      "ArgumentValue": "=var_Typec_COM"
                    },
                    {
                      "$id": "261",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "262",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:USBA"
                    },
                    {
                      "$id": "263",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "264",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "265",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "266",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
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
                      "VariableName": "typec_response",
                      "Process": "",
                      "Min": "SET:USBA",
                      "Max": "",
                      "ErrorCode": "E-8E2B9"
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
                    "$ref": "244"
                  },
                  "Section": 0
                },
                {
                  "$id": "269",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Switch TYPEC output enable",
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
                      "ArgumentValue": "=var_Typec_COM"
                    },
                    {
                      "$id": "272",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "273",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:TYPEC"
                    },
                    {
                      "$id": "274",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "275",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "276",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "277",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "278",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "279",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "280",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "typec_response",
                      "Process": "",
                      "Min": "SET:TYPEC",
                      "Max": "",
                      "ErrorCode": "E-8E2B9"
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
                    "$ref": "244"
                  },
                  "Section": 0
                },
                {
                  "$id": "281",
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
                    "$ref": "244"
                  },
                  "Section": 0
                },
                {
                  "$id": "282",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Set TypeC Power OFF",
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
                      "ArgumentValue": "=var_Typec_COM"
                    },
                    {
                      "$id": "285",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "286",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "SET:OFF"
                    },
                    {
                      "$id": "287",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D 0D"
                    },
                    {
                      "$id": "288",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "289",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "290",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "291",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "292",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "293",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "typec_response",
                      "Process": "",
                      "Min": "TYPEC_POWER:OFF",
                      "Max": "",
                      "ErrorCode": "E-8E2B9"
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
                    "$ref": "244"
                  },
                  "Section": 0
                }
              ],
              "Label": "Typec Box Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "294",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "295",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial AZD-KX comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "296",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "297",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "298",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "299",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "300",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "01 04 04 00 00 01 30 FA"
                    },
                    {
                      "$id": "301",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "302",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "HEX"
                    },
                    {
                      "$id": "303",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "01 04 02"
                    },
                    {
                      "$id": "304",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "HEX"
                    },
                    {
                      "$id": "305",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "306",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "307",
                      "IsShowingInPis": true,
                      "PisIndex": 9,
                      "VariableName": "Orientalmotor_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-9FBB1"
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
                    "$ref": "294"
                  },
                  "Section": 0
                },
                {
                  "$id": "308",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "309",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "command_start & command_response",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "310",
                          "IsShowingInPis": true,
                          "PisIndex": 10,
                          "VariableName": "command_start",
                          "Process": "01 10 00 58 00 10 20 00 00 00 30 00 00 00 01",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-BED12"
                        },
                        {
                          "$id": "311",
                          "IsShowingInPis": true,
                          "PisIndex": 11,
                          "VariableName": "command_response",
                          "Process": "00 00 00 01",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-B0DF7"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "312",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Input step / speed / start_speed / stop_speed (step,Hz,Hz,Hz,0.1%)",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "313",
                          "IsShowingInPis": true,
                          "PisIndex": 12,
                          "VariableName": "raw_step",
                          "Process": "5000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-36388"
                        },
                        {
                          "$id": "314",
                          "IsShowingInPis": true,
                          "PisIndex": 13,
                          "VariableName": "raw_speed",
                          "Process": "15000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-3909D"
                        },
                        {
                          "$id": "315",
                          "IsShowingInPis": true,
                          "PisIndex": 14,
                          "VariableName": "raw_start_speed",
                          "Process": "200000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-11815"
                        },
                        {
                          "$id": "316",
                          "IsShowingInPis": true,
                          "PisIndex": 15,
                          "VariableName": "raw_stop_speed",
                          "Process": "200000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E5A26"
                        },
                        {
                          "$id": "317",
                          "IsShowingInPis": true,
                          "PisIndex": 16,
                          "VariableName": "raw_current",
                          "Process": "1000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-49A0D"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "318",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Convert Data to Special format",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "319",
                          "IsShowingInPis": true,
                          "PisIndex": 17,
                          "VariableName": "raw_step_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_step),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-76BF6"
                        },
                        {
                          "$id": "320",
                          "IsShowingInPis": true,
                          "PisIndex": 18,
                          "VariableName": "command_pos",
                          "Process": "=substr(var_raw_step_str,1,2)+' '+substr(var_raw_step_str, 3,4)+' '+substr(var_raw_step_str, 5,6)+' '+substr(var_raw_step_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-AD520"
                        },
                        {
                          "$id": "321",
                          "IsShowingInPis": true,
                          "PisIndex": 19,
                          "VariableName": "raw_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8D7BD"
                        },
                        {
                          "$id": "322",
                          "IsShowingInPis": true,
                          "PisIndex": 20,
                          "VariableName": "command_speed",
                          "Process": "=substr(var_raw_speed_str,1,2)+' '+substr(var_raw_speed_str, 3,4)+' '+substr(var_raw_speed_str, 5,6)+' '+substr(var_raw_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-5093E"
                        },
                        {
                          "$id": "323",
                          "IsShowingInPis": true,
                          "PisIndex": 21,
                          "VariableName": "raw_start_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_start_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-34082"
                        },
                        {
                          "$id": "324",
                          "IsShowingInPis": true,
                          "PisIndex": 22,
                          "VariableName": "command_start_speed",
                          "Process": "=substr(var_raw_start_speed_str,1,2)+' '+substr(var_raw_start_speed_str,3,4)+' '+substr(var_raw_start_speed_str, 5,6)+' '+substr(var_raw_start_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-B01B1"
                        },
                        {
                          "$id": "325",
                          "IsShowingInPis": true,
                          "PisIndex": 23,
                          "VariableName": "raw_stop_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_stop_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-26141"
                        },
                        {
                          "$id": "326",
                          "IsShowingInPis": true,
                          "PisIndex": 24,
                          "VariableName": "command_stop_speed",
                          "Process": "=substr(var_raw_stop_speed_str,1,2)+' '+substr(var_raw_stop_speed_str, 3,4)+' '+substr(var_raw_stop_speed_str, 5,6)+' '+substr(var_raw_stop_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8E350"
                        },
                        {
                          "$id": "327",
                          "IsShowingInPis": true,
                          "PisIndex": 25,
                          "VariableName": "raw_current_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_current),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-EECE3"
                        },
                        {
                          "$id": "328",
                          "IsShowingInPis": true,
                          "PisIndex": 26,
                          "VariableName": "command_current",
                          "Process": "=substr(var_raw_current_str,1,2)+' '+substr(var_raw_current_str, 3,4)+' '+substr(var_raw_current_str, 5,6)+' '+substr(var_raw_current_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-66D49"
                        },
                        {
                          "$id": "329",
                          "IsShowingInPis": true,
                          "PisIndex": 27,
                          "VariableName": "command_raw",
                          "Process": "=var_command_start+' '+var_command_pos+' '+var_command_speed+' '+var_command_start_speed+' '+var_command_stop_speed+' '+var_command_current+' '+var_command_response",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8CC0B"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "330",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command CRC",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
                      "Arguments": [
                        {
                          "$id": "331",
                          "ArgumentName": "Command",
                          "ArgumentValue": "15:CRC-16/MODBUS"
                        },
                        {
                          "$id": "332",
                          "ArgumentName": "Old str",
                          "ArgumentValue": "=var_command_raw"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "333",
                          "IsShowingInPis": true,
                          "PisIndex": 28,
                          "VariableName": "command_crc",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E096B"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "334",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "pos7",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "335",
                          "IsShowingInPis": true,
                          "PisIndex": 29,
                          "VariableName": "pos7",
                          "Process": "=var_command_raw+' '+var_command_crc",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8662B"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "336",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Run Pos7",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "337",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "338",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Orientalmotor_COM"
                        },
                        {
                          "$id": "339",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "9600;N;8;1"
                        },
                        {
                          "$id": "340",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "=var_pos7"
                        },
                        {
                          "$id": "341",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": ""
                        },
                        {
                          "$id": "342",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "Hex"
                        },
                        {
                          "$id": "343",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "344",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "345",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "hex"
                        },
                        {
                          "$id": "346",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "50000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "347",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "response",
                          "Process": "",
                          "Min": "01 10 00 58 00 10 40 16",
                          "Max": "",
                          "ErrorCode": "E-9F2FB"
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
                        "$ref": "308"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "pos7 5mm_pos, 15k/s Test_stop",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "294"
                  },
                  "Section": 0
                },
                {
                  "$id": "348",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "349",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "command_start & command_response",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "350",
                          "IsShowingInPis": true,
                          "PisIndex": 10,
                          "VariableName": "command_start",
                          "Process": "01 10 00 58 00 10 20 00 00 00 30 00 00 00 01",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-BED12"
                        },
                        {
                          "$id": "351",
                          "IsShowingInPis": true,
                          "PisIndex": 11,
                          "VariableName": "command_response",
                          "Process": "00 00 00 01",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-B0DF7"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "352",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Input step / speed / start_speed / stop_speed (step,Hz,Hz,Hz,0.1%)",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "353",
                          "IsShowingInPis": true,
                          "PisIndex": 12,
                          "VariableName": "raw_step",
                          "Process": "37000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-36388"
                        },
                        {
                          "$id": "354",
                          "IsShowingInPis": true,
                          "PisIndex": 13,
                          "VariableName": "raw_speed",
                          "Process": "15000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-3909D"
                        },
                        {
                          "$id": "355",
                          "IsShowingInPis": true,
                          "PisIndex": 14,
                          "VariableName": "raw_start_speed",
                          "Process": "200000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-11815"
                        },
                        {
                          "$id": "356",
                          "IsShowingInPis": true,
                          "PisIndex": 15,
                          "VariableName": "raw_stop_speed",
                          "Process": "200000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E5A26"
                        },
                        {
                          "$id": "357",
                          "IsShowingInPis": true,
                          "PisIndex": 16,
                          "VariableName": "raw_current",
                          "Process": "1000",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-49A0D"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "358",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Convert Data to Special format",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "359",
                          "IsShowingInPis": true,
                          "PisIndex": 17,
                          "VariableName": "raw_step_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_step),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-76BF6"
                        },
                        {
                          "$id": "360",
                          "IsShowingInPis": true,
                          "PisIndex": 18,
                          "VariableName": "command_pos",
                          "Process": "=substr(var_raw_step_str,1,2)+' '+substr(var_raw_step_str, 3,4)+' '+substr(var_raw_step_str, 5,6)+' '+substr(var_raw_step_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-AD520"
                        },
                        {
                          "$id": "361",
                          "IsShowingInPis": true,
                          "PisIndex": 19,
                          "VariableName": "raw_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8D7BD"
                        },
                        {
                          "$id": "362",
                          "IsShowingInPis": true,
                          "PisIndex": 20,
                          "VariableName": "command_speed",
                          "Process": "=substr(var_raw_speed_str,1,2)+' '+substr(var_raw_speed_str, 3,4)+' '+substr(var_raw_speed_str, 5,6)+' '+substr(var_raw_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-5093E"
                        },
                        {
                          "$id": "363",
                          "IsShowingInPis": true,
                          "PisIndex": 21,
                          "VariableName": "raw_start_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_start_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-34082"
                        },
                        {
                          "$id": "364",
                          "IsShowingInPis": true,
                          "PisIndex": 22,
                          "VariableName": "command_start_speed",
                          "Process": "=substr(var_raw_start_speed_str,1,2)+' '+substr(var_raw_start_speed_str,3,4)+' '+substr(var_raw_start_speed_str, 5,6)+' '+substr(var_raw_start_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-B01B1"
                        },
                        {
                          "$id": "365",
                          "IsShowingInPis": true,
                          "PisIndex": 23,
                          "VariableName": "raw_stop_speed_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_stop_speed),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-26141"
                        },
                        {
                          "$id": "366",
                          "IsShowingInPis": true,
                          "PisIndex": 24,
                          "VariableName": "command_stop_speed",
                          "Process": "=substr(var_raw_stop_speed_str,1,2)+' '+substr(var_raw_stop_speed_str, 3,4)+' '+substr(var_raw_stop_speed_str, 5,6)+' '+substr(var_raw_stop_speed_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8E350"
                        },
                        {
                          "$id": "367",
                          "IsShowingInPis": true,
                          "PisIndex": 25,
                          "VariableName": "raw_current_str",
                          "Process": "=PadLeft(Dec2Hex(var_raw_current),8,'0')",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-EECE3"
                        },
                        {
                          "$id": "368",
                          "IsShowingInPis": true,
                          "PisIndex": 26,
                          "VariableName": "command_current",
                          "Process": "=substr(var_raw_current_str,1,2)+' '+substr(var_raw_current_str, 3,4)+' '+substr(var_raw_current_str, 5,6)+' '+substr(var_raw_current_str, 7,8)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-66D49"
                        },
                        {
                          "$id": "369",
                          "IsShowingInPis": true,
                          "PisIndex": 27,
                          "VariableName": "command_raw",
                          "Process": "=var_command_start+' '+var_command_pos+' '+var_command_speed+' '+var_command_start_speed+' '+var_command_stop_speed+' '+var_command_current+' '+var_command_response",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8CC0B"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "370",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command CRC",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
                      "Arguments": [
                        {
                          "$id": "371",
                          "ArgumentName": "Command",
                          "ArgumentValue": "15:CRC-16/MODBUS"
                        },
                        {
                          "$id": "372",
                          "ArgumentName": "Old str",
                          "ArgumentValue": "=var_command_raw"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "373",
                          "IsShowingInPis": true,
                          "PisIndex": 28,
                          "VariableName": "command_crc",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E096B"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "374",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "pos21",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "375",
                          "IsShowingInPis": true,
                          "PisIndex": 30,
                          "VariableName": "pos21",
                          "Process": "=var_command_raw+' '+var_command_crc",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-70DE4"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "376",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Run Pos21",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "377",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "378",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Orientalmotor_COM"
                        },
                        {
                          "$id": "379",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "115200;E;8;1"
                        },
                        {
                          "$id": "380",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "=var_pos21"
                        },
                        {
                          "$id": "381",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": ""
                        },
                        {
                          "$id": "382",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "Hex"
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
                          "ArgumentValue": "hex"
                        },
                        {
                          "$id": "386",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "50000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "387",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "response",
                          "Process": "",
                          "Min": "01 10 00 58 00 10 40 16",
                          "Max": "",
                          "ErrorCode": "E-9F2FB"
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
                        "$ref": "348"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "pos21 37mm_pos, 15k/s Start Position",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "294"
                  },
                  "Section": 0
                },
                {
                  "$id": "388",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "389",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command_row",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "390",
                          "IsShowingInPis": true,
                          "PisIndex": 27,
                          "VariableName": "command_raw",
                          "Process": "01 10 00 7C 00 02 04 00 00 00 80",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8CC0B"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "391",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command CRC",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
                      "Arguments": [
                        {
                          "$id": "392",
                          "ArgumentName": "Command",
                          "ArgumentValue": "15:CRC-16/MODBUS"
                        },
                        {
                          "$id": "393",
                          "ArgumentName": "Old str",
                          "ArgumentValue": "=var_command_raw"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "394",
                          "IsShowingInPis": true,
                          "PisIndex": 28,
                          "VariableName": "command_crc",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E096B"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "395",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command_Str",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "396",
                          "IsShowingInPis": true,
                          "PisIndex": 31,
                          "VariableName": "command_str",
                          "Process": "=var_command_raw+' '+var_command_crc",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-D11E8"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "397",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Run Command Str",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "398",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "399",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Orientalmotor_COM"
                        },
                        {
                          "$id": "400",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "115200;E;8;1"
                        },
                        {
                          "$id": "401",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "=var_command_str"
                        },
                        {
                          "$id": "402",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": ""
                        },
                        {
                          "$id": "403",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "Hex"
                        },
                        {
                          "$id": "404",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "405",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "406",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "hex"
                        },
                        {
                          "$id": "407",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "50000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "408",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "response",
                          "Process": "",
                          "Min": "01 10 00 7C 00 02 80 10 ",
                          "Max": "",
                          "ErrorCode": "E-9F2FB"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "409",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Delay",
                      "Command": "Delay",
                      "Subcommand": "",
                      "CommandParameters": "500",
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "410",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command_row",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "411",
                          "IsShowingInPis": true,
                          "PisIndex": 27,
                          "VariableName": "command_raw",
                          "Process": "01 10 00 7C 00 02 04 00 00 00 00",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-8CC0B"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "412",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command CRC",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
                      "Arguments": [
                        {
                          "$id": "413",
                          "ArgumentName": "Command",
                          "ArgumentValue": "15:CRC-16/MODBUS"
                        },
                        {
                          "$id": "414",
                          "ArgumentName": "Old str",
                          "ArgumentValue": "=var_command_raw"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "415",
                          "IsShowingInPis": true,
                          "PisIndex": 28,
                          "VariableName": "command_crc",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-E096B"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "416",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Command_Str",
                      "Command": "Variable Assign",
                      "Subcommand": "",
                      "CommandParameters": "",
                      "Arguments": [],
                      "ResultVariables": [
                        {
                          "$id": "417",
                          "IsShowingInPis": true,
                          "PisIndex": 31,
                          "VariableName": "command_str",
                          "Process": "=var_command_raw+' '+var_command_crc",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-D11E8"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "418",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Run Command Str",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "419",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "420",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Orientalmotor_COM"
                        },
                        {
                          "$id": "421",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "115200;E;8;1"
                        },
                        {
                          "$id": "422",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "=var_command_str"
                        },
                        {
                          "$id": "423",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": ""
                        },
                        {
                          "$id": "424",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "Hex"
                        },
                        {
                          "$id": "425",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "426",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "427",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "hex"
                        },
                        {
                          "$id": "428",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "50000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "429",
                          "IsShowingInPis": false,
                          "PisIndex": 0,
                          "VariableName": "response",
                          "Process": "",
                          "Min": "01 10 00 7C 00 02 80 10 ",
                          "Max": "",
                          "ErrorCode": "E-9F2FB"
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
                        "$ref": "388"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "Reset ALM",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "294"
                  },
                  "Section": 0
                }
              ],
              "Label": "AZD-KX Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "430",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "431",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial force gauge IMADA comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "432",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "433",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "256000;N;8;1"
                    },
                    {
                      "$id": "434",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "435",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "436",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "XYN"
                    },
                    {
                      "$id": "437",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": "0D"
                    },
                    {
                      "$id": "438",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "439",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "XYNZTS-50N"
                    },
                    {
                      "$id": "440",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "441",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "442",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "443",
                      "IsShowingInPis": true,
                      "PisIndex": 32,
                      "VariableName": "Forcegauge_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-A11BE"
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
                    "$ref": "430"
                  },
                  "Section": 0
                },
                {
                  "$id": "444",
                  "$type": "UTS2._0.TestGroup, UTS2.0",
                  "Name": "",
                  "Children": [
                    {
                      "$id": "445",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Stop Continuous",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "446",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "447",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "448",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "449",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "Y"
                        },
                        {
                          "$id": "450",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "451",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "452",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "453",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "454",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
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
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "457",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read Name",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "458",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "459",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "460",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "461",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XYN"
                        },
                        {
                          "$id": "462",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "463",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "464",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "465",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "466",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "467",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "468",
                          "IsShowingInPis": true,
                          "PisIndex": 34,
                          "VariableName": "Forcegauge_Name",
                          "Process": "",
                          "Min": "XYNZTS-50N-I",
                          "Max": "",
                          "ErrorCode": "E-87382"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "469",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read Serial NO.",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "470",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "471",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "472",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "473",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XYS"
                        },
                        {
                          "$id": "474",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "475",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "476",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "477",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "478",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "479",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "480",
                          "IsShowingInPis": true,
                          "PisIndex": 35,
                          "VariableName": "Forcegauge_SN",
                          "Process": "",
                          "Min": "XYSxxxxxx",
                          "Max": "",
                          "ErrorCode": "E-513C4"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "481",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read info",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "482",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "483",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "484",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "485",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XYI"
                        },
                        {
                          "$id": "486",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "487",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "488",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "489",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "490",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
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
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "XYI3A1",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "493",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read Version",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "494",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "495",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "496",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "497",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XYV"
                        },
                        {
                          "$id": "498",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "499",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "500",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "501",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "502",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "503",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "504",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "XYVx.xx",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "505",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Zero Load reset peak z",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "506",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "507",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "508",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "509",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "Z"
                        },
                        {
                          "$id": "510",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "511",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "512",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "513",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "514",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "515",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "516",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "517",
                      "$type": "UTS2._0.TestGroup, UTS2.0",
                      "Name": "",
                      "Children": [
                        {
                          "$id": "518",
                          "$type": "UTS2._0.TestItem, UTS2.0",
                          "Name": "Change to fg basis XFU1",
                          "Command": "DLL",
                          "Subcommand": "Execute",
                          "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                          "Arguments": [
                            {
                              "$id": "519",
                              "ArgumentName": "Command",
                              "ArgumentValue": "3:Query"
                            },
                            {
                              "$id": "520",
                              "ArgumentName": "ComPort",
                              "ArgumentValue": "=var_Forcegauge_COM"
                            },
                            {
                              "$id": "521",
                              "ArgumentName": "Parameter",
                              "ArgumentValue": "256000;N;8;1"
                            },
                            {
                              "$id": "522",
                              "ArgumentName": "SendData",
                              "ArgumentValue": "XFU1"
                            },
                            {
                              "$id": "523",
                              "ArgumentName": "EndChar",
                              "ArgumentValue": "0D"
                            },
                            {
                              "$id": "524",
                              "ArgumentName": "SendType",
                              "ArgumentValue": "STR"
                            },
                            {
                              "$id": "525",
                              "ArgumentName": "ReadDelay",
                              "ArgumentValue": "200"
                            },
                            {
                              "$id": "526",
                              "ArgumentName": "ReturnLength",
                              "ArgumentValue": "100"
                            },
                            {
                              "$id": "527",
                              "ArgumentName": "ReturnType",
                              "ArgumentValue": "STR"
                            },
                            {
                              "$id": "528",
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
                            "$ref": "517"
                          },
                          "Section": 0
                        },
                        {
                          "$id": "529",
                          "$type": "UTS2._0.TestItem, UTS2.0",
                          "Name": "Read Unit",
                          "Command": "DLL",
                          "Subcommand": "Execute",
                          "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                          "Arguments": [
                            {
                              "$id": "530",
                              "ArgumentName": "Command",
                              "ArgumentValue": "3:Query"
                            },
                            {
                              "$id": "531",
                              "ArgumentName": "ComPort",
                              "ArgumentValue": "=var_Forcegauge_COM"
                            },
                            {
                              "$id": "532",
                              "ArgumentName": "Parameter",
                              "ArgumentValue": "256000;N;8;1"
                            },
                            {
                              "$id": "533",
                              "ArgumentName": "SendData",
                              "ArgumentValue": "XFU"
                            },
                            {
                              "$id": "534",
                              "ArgumentName": "EndChar",
                              "ArgumentValue": "0D"
                            },
                            {
                              "$id": "535",
                              "ArgumentName": "SendType",
                              "ArgumentValue": "STR"
                            },
                            {
                              "$id": "536",
                              "ArgumentName": "ReadDelay",
                              "ArgumentValue": "200"
                            },
                            {
                              "$id": "537",
                              "ArgumentName": "ReturnLength",
                              "ArgumentValue": "100"
                            },
                            {
                              "$id": "538",
                              "ArgumentName": "ReturnType",
                              "ArgumentValue": "STR"
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
                              "PisIndex": 33,
                              "VariableName": "Forcegauge_response",
                              "Process": "",
                              "Min": "XFU1",
                              "Max": "",
                              "ErrorCode": "E-9DDB2"
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
                            "$ref": "517"
                          },
                          "Section": 0
                        }
                      ],
                      "Label": "Unit",
                      "Description": "",
                      "Status": 0,
                      "BackupStatus": 0,
                      "Parent": {
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "541",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Set Comparator L H",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "542",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "543",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "544",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "545",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XCW+5000-5000"
                        },
                        {
                          "$id": "546",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "547",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "548",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "549",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "550",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "551",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "552",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "553",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Delete all data",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "554",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "555",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "556",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "557",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "C"
                        },
                        {
                          "$id": "558",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "559",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "560",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "561",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "562",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "563",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "564",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "565",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Real Time Mode",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "566",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "567",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "568",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "569",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "T"
                        },
                        {
                          "$id": "570",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "571",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "572",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "573",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "574",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "575",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "576",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "577",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Peak Setting",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "578",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "579",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "580",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "581",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XDS0"
                        },
                        {
                          "$id": "582",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "583",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "584",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "585",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "586",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "587",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "588",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "R",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "589",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Peak Setting Read",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "590",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "591",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "592",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "593",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XDS"
                        },
                        {
                          "$id": "594",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "595",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "596",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "597",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "598",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "599",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "600",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "XDS0",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "601",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Peak Select 0:OR 1: AND",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "602",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "603",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "604",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "605",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XFG0"
                        },
                        {
                          "$id": "606",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "607",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "608",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "609",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "610",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "611",
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "612",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read Peak Select",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "613",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "614",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "615",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "616",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XFG"
                        },
                        {
                          "$id": "617",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "618",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "619",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "620",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "621",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
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
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "XFG0",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "624",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Clear NG cnt",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "625",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "626",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "627",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "628",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XCC"
                        },
                        {
                          "$id": "629",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "630",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "631",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "632",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "633",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "634",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "635",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "636",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read NG cnt",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "637",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "638",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "639",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "640",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "XCN"
                        },
                        {
                          "$id": "641",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "642",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "643",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "644",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "645",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "646",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "647",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "XCN0000",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    },
                    {
                      "$id": "648",
                      "$type": "UTS2._0.TestItem, UTS2.0",
                      "Name": "Read One Data",
                      "Command": "DLL",
                      "Subcommand": "Execute",
                      "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                      "Arguments": [
                        {
                          "$id": "649",
                          "ArgumentName": "Command",
                          "ArgumentValue": "3:Query"
                        },
                        {
                          "$id": "650",
                          "ArgumentName": "ComPort",
                          "ArgumentValue": "=var_Forcegauge_COM"
                        },
                        {
                          "$id": "651",
                          "ArgumentName": "Parameter",
                          "ArgumentValue": "256000;N;8;1"
                        },
                        {
                          "$id": "652",
                          "ArgumentName": "SendData",
                          "ArgumentValue": "D"
                        },
                        {
                          "$id": "653",
                          "ArgumentName": "EndChar",
                          "ArgumentValue": "0D"
                        },
                        {
                          "$id": "654",
                          "ArgumentName": "SendType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "655",
                          "ArgumentName": "ReadDelay",
                          "ArgumentValue": "200"
                        },
                        {
                          "$id": "656",
                          "ArgumentName": "ReturnLength",
                          "ArgumentValue": "100"
                        },
                        {
                          "$id": "657",
                          "ArgumentName": "ReturnType",
                          "ArgumentValue": "STR"
                        },
                        {
                          "$id": "658",
                          "ArgumentName": "TimeOut",
                          "ArgumentValue": "5000"
                        }
                      ],
                      "ResultVariables": [
                        {
                          "$id": "659",
                          "IsShowingInPis": true,
                          "PisIndex": 33,
                          "VariableName": "Forcegauge_response",
                          "Process": "",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-9DDB2"
                        },
                        {
                          "$id": "660",
                          "IsShowingInPis": true,
                          "PisIndex": 36,
                          "VariableName": "gf",
                          "Process": "=substr(var_Forcegauge_response,1:-4)",
                          "Min": "-0.3",
                          "Max": "+0.3",
                          "ErrorCode": "E-C65AA"
                        },
                        {
                          "$id": "661",
                          "IsShowingInPis": true,
                          "PisIndex": 37,
                          "VariableName": "unit",
                          "Process": "=substr(var_Forcegauge_response,-3:-1)",
                          "Min": "",
                          "Max": "",
                          "ErrorCode": "E-91DD2"
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
                        "$ref": "444"
                      },
                      "Section": 0
                    }
                  ],
                  "Label": "Force gague INI",
                  "Description": "",
                  "Status": 0,
                  "BackupStatus": 0,
                  "Parent": {
                    "$ref": "430"
                  },
                  "Section": 0
                }
              ],
              "Label": "Forcegauge Initial",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "662",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "663",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Initial DL11B-MC-D1 comport",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "664",
                      "ArgumentName": "Command",
                      "ArgumentValue": "1:AutoInitial"
                    },
                    {
                      "$id": "665",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "666",
                      "ArgumentName": "DTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "667",
                      "ArgumentName": "RTS",
                      "ArgumentValue": "1"
                    },
                    {
                      "$id": "668",
                      "ArgumentName": "QueryCommand",
                      "ArgumentValue": "01 04 04 00 00 01 30 FA"
                    },
                    {
                      "$id": "669",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "670",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "HEX"
                    },
                    {
                      "$id": "671",
                      "ArgumentName": "CheckResponse",
                      "ArgumentValue": "01 04 02"
                    },
                    {
                      "$id": "672",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "HEX"
                    },
                    {
                      "$id": "673",
                      "ArgumentName": "Delay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "674",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "675",
                      "IsShowingInPis": true,
                      "PisIndex": 38,
                      "VariableName": "temperature_COM",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-FA8FB"
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
                    "$ref": "662"
                  },
                  "Section": 0
                },
                {
                  "$id": "676",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Query_temperature",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "677",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "678",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_temperature_COM"
                    },
                    {
                      "$id": "679",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "680",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "01 04 04 00 00 01 30 FA"
                    },
                    {
                      "$id": "681",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "682",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "Hex"
                    },
                    {
                      "$id": "683",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "684",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "685",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "hex"
                    },
                    {
                      "$id": "686",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "687",
                      "IsShowingInPis": true,
                      "PisIndex": 39,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-56A09"
                    },
                    {
                      "$id": "688",
                      "IsShowingInPis": true,
                      "PisIndex": 40,
                      "VariableName": "temp_sign",
                      "Process": "=SubStr(var_temp_raw,7:8)",
                      "Min": "02",
                      "Max": "",
                      "ErrorCode": "E-9C49D"
                    },
                    {
                      "$id": "689",
                      "IsShowingInPis": true,
                      "PisIndex": 41,
                      "VariableName": "current_temp2",
                      "Process": "=Hex2Dec(SubStr(var_temp_raw,10,11,13,14))",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-93BD3"
                    },
                    {
                      "$id": "690",
                      "IsShowingInPis": true,
                      "PisIndex": 42,
                      "VariableName": "current_temp",
                      "Process": "=SubStr(var_current_temp2,1:2)+'.'+SubStr(var_current_temp2,3)",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CEC59"
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
                    "$ref": "662"
                  },
                  "Section": 0
                },
                {
                  "$id": "691",
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
                    "$ref": "662"
                  },
                  "Section": 0
                }
              ],
              "Label": "Temperature_DL",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "112"
              },
              "Section": 0
            },
            {
              "$id": "692",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "693",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "start_SCAN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "694",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "695",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "COM3"
                    },
                    {
                      "$id": "696",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "697",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "05 57 A0 01 01 FF 02"
                    },
                    {
                      "$id": "698",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "699",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "Hex"
                    },
                    {
                      "$id": "700",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "701",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "702",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "703",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "704",
                      "IsShowingInPis": true,
                      "PisIndex": 43,
                      "VariableName": "Scan_str",
                      "Process": "",
                      "Min": "FACTORY A#2000-01-01#A1-1#SpecialworkID#810-000000#A#8+9L#AD#72072@1",
                      "Max": "",
                      "ErrorCode": "E-0B203"
                    }
                  ],
                  "FailRetryEnabled": true,
                  "RetryCount": 50,
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
                    "$ref": "692"
                  },
                  "Section": 0
                },
                {
                  "$id": "705",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Stop_SCAN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "706",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "707",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "COM3"
                    },
                    {
                      "$id": "708",
                      "ArgumentName": "Parameter",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "709",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "05 57 A0 01 00 FF 03"
                    },
                    {
                      "$id": "710",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "711",
                      "ArgumentName": "SendType",
                      "ArgumentValue": "Hex"
                    },
                    {
                      "$id": "712",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "713",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "714",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "STR"
                    },
                    {
                      "$id": "715",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "50000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "716",
                      "IsShowingInPis": true,
                      "PisIndex": 39,
                      "VariableName": "temp_raw",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-56A09"
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
                    "$ref": "692"
                  },
                  "Section": 0
                }
              ],
              "Label": "A30_Scanner",
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
          "$id": "717",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "718",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Load UTS_SZTDE_MySQL.dll",
              "Command": "DLL",
              "Subcommand": "Load",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "719",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "720",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server IPAddress",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "721",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "722",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "723",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "724",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "IPAddress"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "725",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "726",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UserName",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "727",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "728",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "729",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "730",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "UserName"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "731",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "732",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server PassWord",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "733",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "734",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "735",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "736",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Password"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "737",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "738",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server Port",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "739",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "740",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "741",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "742",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Port"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "743",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "744",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server EIS DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "745",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "746",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "747",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "748",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "EISDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "749",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "750",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server UID DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "751",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "752",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "753",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "754",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "UIDDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "755",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "756",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Server MAC DataBase",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "757",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "758",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\MySQLConfig.inf'"
                },
                {
                  "$id": "759",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "MySQL"
                },
                {
                  "$id": "760",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "MACDataBase"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "761",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "762",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Define Server Connect Status & UseDataBase",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "763",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "Server_Status",
                  "Process": "0",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-579CD"
                },
                {
                  "$id": "764",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "765",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Initial JDM MySQL Server",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
              "Arguments": [
                {
                  "$id": "766",
                  "ArgumentName": "Command",
                  "ArgumentValue": "1:Login"
                },
                {
                  "$id": "767",
                  "ArgumentName": "IP",
                  "ArgumentValue": "=var_IPAddress"
                },
                {
                  "$id": "768",
                  "ArgumentName": "UserName",
                  "ArgumentValue": "=var_UserName"
                },
                {
                  "$id": "769",
                  "ArgumentName": "Password",
                  "ArgumentValue": "=var_Password"
                },
                {
                  "$id": "770",
                  "ArgumentName": "DataBase",
                  "ArgumentValue": "=var_UseDataBase"
                },
                {
                  "$id": "771",
                  "ArgumentName": "Port",
                  "ArgumentValue": "=var_Port"
                },
                {
                  "$id": "772",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "773",
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
                "$ref": "717"
              },
              "Section": 0
            },
            {
              "$id": "774",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check MySQL Runtime",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "775",
                  "ArgumentName": "Command",
                  "ArgumentValue": "2:Compare"
                },
                {
                  "$id": "776",
                  "ArgumentName": "String1",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "777",
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
                "$ref": "717"
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
      "$id": "778",
      "Name": "",
      "Children": [
        {
          "$id": "779",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "780",
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
                "$ref": "779"
              },
              "Section": 1
            },
            {
              "$id": "781",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Loop retry=0",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "782",
                  "IsShowingInPis": true,
                  "PisIndex": 44,
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
                "$ref": "779"
              },
              "Section": 1
            }
          ],
          "Label": "Initial Test loop",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "783",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "784",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Down",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "785",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "786",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "787",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "788",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39H"
                },
                {
                  "$id": "789",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "790",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "791",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "792",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "793",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "794",
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
                "$ref": "783"
              },
              "Section": 1
            }
          ],
          "Label": "Cycler Down",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "795",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "796",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "797",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "798",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "799",
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
                "$ref": "795"
              },
              "Section": 1
            },
            {
              "$id": "800",
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
                "$ref": "795"
              },
              "Section": 1
            }
          ],
          "Label": "Micpod DC48V",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "801",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "802",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE AC enable",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "803",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "804",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "805",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "806",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:AC ON"
                },
                {
                  "$id": "807",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "808",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "809",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "810",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "811",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "812",
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
                "$ref": "801"
              },
              "Section": 1
            },
            {
              "$id": "813",
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
                "$ref": "801"
              },
              "Section": 1
            },
            {
              "$id": "814",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Measure POE AC Current",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "815",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "816",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "817",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "818",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "MEA:AC POWER"
                },
                {
                  "$id": "819",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "820",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "821",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "822",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "823",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "824",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "poe_response",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-915A4"
                },
                {
                  "$id": "825",
                  "IsShowingInPis": true,
                  "PisIndex": 6,
                  "VariableName": "POE_AC_Vol",
                  "Process": "=substr(var_poe_response,1:5)",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-444D5"
                },
                {
                  "$id": "826",
                  "IsShowingInPis": true,
                  "PisIndex": 7,
                  "VariableName": "POE_AC_Current",
                  "Process": "=NumCal(substr(var_poe_response,8:12)*1000)",
                  "Min": "0",
                  "Max": "300",
                  "ErrorCode": "E-20A1E"
                },
                {
                  "$id": "827",
                  "IsShowingInPis": true,
                  "PisIndex": 45,
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
                "$ref": "801"
              },
              "Section": 1
            }
          ],
          "Label": "POE AC Power ON",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "828",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "829",
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
                "$ref": "828"
              },
              "Section": 1
            }
          ],
          "Label": "Check ADB Device",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "830",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "831",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB root",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "832",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "833",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb root"
                },
                {
                  "$id": "834",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "835",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "836",
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
                "$ref": "830"
              },
              "Section": 1
            }
          ],
          "Label": "Device root",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "837",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "838",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read UID from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "839",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "840",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_uid"
                },
                {
                  "$id": "841",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "842",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "uid=;Error Message=;API status="
                },
                {
                  "$id": "843",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "844",
                  "IsShowingInPis": true,
                  "PisIndex": 46,
                  "VariableName": "UID",
                  "Process": "",
                  "Min": "XXXXXXXXXXXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-C270F"
                },
                {
                  "$id": "845",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "846",
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
                "$ref": "837"
              },
              "Section": 1
            },
            {
              "$id": "847",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "848",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run Bat Get 3bit random UID",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "849",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "850",
                      "ArgumentName": "Command",
                      "ArgumentValue": "RandomUID.bat"
                    },
                    {
                      "$id": "851",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "852",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "UID="
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
                      "PisIndex": 47,
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
                    "$ref": "847"
                  },
                  "Section": 1
                },
                {
                  "$id": "855",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Generate UID",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "856",
                      "IsShowingInPis": true,
                      "PisIndex": 46,
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
                    "$ref": "847"
                  },
                  "Section": 1
                },
                {
                  "$id": "857",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write UID to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "858",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "859",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_uid '+var_UID"
                    },
                    {
                      "$id": "860",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "861",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "862",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "863",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "864",
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
                    "$ref": "847"
                  },
                  "Section": 1
                },
                {
                  "$id": "865",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "866",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "867",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "868",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "869",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "870",
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
                    "$ref": "847"
                  },
                  "Section": 1
                },
                {
                  "$id": "871",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read UID from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "872",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "873",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_uid"
                    },
                    {
                      "$id": "874",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "875",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "uid=;Error Message=;API status="
                    },
                    {
                      "$id": "876",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "877",
                      "IsShowingInPis": true,
                      "PisIndex": 46,
                      "VariableName": "UID",
                      "Process": "",
                      "Min": "XXXXXXXXXXXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-C270F"
                    },
                    {
                      "$id": "878",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "879",
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
                    "$ref": "847"
                  },
                  "Section": 1
                }
              ],
              "Label": "Generate UID",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "837"
              },
              "Section": 1
            },
            {
              "$id": "880",
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
                "$ref": "837"
              },
              "Section": 1
            }
          ],
          "Label": "UID Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "881",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "882",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Pre-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "883",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "884",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_pre_station"
                },
                {
                  "$id": "885",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "886",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_pre_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "887",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "888",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "pre_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-307AC"
                },
                {
                  "$id": "889",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "890",
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
                "$ref": "881"
              },
              "Section": 1
            }
          ],
          "Label": "Check Pre-Station PassFlag Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "891",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "892",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to FAIL",
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
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_fail"
                },
                {
                  "$id": "895",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "896",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
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
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "899",
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
                "$ref": "891"
              },
              "Section": 1
            },
            {
              "$id": "900",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "901",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "902",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "903",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "904",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "905",
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
                "$ref": "891"
              },
              "Section": 1
            },
            {
              "$id": "906",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "907",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "908",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "909",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "910",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "911",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "912",
                  "IsShowingInPis": true,
                  "PisIndex": 48,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "FAIL",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "913",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "914",
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
                "$ref": "891"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Fail",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "915",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "916",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device Setting Version",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_INF.dll",
              "Arguments": [
                {
                  "$id": "917",
                  "ArgumentName": "Command",
                  "ArgumentValue": "13:ReadString"
                },
                {
                  "$id": "918",
                  "ArgumentName": "FileName",
                  "ArgumentValue": "=$testplanpath + '\\\\StationSetting.inf'"
                },
                {
                  "$id": "919",
                  "ArgumentName": "SectionName",
                  "ArgumentValue": "Device"
                },
                {
                  "$id": "920",
                  "ArgumentName": "Iden",
                  "ArgumentValue": "Version"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "921",
                  "IsShowingInPis": true,
                  "PisIndex": 49,
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "922",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Version Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "923",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "924",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell versions"
                },
                {
                  "$id": "925",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "926",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "model=;software version=;Error Message=;API status="
                },
                {
                  "$id": "927",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "928",
                  "IsShowingInPis": true,
                  "PisIndex": 50,
                  "VariableName": "devModel",
                  "Process": "",
                  "Min": "Sentinel",
                  "Max": "",
                  "ErrorCode": "E-77190"
                },
                {
                  "$id": "929",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "swVersion",
                  "Process": "",
                  "Min": "=var_Dev_Ver",
                  "Max": "",
                  "ErrorCode": "E-42F89"
                },
                {
                  "$id": "930",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "931",
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "932",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device sensor ID Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "933",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "934",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sensor ID"
                },
                {
                  "$id": "935",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "936",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "MAIN sensor ID=;SUB sensor ID=;Error Message=;API status="
                },
                {
                  "$id": "937",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "938",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "main_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-F22B4"
                },
                {
                  "$id": "939",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "sub_sensorid",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-D16C2"
                },
                {
                  "$id": "940",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "941",
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "942",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device CPU temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "943",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "944",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_cpu_temp"
                },
                {
                  "$id": "945",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "946",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "cpu_big1=;Error Message=;API status="
                },
                {
                  "$id": "947",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "948",
                  "IsShowingInPis": true,
                  "PisIndex": 51,
                  "VariableName": "dev_CPU_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-3A766"
                },
                {
                  "$id": "949",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "950",
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "951",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device NTC temp Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "952",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "953",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_NTC_temp"
                },
                {
                  "$id": "954",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "955",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "temp1=;Error Message=;API status="
                },
                {
                  "$id": "956",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "957",
                  "IsShowingInPis": true,
                  "PisIndex": 52,
                  "VariableName": "dev_NTC_temp",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-EA589"
                },
                {
                  "$id": "958",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "959",
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "960",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DRAM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "961",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "962",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell dram_info"
                },
                {
                  "$id": "963",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "964",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
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
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "967",
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
                "$ref": "915"
              },
              "Section": 1
            },
            {
              "$id": "968",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device DROM Test",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "969",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "970",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell drom_info"
                },
                {
                  "$id": "971",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "972",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "973",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "974",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "975",
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
                "$ref": "915"
              },
              "Section": 1
            }
          ],
          "Label": "Device information Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "976",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "977",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Write Product Name to device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "978",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "979",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_product_name '+var_project_name"
                },
                {
                  "$id": "980",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "981",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "982",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "983",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "984",
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
                "$ref": "976"
              },
              "Section": 1
            },
            {
              "$id": "985",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "986",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "987",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "988",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "989",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "990",
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
                "$ref": "976"
              },
              "Section": 1
            },
            {
              "$id": "991",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Product Name from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "992",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "993",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_product_name"
                },
                {
                  "$id": "994",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "995",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Product name=;Error Message=;API status="
                },
                {
                  "$id": "996",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "997",
                  "IsShowingInPis": true,
                  "PisIndex": 53,
                  "VariableName": "dev_product_name",
                  "Process": "",
                  "Min": "=var_project_name",
                  "Max": "",
                  "ErrorCode": "E-9C73A"
                },
                {
                  "$id": "998",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "999",
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
                "$ref": "976"
              },
              "Section": 1
            }
          ],
          "Label": "Product Name Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1000",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1001",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read 8LSN from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1002",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1003",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_sn"
                },
                {
                  "$id": "1004",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1005",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "sn=;Error Message=;API status="
                },
                {
                  "$id": "1006",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1007",
                  "IsShowingInPis": true,
                  "PisIndex": 0,
                  "VariableName": "8L_SN",
                  "Process": "",
                  "Min": "XXXXLZXXXXX8",
                  "Max": "",
                  "ErrorCode": "E-55614"
                },
                {
                  "$id": "1008",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "1009",
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
                "$ref": "1000"
              },
              "Section": 1
            },
            {
              "$id": "1010",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1011",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Key IN 8L SN",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_KeyIn.dll",
                  "Arguments": [
                    {
                      "$id": "1012",
                      "ArgumentName": "",
                      "ArgumentValue": "04:auto return"
                    },
                    {
                      "$id": "1013",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1014",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number"
                    },
                    {
                      "$id": "1015",
                      "ArgumentName": "",
                      "ArgumentValue": "20"
                    },
                    {
                      "$id": "1016",
                      "ArgumentName": "",
                      "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                    },
                    {
                      "$id": "1017",
                      "ArgumentName": "",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1018",
                      "ArgumentName": "",
                      "ArgumentValue": "1:12"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1019",
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
                    "$ref": "1010"
                  },
                  "Section": 1
                },
                {
                  "$id": "1020",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "show-8L",
                  "Command": "Show Text",
                  "Subcommand": "",
                  "CommandParameters": "=var_scan_8LSN\r\n",
                  "Arguments": [
                    {
                      "$id": "1021",
                      "ArgumentName": "",
                      "ArgumentValue": "0xFF0000"
                    },
                    {
                      "$id": "1022",
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
                    "$ref": "1010"
                  },
                  "Section": 1
                },
                {
                  "$id": "1023",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write 8LSN to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1024",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1025",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell set_sn '+var_scan_8LSN"
                    },
                    {
                      "$id": "1026",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1027",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "1028",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1029",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "1030",
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
                    "$ref": "1010"
                  },
                  "Section": 1
                },
                {
                  "$id": "1031",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1032",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1033",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "1034",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1035",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1036",
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
                    "$ref": "1010"
                  },
                  "Section": 1
                },
                {
                  "$id": "1037",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read 8LSN from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1038",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1039",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell get_sn"
                    },
                    {
                      "$id": "1040",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1041",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "sn=;Error Message=;API status="
                    },
                    {
                      "$id": "1042",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1043",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "8L_SN",
                      "Process": "",
                      "Min": "XXXXLZXXXXX8",
                      "Max": "",
                      "ErrorCode": "E-55614"
                    },
                    {
                      "$id": "1044",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "1045",
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
                    "$ref": "1010"
                  },
                  "Section": 1
                }
              ],
              "Label": "Call Key IN 8L SN",
              "Description": "",
              "Status": 1,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1000"
              },
              "Section": 1
            },
            {
              "$id": "1046",
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
                "$ref": "1000"
              },
              "Section": 1
            }
          ],
          "Label": "8LSN Test",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1047",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1048",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "ZYNQ Version Check",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1049",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1050",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell audio getfwver"
                },
                {
                  "$id": "1051",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1052",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "result=;Error Message=;API status="
                },
                {
                  "$id": "1053",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1054",
                  "IsShowingInPis": true,
                  "PisIndex": 54,
                  "VariableName": "audioVersion",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-93272"
                },
                {
                  "$id": "1055",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "1056",
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
                "$ref": "1047"
              },
              "Section": 1
            }
          ],
          "Label": "Audio board version check",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1057",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1058",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1059",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Define Server UseDataBase & AssignData & AssignTable & TableFunction",
                  "Command": "Variable Assign",
                  "Subcommand": "",
                  "CommandParameters": "",
                  "Arguments": [],
                  "ResultVariables": [
                    {
                      "$id": "1060",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "UseDataBase",
                      "Process": "=var_MACDataBase",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-06A5A"
                    },
                    {
                      "$id": "1061",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "AssignData",
                      "Process": "-",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-6613F"
                    },
                    {
                      "$id": "1062",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "TableFunctionStr",
                      "Process": "mac",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-F8C27"
                    },
                    {
                      "$id": "1063",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                },
                {
                  "$id": "1064",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                },
                {
                  "$id": "1065",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Write Mac to device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1066",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1067",
                      "ArgumentName": "Command",
                      "ArgumentValue": "='adb shell ethernet setmacaddr '+var_AssignData"
                    },
                    {
                      "$id": "1068",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1069",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "Error Message=;API status="
                    },
                    {
                      "$id": "1070",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1071",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "1072",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                },
                {
                  "$id": "1073",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Run ADB sync",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1074",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1075",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell sync"
                    },
                    {
                      "$id": "1076",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1077",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1078",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                },
                {
                  "$id": "1079",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Read Mac from device",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1080",
                      "ArgumentName": "Cmd",
                      "ArgumentValue": "RunCMD"
                    },
                    {
                      "$id": "1081",
                      "ArgumentName": "Command",
                      "ArgumentValue": "adb shell ethernet getmacaddr"
                    },
                    {
                      "$id": "1082",
                      "ArgumentName": "EndString",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1083",
                      "ArgumentName": "ResultString",
                      "ArgumentValue": "MAC address=;Error Message=;API status="
                    },
                    {
                      "$id": "1084",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1085",
                      "IsShowingInPis": true,
                      "PisIndex": 0,
                      "VariableName": "dev_eth_mac",
                      "Process": "",
                      "Min": "=var_AssignData",
                      "Max": "",
                      "ErrorCode": "E-5A322"
                    },
                    {
                      "$id": "1086",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "retError",
                      "Process": "",
                      "Min": "Non",
                      "Max": "",
                      "ErrorCode": "E-D9E3C"
                    },
                    {
                      "$id": "1087",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                },
                {
                  "$id": "1088",
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
                    "$ref": "1058"
                  },
                  "Section": 1
                }
              ],
              "Label": "Server Assign Mac",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "1057"
              },
              "Section": 1
            },
            {
              "$id": "1089",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Read Device IP address from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1090",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1091",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell get_ethernetaddr"
                },
                {
                  "$id": "1092",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1093",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "IP address=;Error Message=;API status="
                },
                {
                  "$id": "1094",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1095",
                  "IsShowingInPis": true,
                  "PisIndex": 55,
                  "VariableName": "dev_ip",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-374E6"
                },
                {
                  "$id": "1096",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "1097",
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
                "$ref": "1057"
              },
              "Section": 1
            },
            {
              "$id": "1098",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Device Ethernet Ping ip address",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1099",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1100",
                  "ArgumentName": "ADBCommand",
                  "ArgumentValue": "adb shell ping -c 3 192.168.50.1"
                },
                {
                  "$id": "1101",
                  "ArgumentName": "EndString",
                  "ArgumentValue": "3 received"
                },
                {
                  "$id": "1102",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1103",
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
                "$ref": "1057"
              },
              "Section": 1
            }
          ],
          "Label": "Ethernet Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1104",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1105",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1106",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1107",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1108",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1109",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "1110",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1111",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1112",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1113",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1114",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Micpod LTDM Initial",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1115",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMDR"
                },
                {
                  "$id": "1116",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell /vendor/bin/audiocore /vendor/etc/sentinel.ini &"
                },
                {
                  "$id": "1117",
                  "ArgumentName": "Delay",
                  "ArgumentValue": "35000"
                },
                {
                  "$id": "1118",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1119",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1120",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Micpod device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1121",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1122",
                  "ArgumentName": "Command",
                  "ArgumentValue": "tdebt.exe -c micpod -g micpod_button_status"
                },
                {
                  "$id": "1123",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1124",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1125",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "10000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1126",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1127",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1128",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1129",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1130",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1131",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1132",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1133",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1134",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1135",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1136",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1137",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1138",
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
                    "$ref": "1127"
                  },
                  "Section": 1
                }
              ],
              "Label": "Micpod 48V Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1139",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Confirm LTDM Result",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS_SZTDE_Info.dll'",
              "Arguments": [
                {
                  "$id": "1140",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "13:ShowDialog"
                },
                {
                  "$id": "1141",
                  "ArgumentName": "FilePath",
                  "ArgumentValue": "=$testplanpath + 'MicpodTest.jpg'"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1142",
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
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1143",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1144",
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
                    "$ref": "1143"
                  },
                  "Section": 1
                },
                {
                  "$id": "1145",
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
                    "$ref": "1143"
                  },
                  "Section": 1
                },
                {
                  "$id": "1146",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1147",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1148",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1149",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1150",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1151",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1152",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1153",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1154",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1155",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1156",
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
                    "$ref": "1143"
                  },
                  "Section": 1
                }
              ],
              "Label": "Wrong POE Test",
              "Description": "",
              "Status": 1,
              "BackupStatus": 1,
              "Parent": {
                "$ref": "1104"
              },
              "Section": 1
            },
            {
              "$id": "1157",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Kill auidocore",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1158",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1159",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell killall audiocore"
                },
                {
                  "$id": "1160",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1161",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1162",
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
                "$ref": "1104"
              },
              "Section": 1
            }
          ],
          "Label": "LTDM Test-Mute Function",
          "Description": "",
          "Status": 1,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1163",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1164",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "VCC 5V0 chcek",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "1165",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "1166",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "1167",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "1168",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "PA0"
                },
                {
                  "$id": "1169",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "1170",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "1171",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "1172",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1173",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1174",
                  "IsShowingInPis": true,
                  "PisIndex": 56,
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
                "$ref": "1163"
              },
              "Section": 1
            }
          ],
          "Label": "TP67 VCC 5V0",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1175",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1176",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1177",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "1178",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "1179",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "1180",
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
                    "$ref": "1176"
                  },
                  "Section": 1
                },
                {
                  "$id": "1181",
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
                    "$ref": "1176"
                  },
                  "Section": 1
                },
                {
                  "$id": "1182",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1183",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1184",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1185",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1186",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1187",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1188",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1189",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1190",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1191",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1192",
                      "IsShowingInPis": true,
                      "PisIndex": 57,
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
                    "$ref": "1176"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 0V Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1175"
              },
              "Section": 1
            },
            {
              "$id": "1193",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1194",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=1V74",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "1195",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "1196",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "1197",
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
                    "$ref": "1193"
                  },
                  "Section": 1
                },
                {
                  "$id": "1198",
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
                    "$ref": "1193"
                  },
                  "Section": 1
                },
                {
                  "$id": "1199",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 1V74-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1200",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1201",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1202",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1203",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1204",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1205",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1206",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1207",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1208",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1209",
                      "IsShowingInPis": true,
                      "PisIndex": 58,
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
                    "$ref": "1193"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 1V74 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1175"
              },
              "Section": 1
            },
            {
              "$id": "1210",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1211",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V6",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "1212",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "1213",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "1214",
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
                    "$ref": "1210"
                  },
                  "Section": 1
                },
                {
                  "$id": "1215",
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
                    "$ref": "1210"
                  },
                  "Section": 1
                },
                {
                  "$id": "1216",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V6-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1217",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1218",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1219",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1220",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1221",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1222",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1223",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1224",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1225",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1226",
                      "IsShowingInPis": true,
                      "PisIndex": 59,
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
                    "$ref": "1210"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V6 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1175"
              },
              "Section": 1
            },
            {
              "$id": "1227",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1228",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=22V8",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "1229",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "1230",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "1231",
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
                    "$ref": "1227"
                  },
                  "Section": 1
                },
                {
                  "$id": "1232",
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
                    "$ref": "1227"
                  },
                  "Section": 1
                },
                {
                  "$id": "1233",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 22V8-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1234",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1235",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1236",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1237",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1238",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1239",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1240",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1241",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1242",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1243",
                      "IsShowingInPis": true,
                      "PisIndex": 60,
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
                    "$ref": "1227"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 22V8 Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1175"
              },
              "Section": 1
            },
            {
              "$id": "1244",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1245",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Reset 3634A=0V",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "UTS2_VISA_cs.dll",
                  "Arguments": [
                    {
                      "$id": "1246",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Write"
                    },
                    {
                      "$id": "1247",
                      "ArgumentName": "NickName",
                      "ArgumentValue": "KY3634"
                    },
                    {
                      "$id": "1248",
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
                    "$ref": "1244"
                  },
                  "Section": 1
                },
                {
                  "$id": "1249",
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
                    "$ref": "1244"
                  },
                  "Section": 1
                },
                {
                  "$id": "1250",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "TP97 0V-48V chcek",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
                  "Arguments": [
                    {
                      "$id": "1251",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Query"
                    },
                    {
                      "$id": "1252",
                      "ArgumentName": "ComPort",
                      "ArgumentValue": "=var_ACON_COM"
                    },
                    {
                      "$id": "1253",
                      "ArgumentName": "",
                      "ArgumentValue": "9600;N;8;1"
                    },
                    {
                      "$id": "1254",
                      "ArgumentName": "SendData",
                      "ArgumentValue": "PA14"
                    },
                    {
                      "$id": "1255",
                      "ArgumentName": "ReadDelay",
                      "ArgumentValue": "200"
                    },
                    {
                      "$id": "1256",
                      "ArgumentName": "ReturnLength",
                      "ArgumentValue": "100"
                    },
                    {
                      "$id": "1257",
                      "ArgumentName": "ReturnType",
                      "ArgumentValue": "str"
                    },
                    {
                      "$id": "1258",
                      "ArgumentName": "EndChar",
                      "ArgumentValue": ""
                    },
                    {
                      "$id": "1259",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5000"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1260",
                      "IsShowingInPis": true,
                      "PisIndex": 61,
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
                    "$ref": "1244"
                  },
                  "Section": 1
                }
              ],
              "Label": "NODE1 OFF Test",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1175"
              },
              "Section": 1
            },
            {
              "$id": "1261",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Reset 3634A=0V 3A",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_VISA_cs.dll",
              "Arguments": [
                {
                  "$id": "1262",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Write"
                },
                {
                  "$id": "1263",
                  "ArgumentName": "NickName",
                  "ArgumentValue": "KY3634"
                },
                {
                  "$id": "1264",
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
                "$ref": "1175"
              },
              "Section": 1
            }
          ],
          "Label": "TP97 Test",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
          },
          "Section": 1
        },
        {
          "$id": "1265",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1266",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set Cur-station PassFlag to PASS",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1267",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1268",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell set_passflag '+var_cur_station+'='+var_result_pass"
                },
                {
                  "$id": "1269",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1270",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "Error Message=;API status="
                },
                {
                  "$id": "1271",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1272",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "1273",
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
                "$ref": "1265"
              },
              "Section": 1
            },
            {
              "$id": "1274",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB sync",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1275",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1276",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb shell sync"
                },
                {
                  "$id": "1277",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1278",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1279",
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
                "$ref": "1265"
              },
              "Section": 1
            },
            {
              "$id": "1280",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Check Cur-station PassFlag from device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1281",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1282",
                  "ArgumentName": "Command",
                  "ArgumentValue": "='adb shell get_passflag '+var_cur_station"
                },
                {
                  "$id": "1283",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1284",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": "=var_cur_station+'=;Error Message=;API status='"
                },
                {
                  "$id": "1285",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1286",
                  "IsShowingInPis": true,
                  "PisIndex": 48,
                  "VariableName": "cur_result",
                  "Process": "",
                  "Min": "PASS",
                  "Max": "",
                  "ErrorCode": "E-458A3"
                },
                {
                  "$id": "1287",
                  "IsShowingInPis": false,
                  "PisIndex": 0,
                  "VariableName": "retError",
                  "Process": "",
                  "Min": "Non",
                  "Max": "",
                  "ErrorCode": "E-D9E3C"
                },
                {
                  "$id": "1288",
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
                "$ref": "1265"
              },
              "Section": 1
            }
          ],
          "Label": "Set Cur-Station PassFlag to Pass",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "778"
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
      "$id": "1289",
      "Name": "",
      "Children": [
        {
          "$id": "1290",
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
            "$ref": "1289"
          },
          "Section": 2
        },
        {
          "$id": "1291",
          "$type": "UTS2._0.TestItem, UTS2.0",
          "Name": "Reset 3634A=0V 3A",
          "Command": "DLL",
          "Subcommand": "Execute",
          "CommandParameters": "UTS2_VISA_cs.dll",
          "Arguments": [
            {
              "$id": "1292",
              "ArgumentName": "Command",
              "ArgumentValue": "3:Write"
            },
            {
              "$id": "1293",
              "ArgumentName": "NickName",
              "ArgumentValue": "KY3634"
            },
            {
              "$id": "1294",
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
            "$ref": "1289"
          },
          "Section": 2
        },
        {
          "$id": "1295",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1296",
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
                "$ref": "1295"
              },
              "Section": 2
            },
            {
              "$id": "1297",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Set POE Power Off",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "1298",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "1299",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_POE_COM"
                },
                {
                  "$id": "1300",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "1301",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "SET:POWER OFF"
                },
                {
                  "$id": "1302",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "1303",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "1304",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "1305",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": "0D 0D"
                },
                {
                  "$id": "1306",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1307",
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
                "$ref": "1295"
              },
              "Section": 2
            }
          ],
          "Label": "POE Power OFF",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "1289"
          },
          "Section": 2
        },
        {
          "$id": "1308",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1309",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Cycler Up",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanPath+'UTS2_SZTDE_COM_cs.dll'",
              "Arguments": [
                {
                  "$id": "1310",
                  "ArgumentName": "Command",
                  "ArgumentValue": "3:Query"
                },
                {
                  "$id": "1311",
                  "ArgumentName": "ComPort",
                  "ArgumentValue": "=var_ACON_COM"
                },
                {
                  "$id": "1312",
                  "ArgumentName": "",
                  "ArgumentValue": "9600;N;8;1"
                },
                {
                  "$id": "1313",
                  "ArgumentName": "SendData",
                  "ArgumentValue": "P39L"
                },
                {
                  "$id": "1314",
                  "ArgumentName": "ReadDelay",
                  "ArgumentValue": "200"
                },
                {
                  "$id": "1315",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "100"
                },
                {
                  "$id": "1316",
                  "ArgumentName": "ReturnType",
                  "ArgumentValue": "str"
                },
                {
                  "$id": "1317",
                  "ArgumentName": "EndChar",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1318",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "5000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1319",
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
                "$ref": "1308"
              },
              "Section": 2
            },
            {
              "$id": "1320",
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
                "$ref": "1308"
              },
              "Section": 2
            }
          ],
          "Label": "Cycler UP",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "1289"
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
      "$id": "1321",
      "Name": "",
      "Children": [
        {
          "$id": "1322",
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
            "$ref": "1321"
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
      "$id": "1323",
      "Name": "",
      "Children": [
        {
          "$id": "1324",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1325",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Key IN 8L SN",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "UTS2_KeyIn.dll",
              "Arguments": [
                {
                  "$id": "1326",
                  "ArgumentName": "",
                  "ArgumentValue": "04:auto return"
                },
                {
                  "$id": "1327",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1328",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number"
                },
                {
                  "$id": "1329",
                  "ArgumentName": "",
                  "ArgumentValue": "20"
                },
                {
                  "$id": "1330",
                  "ArgumentName": "",
                  "ArgumentValue": "Key IN 8L Part number(XXXXLZXXXXX8)"
                },
                {
                  "$id": "1331",
                  "ArgumentName": "",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1332",
                  "ArgumentName": "",
                  "ArgumentValue": "1:12"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1333",
                  "IsShowingInPis": true,
                  "PisIndex": 62,
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
                "$ref": "1324"
              },
              "Section": 4
            },
            {
              "$id": "1334",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "show-8L",
              "Command": "Show Text",
              "Subcommand": "",
              "CommandParameters": "=var_scan_8LSN\r\n",
              "Arguments": [
                {
                  "$id": "1335",
                  "ArgumentName": "",
                  "ArgumentValue": "0xFF0000"
                },
                {
                  "$id": "1336",
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
                "$ref": "1324"
              },
              "Section": 4
            },
            {
              "$id": "1337",
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
                "$ref": "1324"
              },
              "Section": 4
            }
          ],
          "Label": "Key IN 8L SN",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "1323"
          },
          "Section": 4
        },
        {
          "$id": "1338",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1339",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find Device loop ++",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "1340",
                  "IsShowingInPis": true,
                  "PisIndex": 44,
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
                "$ref": "1338"
              },
              "Section": 4
            },
            {
              "$id": "1341",
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
                "$ref": "1338"
              },
              "Section": 4
            },
            {
              "$id": "1342",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Run ADB devices",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_CMD_cs.dll'",
              "Arguments": [
                {
                  "$id": "1343",
                  "ArgumentName": "Cmd",
                  "ArgumentValue": "RunCMD"
                },
                {
                  "$id": "1344",
                  "ArgumentName": "Command",
                  "ArgumentValue": "adb devices"
                },
                {
                  "$id": "1345",
                  "ArgumentName": "EndString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1346",
                  "ArgumentName": "ResultString",
                  "ArgumentValue": ""
                },
                {
                  "$id": "1347",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "20000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "1348",
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
                "$ref": "1338"
              },
              "Section": 4
            },
            {
              "$id": "1349",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "cmdretstr > 30 digits?(Not find device Fail)",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "1350",
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
                "$ref": "1338"
              },
              "Section": 4
            },
            {
              "$id": "1351",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Get cmd device original SN",
              "Command": "Variable Assign",
              "Subcommand": "",
              "CommandParameters": "",
              "Arguments": [],
              "ResultVariables": [
                {
                  "$id": "1352",
                  "IsShowingInPis": true,
                  "PisIndex": 63,
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
                "$ref": "1338"
              },
              "Section": 4
            },
            {
              "$id": "1353",
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
                "$ref": "1338"
              },
              "Section": 4
            }
          ],
          "Label": "Find ADB Devices",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "1323"
          },
          "Section": 4
        },
        {
          "$id": "1354",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "1355",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1356",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1357",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "1358",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1359",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1360",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1361",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1362",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1363",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1364",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1365",
                      "IsShowingInPis": true,
                      "PisIndex": 64,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1366",
                      "IsShowingInPis": true,
                      "PisIndex": 65,
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
                    "$ref": "1355"
                  },
                  "Section": 4
                },
                {
                  "$id": "1367",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Assign Data From Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1368",
                      "ArgumentName": "Command",
                      "ArgumentValue": "18:NewAssignAddress"
                    },
                    {
                      "$id": "1369",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1370",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1371",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1372",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1373",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1374",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1375",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1376",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "status;used"
                    },
                    {
                      "$id": "1377",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "0;0"
                    },
                    {
                      "$id": "1378",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "status;pc;statusTime"
                    },
                    {
                      "$id": "1379",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+$mac_address+';'+var_ServerTime"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1380",
                      "IsShowingInPis": true,
                      "PisIndex": 66,
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
                    "$ref": "1355"
                  },
                  "Section": 4
                },
                {
                  "$id": "1381",
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
                    "$ref": "1355"
                  },
                  "Section": 4
                },
                {
                  "$id": "1382",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Status == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1383",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1384",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1385",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1386",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1387",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1388",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1389",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1390",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1391",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1392",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1393",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "status"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1394",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1395",
                      "IsShowingInPis": true,
                      "PisIndex": 67,
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
                    "$ref": "1355"
                  },
                  "Section": 4
                },
                {
                  "$id": "1396",
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
                    "$ref": "1355"
                  },
                  "Section": 4
                }
              ],
              "Label": "Assign Data & Change status to 1",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1354"
              },
              "Section": 4
            },
            {
              "$id": "1397",
              "$type": "UTS2._0.TestGroup, UTS2.0",
              "Name": "",
              "Children": [
                {
                  "$id": "1398",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Get Server Time & Set Local Time",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1399",
                      "ArgumentName": "Command",
                      "ArgumentValue": "6:Time"
                    },
                    {
                      "$id": "1400",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1401",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1402",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1403",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1404",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1405",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1406",
                      "ArgumentName": "EnableLocalTime",
                      "ArgumentValue": "0"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1407",
                      "IsShowingInPis": true,
                      "PisIndex": 64,
                      "VariableName": "ServerTime",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-68A85"
                    },
                    {
                      "$id": "1408",
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
                    "$ref": "1397"
                  },
                  "Section": 4
                },
                {
                  "$id": "1409",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Update used = 1 to Server",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1410",
                      "ArgumentName": "Command",
                      "ArgumentValue": "3:Update"
                    },
                    {
                      "$id": "1411",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1412",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1413",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1414",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1415",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1416",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1417",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1418",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1419",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1420",
                      "ArgumentName": "FieldName",
                      "ArgumentValue": "used;usedTime;product"
                    },
                    {
                      "$id": "1421",
                      "ArgumentName": "FieldValue",
                      "ArgumentValue": "='1;'+var_ServerTime+';'+var_product_name"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1422",
                      "IsShowingInPis": true,
                      "PisIndex": 68,
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
                    "$ref": "1397"
                  },
                  "Section": 4
                },
                {
                  "$id": "1423",
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
                    "$ref": "1397"
                  },
                  "Section": 4
                },
                {
                  "$id": "1424",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Check Used == 1 ?",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1425",
                      "ArgumentName": "Command",
                      "ArgumentValue": "4:Query"
                    },
                    {
                      "$id": "1426",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1427",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1428",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1429",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1430",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1431",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1432",
                      "ArgumentName": "TableName",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1433",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1434",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1435",
                      "ArgumentName": "TestCase",
                      "ArgumentValue": "used"
                    }
                  ],
                  "ResultVariables": [
                    {
                      "$id": "1436",
                      "IsShowingInPis": false,
                      "PisIndex": 0,
                      "VariableName": "ServerResult",
                      "Process": "",
                      "Min": "",
                      "Max": "",
                      "ErrorCode": "E-CBD46"
                    },
                    {
                      "$id": "1437",
                      "IsShowingInPis": true,
                      "PisIndex": 69,
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
                    "$ref": "1397"
                  },
                  "Section": 4
                },
                {
                  "$id": "1438",
                  "$type": "UTS2._0.TestItem, UTS2.0",
                  "Name": "Move Data to Used Table",
                  "Command": "DLL",
                  "Subcommand": "Execute",
                  "CommandParameters": "=$testplanpath + 'UTS_SZTDE_MySQL.dll'",
                  "Arguments": [
                    {
                      "$id": "1439",
                      "ArgumentName": "Command",
                      "ArgumentValue": "7:Move"
                    },
                    {
                      "$id": "1440",
                      "ArgumentName": "IP",
                      "ArgumentValue": "=var_IPAddress"
                    },
                    {
                      "$id": "1441",
                      "ArgumentName": "UserName",
                      "ArgumentValue": "=var_UserName"
                    },
                    {
                      "$id": "1442",
                      "ArgumentName": "Password",
                      "ArgumentValue": "=var_Password"
                    },
                    {
                      "$id": "1443",
                      "ArgumentName": "DataBase",
                      "ArgumentValue": "=var_UseDataBase"
                    },
                    {
                      "$id": "1444",
                      "ArgumentName": "Port",
                      "ArgumentValue": "=var_Port"
                    },
                    {
                      "$id": "1445",
                      "ArgumentName": "TimeOut",
                      "ArgumentValue": "5"
                    },
                    {
                      "$id": "1446",
                      "ArgumentName": "OriginalTable",
                      "ArgumentValue": "=var_TableFunctionStr+'_address'"
                    },
                    {
                      "$id": "1447",
                      "ArgumentName": "IndexName",
                      "ArgumentValue": "=var_TableIndexStr+'address'"
                    },
                    {
                      "$id": "1448",
                      "ArgumentName": "IndexValue",
                      "ArgumentValue": "=var_AssignData"
                    },
                    {
                      "$id": "1449",
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
                    "$ref": "1397"
                  },
                  "Section": 4
                },
                {
                  "$id": "1450",
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
                    "$ref": "1397"
                  },
                  "Section": 4
                }
              ],
              "Label": "Change Used to 1 & Move Data to Used",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "1354"
              },
              "Section": 4
            }
          ],
          "Label": "Assign Data Process",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "1323"
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