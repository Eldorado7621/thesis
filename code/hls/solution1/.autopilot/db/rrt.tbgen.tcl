set moduleName rrt
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rrt}
set C_modelType { int 1 }
set C_modelArgList {
	{ dataInStream_V_data_V int 64 regular {axi_s 0 volatile  { dataInStream Data } }  }
	{ dataInStream_V_keep_V int 8 regular {axi_s 0 volatile  { dataInStream Keep } }  }
	{ dataInStream_V_strb_V int 8 regular {axi_s 0 volatile  { dataInStream Strb } }  }
	{ dataInStream_V_user_V int 2 regular {axi_s 0 volatile  { dataInStream User } }  }
	{ dataInStream_V_last_V int 1 regular {axi_s 0 volatile  { dataInStream Last } }  }
	{ dataInStream_V_id_V int 5 regular {axi_s 0 volatile  { dataInStream ID } }  }
	{ dataInStream_V_dest_V int 6 regular {axi_s 0 volatile  { dataInStream Dest } }  }
	{ xrandx float 32 regular {axi_slave 0}  }
	{ xrandy float 32 regular {axi_slave 0}  }
	{ N int 32 regular {axi_slave 0}  }
	{ oup int 32 regular {axi_slave 1}  }
	{ Squared_r_n float 32 regular {axi_slave 0}  }
	{ Squared_R_Robot float 32 regular {axi_slave 0}  }
	{ XNearStream_V_data_V int 32 regular {axi_s 1 volatile  { XNearStream Data } }  }
	{ XNearStream_V_keep_V int 4 regular {axi_s 1 volatile  { XNearStream Keep } }  }
	{ XNearStream_V_strb_V int 4 regular {axi_s 1 volatile  { XNearStream Strb } }  }
	{ XNearStream_V_user_V int 2 regular {axi_s 1 volatile  { XNearStream User } }  }
	{ XNearStream_V_last_V int 1 regular {axi_s 1 volatile  { XNearStream Last } }  }
	{ XNearStream_V_id_V int 5 regular {axi_s 1 volatile  { XNearStream ID } }  }
	{ XNearStream_V_dest_V int 6 regular {axi_s 1 volatile  { XNearStream Dest } }  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataInStream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "xrandx", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "xrandy", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "N", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "oup", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":64}, "offset_end" : {"out":95}} , 
 	{ "Name" : "Squared_r_n", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "Squared_R_Robot", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "XNearStream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 1, "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataInStream_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataInStream_TVALID sc_in sc_logic 1 invld 6 } 
	{ dataInStream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ dataInStream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataInStream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ dataInStream_TUSER sc_in sc_lv 2 signal 3 } 
	{ dataInStream_TLAST sc_in sc_lv 1 signal 4 } 
	{ dataInStream_TID sc_in sc_lv 5 signal 5 } 
	{ dataInStream_TDEST sc_in sc_lv 6 signal 6 } 
	{ XNearStream_TDATA sc_out sc_lv 32 signal 13 } 
	{ XNearStream_TVALID sc_out sc_logic 1 outvld 19 } 
	{ XNearStream_TREADY sc_in sc_logic 1 outacc 19 } 
	{ XNearStream_TKEEP sc_out sc_lv 4 signal 14 } 
	{ XNearStream_TSTRB sc_out sc_lv 4 signal 15 } 
	{ XNearStream_TUSER sc_out sc_lv 2 signal 16 } 
	{ XNearStream_TLAST sc_out sc_lv 1 signal 17 } 
	{ XNearStream_TID sc_out sc_lv 5 signal 18 } 
	{ XNearStream_TDEST sc_out sc_lv 6 signal 19 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"rrt","role":"start","value":"0","valid_bit":"0"},{"name":"rrt","role":"continue","value":"0","valid_bit":"4"},{"name":"rrt","role":"auto_start","value":"0","valid_bit":"7"},{"name":"xrandx","role":"data","value":"24"},{"name":"xrandy","role":"data","value":"32"},{"name":"N","role":"data","value":"40"},{"name":"Squared_r_n","role":"data","value":"48"},{"name":"Squared_R_Robot","role":"data","value":"56"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"rrt","role":"start","value":"0","valid_bit":"0"},{"name":"rrt","role":"done","value":"0","valid_bit":"1"},{"name":"rrt","role":"idle","value":"0","valid_bit":"2"},{"name":"rrt","role":"ready","value":"0","valid_bit":"3"},{"name":"rrt","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"},{"name":"oup","role":"data","value":"64"},{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataInStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataInStream_V_data_V", "role": "default" }} , 
 	{ "name": "dataInStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataInStream_V_dest_V", "role": "default" }} , 
 	{ "name": "dataInStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataInStream_V_dest_V", "role": "default" }} , 
 	{ "name": "dataInStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataInStream_V_keep_V", "role": "default" }} , 
 	{ "name": "dataInStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataInStream_V_strb_V", "role": "default" }} , 
 	{ "name": "dataInStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dataInStream_V_user_V", "role": "default" }} , 
 	{ "name": "dataInStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataInStream_V_last_V", "role": "default" }} , 
 	{ "name": "dataInStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dataInStream_V_id_V", "role": "default" }} , 
 	{ "name": "dataInStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dataInStream_V_dest_V", "role": "default" }} , 
 	{ "name": "XNearStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XNearStream_V_data_V", "role": "default" }} , 
 	{ "name": "XNearStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "XNearStream_V_dest_V", "role": "default" }} , 
 	{ "name": "XNearStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "XNearStream_V_dest_V", "role": "default" }} , 
 	{ "name": "XNearStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "XNearStream_V_keep_V", "role": "default" }} , 
 	{ "name": "XNearStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "XNearStream_V_strb_V", "role": "default" }} , 
 	{ "name": "XNearStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "XNearStream_V_user_V", "role": "default" }} , 
 	{ "name": "XNearStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "XNearStream_V_last_V", "role": "default" }} , 
 	{ "name": "XNearStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "XNearStream_V_id_V", "role": "default" }} , 
 	{ "name": "XNearStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "XNearStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8", "13", "18", "23", "27", "29", "72", "74", "75", "77", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110"],
		"CDFG" : "rrt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dataInStream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_data_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_keep_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_strb_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_user_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_last_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_id_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "dataInStream_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Port" : "dataInStream_V_dest_V", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "xrandx", "Type" : "None", "Direction" : "I"},
			{"Name" : "xrandy", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "oup", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Squared_r_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "Squared_R_Robot", "Type" : "None", "Direction" : "I"},
			{"Name" : "XNearStream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_data_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_data_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_keep_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_keep_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_strb_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_strb_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_user_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_user_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_last_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_last_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_id_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_id_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "XNearStream_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Port" : "XNearStream_V_dest_V", "Inst_start_state" : "139", "Inst_end_state" : "140"},
					{"ID" : "72", "SubInstance" : "grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Port" : "XNearStream_V_dest_V", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bool_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_near_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RRT_Star_Position_x_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RRT_Star_Position_y_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RRT_Star_Location_List_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_1_fu_399", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "rrt_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10002", "EstimateLatencyMax" : "10002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "RRT_Star_Position_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RRT_Star_Position_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RRT_Star_Location_List", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_1_fu_399.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_409", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "FloatToFixed_16ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_409.fmul_32ns_32ns_32_5_max_dsp_0_U1", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_409.fpext_32ns_64_2_no_dsp_0_U2", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_409.fcmp_32ns_32ns_1_3_no_dsp_0_U3", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_409.dadd_64ns_64ns_64_12_full_dsp_0_U4", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_414", "Parent" : "0", "Child" : ["14", "15", "16", "17"],
		"CDFG" : "FloatToFixed_16ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_414.fmul_32ns_32ns_32_5_max_dsp_0_U1", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_414.fpext_32ns_64_2_no_dsp_0_U2", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_414.fcmp_32ns_32ns_1_3_no_dsp_0_U3", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_414.dadd_64ns_64ns_64_12_full_dsp_0_U4", "Parent" : "13"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_419", "Parent" : "0", "Child" : ["19", "20", "21", "22"],
		"CDFG" : "FloatToFixed_16ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_419.fmul_32ns_32ns_32_5_max_dsp_0_U1", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_419.fpext_32ns_64_2_no_dsp_0_U2", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_419.fcmp_32ns_32ns_1_3_no_dsp_0_U3", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FloatToFixed_16ul_s_fu_419.dadd_64ns_64ns_64_12_full_dsp_0_U4", "Parent" : "18"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424", "Parent" : "0", "Child" : ["24", "25", "26"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_342_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataInStream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataInStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataInStream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataInStream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataInStream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataInStream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataInStream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataInStream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "RRT_Star_Position_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RRT_Star_Position_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RRT_Star_Location_List", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv9_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pos_Nearest_Node_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_stream_keep_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_stream_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_user_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_id_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_342_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter51", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter51", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424.hptosp_16ns_32_2_no_dsp_1_U17", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424.hptosp_16ns_32_2_no_dsp_1_U18", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_342_1_fu_424.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_47_1_fu_454", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_47_1_fu_454.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460", "Parent" : "0", "Child" : ["30", "67", "68", "69", "70", "71"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_112_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Delta_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "Delta_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_new_pos_Position_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_new_pos_Position_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "sqrb", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bool", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter74", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter74", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147", "Parent" : "29", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "Collision_detectedhw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "39", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Squared_R_Robot", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_130", "Parent" : "30",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_135", "Parent" : "30",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_140", "Parent" : "30",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_145", "Parent" : "30",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U44", "Parent" : "30"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U45", "Parent" : "30"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U46", "Parent" : "30"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U47", "Parent" : "30"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.sitofp_32ns_32_7_no_dsp_1_x_U48", "Parent" : "30"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.sitofp_32ns_32_7_no_dsp_1_x_U49", "Parent" : "30"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U50", "Parent" : "30"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U51", "Parent" : "30"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U52", "Parent" : "30"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U53", "Parent" : "30"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U54", "Parent" : "30"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U55", "Parent" : "30"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U56", "Parent" : "30"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U57", "Parent" : "30"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U58", "Parent" : "30"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U59", "Parent" : "30"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U60", "Parent" : "30"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U61", "Parent" : "30"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U62", "Parent" : "30"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U63", "Parent" : "30"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U64", "Parent" : "30"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U65", "Parent" : "30"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U66", "Parent" : "30"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U67", "Parent" : "30"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U68", "Parent" : "30"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U69", "Parent" : "30"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U70", "Parent" : "30"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U71", "Parent" : "30"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U72", "Parent" : "30"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U73", "Parent" : "30"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U74", "Parent" : "30"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U75", "Parent" : "30"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.sitofp_32ns_32_7_no_dsp_1_U85", "Parent" : "29"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.fcmp_32ns_32ns_1_3_no_dsp_0_U87", "Parent" : "29"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.mul_32s_48s_48_3_1_U89", "Parent" : "29"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.mul_32s_48s_48_3_1_U90", "Parent" : "29"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_112_1_fu_460.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470", "Parent" : "0", "Child" : ["73"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_420_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_stream_keep_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream_strb_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_user_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_id_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dest_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "XNearStream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "XNearStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "XNearStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_420_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_420_3_fu_470.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Nearhw_fu_493", "Parent" : "0",
		"CDFG" : "Nearhw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_near", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RRT_Star_Pos_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RRT_Star_Pos_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RRT_Star_Pos_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Squared_r_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter29", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state7"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter29", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state38"]}}]},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_47_12_fu_505", "Parent" : "0", "Child" : ["76"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_47_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Dist_sqr", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_47_12_fu_505.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511", "Parent" : "0", "Child" : ["78"],
		"CDFG" : "rrt_Pipeline_VITIS_LOOP_396_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_near", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "XNearCnt", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream_keep_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream_strb_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_user_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_id_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dest_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "XNearStream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "XNearStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "XNearStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "XNearStream_V_dest_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rrt_Pipeline_VITIS_LOOP_396_2_fu_511.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_9_full_dsp_1_U141", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_9_full_dsp_1_U142", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_0_U143", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_7_no_dsp_1_U144", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_7_no_dsp_1_U145", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_3_no_dsp_1_U146", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_0_U147", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_12_full_dsp_0_U148", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U149", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U150", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_33s_24ns_32_37_seq_1_U151", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U152", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U153", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_50ns_97_3_1_x_U154", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_50ns_97_3_1_x_U155", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U156", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_5_1_U157", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_data_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_user_V_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_last_V_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_id_V_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataInStream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_data_V_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_user_V_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_last_V_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_id_V_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_XNearStream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rrt {
		dataInStream_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_user_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_id_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		xrandx {Type I LastRead 0 FirstWrite -1}
		xrandy {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		oup {Type O LastRead -1 FirstWrite 50}
		Squared_r_n {Type I LastRead 0 FirstWrite -1}
		Squared_R_Robot {Type I LastRead 0 FirstWrite -1}
		XNearStream_V_data_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		ap_local_deadlock {Type O LastRead -1 FirstWrite -1}}
	rrt_Pipeline_1 {
		RRT_Star_Position_x {Type O LastRead -1 FirstWrite 0}
		RRT_Star_Position_y {Type O LastRead -1 FirstWrite 0}
		RRT_Star_Location_List {Type O LastRead -1 FirstWrite 0}}
	FloatToFixed_16ul_s {
		d {Type I LastRead 0 FirstWrite -1}}
	FloatToFixed_16ul_s {
		d {Type I LastRead 0 FirstWrite -1}}
	FloatToFixed_16ul_s {
		d {Type I LastRead 0 FirstWrite -1}}
	rrt_Pipeline_VITIS_LOOP_342_1 {
		N {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_user_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_id_V {Type I LastRead 0 FirstWrite -1}
		dataInStream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		RRT_Star_Position_x {Type O LastRead -1 FirstWrite 26}
		RRT_Star_Position_y {Type O LastRead -1 FirstWrite 26}
		RRT_Star_Location_List {Type O LastRead -1 FirstWrite 1}
		conv_i_i {Type I LastRead 0 FirstWrite -1}
		conv9_i_i {Type I LastRead 0 FirstWrite -1}
		Pos_Nearest_Node_out {Type O LastRead -1 FirstWrite 50}
		output_stream_keep_V_out {Type O LastRead -1 FirstWrite 50}
		output_stream_strb_V_out {Type O LastRead -1 FirstWrite 50}
		tmp_user_V_out {Type O LastRead -1 FirstWrite 50}
		tmp_id_V_out {Type O LastRead -1 FirstWrite 50}
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 50}}
	rrt_Pipeline_VITIS_LOOP_47_1 {
		r {Type I LastRead 0 FirstWrite -1}
		q_1_out {Type O LastRead -1 FirstWrite 1}}
	rrt_Pipeline_VITIS_LOOP_112_1 {
		Delta_x {Type I LastRead 0 FirstWrite -1}
		Delta_y {Type I LastRead 0 FirstWrite -1}
		x_new_pos_Position_x {Type I LastRead 0 FirstWrite -1}
		x_new_pos_Position_y {Type I LastRead 0 FirstWrite -1}
		sqrb {Type I LastRead 0 FirstWrite -1}
		Bool {Type O LastRead -1 FirstWrite 74}}
	Collision_detectedhw {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		Squared_R_Robot {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	rrt_Pipeline_VITIS_LOOP_420_3 {
		output_stream_keep_V_reload {Type I LastRead 0 FirstWrite -1}
		output_stream_strb_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_user_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_id_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_dest_V_reload {Type I LastRead 0 FirstWrite -1}
		XNearStream_V_data_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	Nearhw {
		X_near {Type O LastRead -1 FirstWrite 36}
		RRT_Star_Pos_0_0 {Type I LastRead 7 FirstWrite -1}
		RRT_Star_Pos_0_1 {Type I LastRead 7 FirstWrite -1}
		RRT_Star_Pos_1 {Type I LastRead 34 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		Squared_r_n {Type I LastRead 6 FirstWrite -1}
		N {Type I LastRead 6 FirstWrite -1}}
	rrt_Pipeline_VITIS_LOOP_47_12 {
		Dist_sqr {Type I LastRead 0 FirstWrite -1}
		q_out {Type O LastRead -1 FirstWrite 1}}
	rrt_Pipeline_VITIS_LOOP_396_2 {
		add {Type I LastRead 0 FirstWrite -1}
		x_near {Type I LastRead 0 FirstWrite -1}
		XNearCnt {Type I LastRead 0 FirstWrite -1}
		output_stream_keep_V_reload {Type I LastRead 0 FirstWrite -1}
		output_stream_strb_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_user_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_id_V_reload {Type I LastRead 0 FirstWrite -1}
		tmp_dest_V_reload {Type I LastRead 0 FirstWrite -1}
		XNearStream_V_data_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		XNearStream_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataInStream_V_data_V { axis {  { dataInStream_TDATA in_data 0 64 } } }
	dataInStream_V_keep_V { axis {  { dataInStream_TKEEP in_data 0 8 } } }
	dataInStream_V_strb_V { axis {  { dataInStream_TSTRB in_data 0 8 } } }
	dataInStream_V_user_V { axis {  { dataInStream_TUSER in_data 0 2 } } }
	dataInStream_V_last_V { axis {  { dataInStream_TLAST in_data 0 1 } } }
	dataInStream_V_id_V { axis {  { dataInStream_TID in_data 0 5 } } }
	dataInStream_V_dest_V { axis {  { dataInStream_TVALID in_vld 0 1 }  { dataInStream_TREADY in_acc 1 1 }  { dataInStream_TDEST in_data 0 6 } } }
	XNearStream_V_data_V { axis {  { XNearStream_TDATA out_data 1 32 } } }
	XNearStream_V_keep_V { axis {  { XNearStream_TKEEP out_data 1 4 } } }
	XNearStream_V_strb_V { axis {  { XNearStream_TSTRB out_data 1 4 } } }
	XNearStream_V_user_V { axis {  { XNearStream_TUSER out_data 1 2 } } }
	XNearStream_V_last_V { axis {  { XNearStream_TLAST out_data 1 1 } } }
	XNearStream_V_id_V { axis {  { XNearStream_TID out_data 1 5 } } }
	XNearStream_V_dest_V { axis {  { XNearStream_TVALID out_vld 1 1 }  { XNearStream_TREADY out_acc 0 1 }  { XNearStream_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
