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
              "ArgumentValue": "A"
            },
            {
              "$id": "5",
              "ArgumentName": "",
              "ArgumentValue": "aS"
            },
            {
              "$id": "6",
              "ArgumentName": "",
              "ArgumentValue": "sd"
            },
            {
              "$id": "7",
              "ArgumentName": "",
              "ArgumentValue": "d"
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
          "Name": "Load UTS2_SZTDE_HID.dll",
          "Command": "DLL",
          "Subcommand": "Load",
          "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_HID_cs.dll'",
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
      "$id": "9",
      "Name": "",
      "Children": [
        {
          "$id": "10",
          "$type": "UTS2._0.TestGroup, UTS2.0",
          "Name": "",
          "Children": [
            {
              "$id": "11",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Find Device",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_HID_cs.dll'",
              "Arguments": [
                {
                  "$id": "12",
                  "ArgumentName": "Command",
                  "ArgumentValue": "FindDevice"
                },
                {
                  "$id": "13",
                  "ArgumentName": "VID",
                  "ArgumentValue": "046D"
                },
                {
                  "$id": "14",
                  "ArgumentName": "PID",
                  "ArgumentValue": "D102"
                },
                {
                  "$id": "15",
                  "ArgumentName": "UsagePage",
                  "ArgumentValue": "FF00"
                },
                {
                  "$id": "16",
                  "ArgumentName": "Usage",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "17",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "50"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "18",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "devicecount",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-ABE89"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "10"
              },
              "Section": 1
            },
            {
              "$id": "19",
              "$type": "UTS2._0.TestItem, UTS2.0",
              "Name": "Query device Data",
              "Command": "DLL",
              "Subcommand": "Execute",
              "CommandParameters": "=$testplanpath + 'UTS2_SZTDE_HID_cs.dll'",
              "Arguments": [
                {
                  "$id": "20",
                  "ArgumentName": "Command",
                  "ArgumentValue": "Query"
                },
                {
                  "$id": "21",
                  "ArgumentName": "VID",
                  "ArgumentValue": "046D"
                },
                {
                  "$id": "22",
                  "ArgumentName": "PID",
                  "ArgumentValue": "D102"
                },
                {
                  "$id": "23",
                  "ArgumentName": "UsagePage",
                  "ArgumentValue": "FF00"
                },
                {
                  "$id": "24",
                  "ArgumentName": "Usage",
                  "ArgumentValue": "1"
                },
                {
                  "$id": "25",
                  "ArgumentName": "Command",
                  "ArgumentValue": "00 00 01"
                },
                {
                  "$id": "26",
                  "ArgumentName": "ReturnLength",
                  "ArgumentValue": "17"
                },
                {
                  "$id": "27",
                  "ArgumentName": "delay",
                  "ArgumentValue": "50"
                },
                {
                  "$id": "28",
                  "ArgumentName": "TimeOut",
                  "ArgumentValue": "2000"
                }
              ],
              "ResultVariables": [
                {
                  "$id": "29",
                  "IsShowingInPis": true,
                  "PisIndex": 1,
                  "VariableName": "devicecount",
                  "Process": "",
                  "Min": "",
                  "Max": "",
                  "ErrorCode": "E-ABE89"
                }
              ],
              "FailRetryEnabled": false,
              "RetryCount": 0,
              "WaitInterval": 0,
              "FailJumpEnabled": false,
              "FailJumpLabel": "",
              "LoopEnabled": false,
              "LoopLabel": "",
              "LoopCount": 0,
              "IfEnabled": false,
              "IfJumpLabel": "",
              "IfConditions": [],
              "IfLogic": 0,
              "GotoEnabled": false,
              "GotoLabel": "",
              "Label": "",
              "Description": "",
              "Status": 0,
              "BackupStatus": 0,
              "Parent": {
                "$ref": "10"
              },
              "Section": 1
            }
          ],
          "Label": "Run ExE",
          "Description": "",
          "Status": 0,
          "BackupStatus": 0,
          "Parent": {
            "$ref": "9"
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
      "$id": "30",
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
      "$id": "31",
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
      "$id": "32",
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