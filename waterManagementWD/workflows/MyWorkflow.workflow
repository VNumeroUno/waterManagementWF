{
	"contents": {
		"7471aae4-a31c-4074-a149-bc3e084000fe": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "waterWorkflow",
			"subject": "Water Management Work Flow",
			"businessKey": "",
			"customAttributes": [],
			"name": "WaterWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Report Submitted"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Completed"
				}
			},
			"activities": {
				"f1251c32-63b7-40bc-b21a-e0c932d58e4e": {
					"name": "Water Approval"
				},
				"282f1221-2533-4f14-bd71-c641f49283f6": {
					"name": "ExclusiveGateway1"
				},
				"6a2ff5ee-0087-4b50-ab2b-9ddf4b898365": {
					"name": "UserTask2"
				},
				"e834de23-c854-4c96-9d86-ee4a2beb5391": {
					"name": "ScriptTask1"
				},
				"9fb31d2c-b9e2-4ba5-b989-40adbc1f4aba": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"13c74ca1-adc7-4b3d-b3ef-35d26526a20a": {
					"name": "SequenceFlow3"
				},
				"367eb9a4-03b4-443c-9e82-5407684137dc": {
					"name": "Approve"
				},
				"f14d0012-041c-4d18-a728-71fee3bbdfea": {
					"name": "SequenceFlow5"
				},
				"926ceedc-4392-4943-8ccb-b249d102ab49": {
					"name": "SequenceFlow7"
				},
				"bf169b79-2602-42c5-bc38-cfdfff8a3471": {
					"name": "SequenceFlow8"
				},
				"0fa4ccf1-6a68-4758-9b4b-9f65afe79463": {
					"name": "Reject"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Report Submitted"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Completed"
		},
		"f1251c32-63b7-40bc-b21a-e0c932d58e4e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve - WaterManangement",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://cprailinbox.waterworkflowuimodule/waterworkflowuimodule",
			"recipientUsers": "${context.approvers}",
			"userInterfaceParams": [],
			"customAttributes": [],
			"id": "usertask1",
			"name": "Water Approval"
		},
		"282f1221-2533-4f14-bd71-c641f49283f6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "367eb9a4-03b4-443c-9e82-5407684137dc"
		},
		"6a2ff5ee-0087-4b50-ab2b-9ddf4b898365": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Review Water Workflow Details",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://cprailinbox.waterworkflowuimodule/waterworkflowuimodule",
			"recipientUsers": "${context.approvers}",
			"userInterfaceParams": [],
			"id": "usertask2",
			"name": "UserTask2"
		},
		"e834de23-c854-4c96-9d86-ee4a2beb5391": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/payload.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"9fb31d2c-b9e2-4ba5-b989-40adbc1f4aba": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Emission_CAP",
			"destinationSource": "consumer",
			"path": "/browse/WaterManagement",
			"httpMethod": "POST",
			"requestVariable": "${context.payload}",
			"responseVariable": "${context.result}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "f1251c32-63b7-40bc-b21a-e0c932d58e4e"
		},
		"13c74ca1-adc7-4b3d-b3ef-35d26526a20a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "f1251c32-63b7-40bc-b21a-e0c932d58e4e",
			"targetRef": "282f1221-2533-4f14-bd71-c641f49283f6"
		},
		"367eb9a4-03b4-443c-9e82-5407684137dc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "Approve",
			"sourceRef": "282f1221-2533-4f14-bd71-c641f49283f6",
			"targetRef": "e834de23-c854-4c96-9d86-ee4a2beb5391"
		},
		"f14d0012-041c-4d18-a728-71fee3bbdfea": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "6a2ff5ee-0087-4b50-ab2b-9ddf4b898365",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"926ceedc-4392-4943-8ccb-b249d102ab49": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "e834de23-c854-4c96-9d86-ee4a2beb5391",
			"targetRef": "9fb31d2c-b9e2-4ba5-b989-40adbc1f4aba"
		},
		"bf169b79-2602-42c5-bc38-cfdfff8a3471": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "9fb31d2c-b9e2-4ba5-b989-40adbc1f4aba",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0fa4ccf1-6a68-4758-9b4b-9f65afe79463": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == false }",
			"id": "sequenceflow9",
			"name": "Reject",
			"sourceRef": "282f1221-2533-4f14-bd71-c641f49283f6",
			"targetRef": "6a2ff5ee-0087-4b50-ab2b-9ddf4b898365"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"d91234ad-e7e0-447f-80ad-47b54062853d": {},
				"dd7e3bb8-a3ab-464c-9602-2b2a01b61aeb": {},
				"db215d31-19d2-47cb-addc-76b2e1dd99fc": {},
				"6af1b9d2-5d77-43e7-8ae7-90b0f1fcf18d": {},
				"db5e0e80-c706-4633-b341-81465acdbd23": {},
				"9d09d864-561e-435e-b0c9-6f9293bba9d2": {},
				"b9d76706-66e6-4030-9881-13d9b5c9b5e7": {},
				"96cd6267-4cec-4c04-a049-6855f8fef6a9": {},
				"c52aa493-c819-4267-8c70-b1e63ac008da": {},
				"0a04002a-da79-42a3-bd41-59e14bf6b425": {},
				"e8eaf3bd-dc4a-4241-8455-873c49241e81": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 5,
			"y": 70,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 632,
			"y": 79,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "21,85.875 53.87049865722656,85.875 53.87049865722656,95.875 120.24147286593848,95.875",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "d91234ad-e7e0-447f-80ad-47b54062853d",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"d91234ad-e7e0-447f-80ad-47b54062853d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 70.24147286593848,
			"y": 65.75,
			"width": 100,
			"height": 60,
			"object": "f1251c32-63b7-40bc-b21a-e0c932d58e4e"
		},
		"dd7e3bb8-a3ab-464c-9602-2b2a01b61aeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "120.24147286593848,97.9375 232.37073643296924,97.9375",
			"sourceSymbol": "d91234ad-e7e0-447f-80ad-47b54062853d",
			"targetSymbol": "db215d31-19d2-47cb-addc-76b2e1dd99fc",
			"object": "13c74ca1-adc7-4b3d-b3ef-35d26526a20a"
		},
		"db215d31-19d2-47cb-addc-76b2e1dd99fc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 211.37073643296924,
			"y": 79.125,
			"object": "282f1221-2533-4f14-bd71-c641f49283f6"
		},
		"6af1b9d2-5d77-43e7-8ae7-90b0f1fcf18d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232.37074279785156,121.125 232.37074279785156,199 317.2780456542969,199",
			"sourceSymbol": "db215d31-19d2-47cb-addc-76b2e1dd99fc",
			"targetSymbol": "b9d76706-66e6-4030-9881-13d9b5c9b5e7",
			"object": "367eb9a4-03b4-443c-9e82-5407684137dc"
		},
		"db5e0e80-c706-4633-b341-81465acdbd23": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 308.1853682164846,
			"y": 36.3125,
			"width": 100,
			"height": 60,
			"object": "6a2ff5ee-0087-4b50-ab2b-9ddf4b898365"
		},
		"9d09d864-561e-435e-b0c9-6f9293bba9d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "357.84268410824234,66.3125 520.3426513671875,66.3125 520.3426513671875,96.5 649.8426841082423,96.5",
			"sourceSymbol": "db5e0e80-c706-4633-b341-81465acdbd23",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "f14d0012-041c-4d18-a728-71fee3bbdfea"
		},
		"b9d76706-66e6-4030-9881-13d9b5c9b5e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 317.7780456542969,
			"y": 159.71875,
			"width": 100,
			"height": 60,
			"object": "e834de23-c854-4c96-9d86-ee4a2beb5391"
		},
		"96cd6267-4cec-4c04-a049-6855f8fef6a9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 494.7780456542969,
			"y": 150.71875,
			"width": 100,
			"height": 60,
			"object": "9fb31d2c-b9e2-4ba5-b989-40adbc1f4aba"
		},
		"c52aa493-c819-4267-8c70-b1e63ac008da": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "367.7780456542969,189.71875 456.5280456542969,189.71875 456.5280456542969,180.71875 544.7780456542969,180.71875",
			"sourceSymbol": "b9d76706-66e6-4030-9881-13d9b5c9b5e7",
			"targetSymbol": "96cd6267-4cec-4c04-a049-6855f8fef6a9",
			"object": "926ceedc-4392-4943-8ccb-b249d102ab49"
		},
		"0a04002a-da79-42a3-bd41-59e14bf6b425": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "576.7780456542969,151.21875 576.778076171875,96.5 632.5,96.5",
			"sourceSymbol": "96cd6267-4cec-4c04-a049-6855f8fef6a9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "bf169b79-2602-42c5-bc38-cfdfff8a3471"
		},
		"e8eaf3bd-dc4a-4241-8455-873c49241e81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232.37073643296924,100.125 280.7780456542969,100.125 280.7780456542969,67 314,67",
			"sourceSymbol": "db215d31-19d2-47cb-addc-76b2e1dd99fc",
			"targetSymbol": "db5e0e80-c706-4633-b341-81465acdbd23",
			"object": "0fa4ccf1-6a68-4758-9b4b-9f65afe79463"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 9,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 1,
			"mailtask": 1,
			"exclusivegateway": 1
		}
	}
}