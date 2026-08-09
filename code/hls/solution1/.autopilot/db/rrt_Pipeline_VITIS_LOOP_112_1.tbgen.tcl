set moduleName rrt_Pipeline_VITIS_LOOP_112_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rrt_Pipeline_VITIS_LOOP_112_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ Delta_x int 48 regular  }
	{ Delta_y int 48 regular  }
	{ x_new_pos_Position_x int 32 regular  }
	{ x_new_pos_Position_y int 32 regular  }
	{ sqrb int 32 regular  }
	{ Bool int 1 regular {array 6 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Delta_x", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "Delta_y", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "x_new_pos_Position_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_new_pos_Position_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sqrb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Bool", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Delta_x sc_in sc_lv 48 signal 0 } 
	{ Delta_y sc_in sc_lv 48 signal 1 } 
	{ x_new_pos_Position_x sc_in sc_lv 32 signal 2 } 
	{ x_new_pos_Position_y sc_in sc_lv 32 signal 3 } 
	{ sqrb sc_in sc_lv 32 signal 4 } 
	{ Bool_address0 sc_out sc_lv 3 signal 5 } 
	{ Bool_ce0 sc_out sc_logic 1 signal 5 } 
	{ Bool_we0 sc_out sc_logic 1 signal 5 } 
	{ Bool_d0 sc_out sc_lv 1 signal 5 } 
	{ grp_fu_545_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_545_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_545_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_545_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_559_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_559_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_559_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_562_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_562_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_562_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_562_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_562_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Delta_x", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "Delta_x", "role": "default" }} , 
 	{ "name": "Delta_y", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "Delta_y", "role": "default" }} , 
 	{ "name": "x_new_pos_Position_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_new_pos_Position_x", "role": "default" }} , 
 	{ "name": "x_new_pos_Position_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_new_pos_Position_y", "role": "default" }} , 
 	{ "name": "sqrb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sqrb", "role": "default" }} , 
 	{ "name": "Bool_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Bool", "role": "address0" }} , 
 	{ "name": "Bool_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bool", "role": "ce0" }} , 
 	{ "name": "Bool_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bool", "role": "we0" }} , 
 	{ "name": "Bool_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bool", "role": "d0" }} , 
 	{ "name": "grp_fu_545_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_545_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_545_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_545_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_545_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_545_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_545_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_545_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_559_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_559_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_562_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_562_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_562_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_562_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_562_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "38", "39", "40", "41", "42"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_130", "Parent" : "1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_135", "Parent" : "1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_140", "Parent" : "1",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.grp_p_hls_fptosi_float_i32_fu_145", "Parent" : "1",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U44", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U45", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U46", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.fadd_32ns_32ns_32_9_full_dsp_1_U47", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.sitofp_32ns_32_7_no_dsp_1_x_U48", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.sitofp_32ns_32_7_no_dsp_1_x_U49", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U50", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U51", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U52", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U53", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U54", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U55", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U56", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_48s_50ns_97_3_1_U57", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U58", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U59", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U60", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U61", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U62", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U63", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U64", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U65", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U66", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U67", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_24s_32s_48_5_1_U68", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U69", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U70", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U71", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U72", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U73", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U74", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Collision_detectedhw_fu_147.mul_32s_32s_48_5_1_x_U75", "Parent" : "1"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_7_no_dsp_1_U85", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_3_no_dsp_0_U87", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_48s_48_3_1_U89", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_48s_48_3_1_U90", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "81"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Delta_x { ap_none {  { Delta_x in_data 0 48 } } }
	Delta_y { ap_none {  { Delta_y in_data 0 48 } } }
	x_new_pos_Position_x { ap_none {  { x_new_pos_Position_x in_data 0 32 } } }
	x_new_pos_Position_y { ap_none {  { x_new_pos_Position_y in_data 0 32 } } }
	sqrb { ap_none {  { sqrb in_data 0 32 } } }
	Bool { ap_memory {  { Bool_address0 mem_address 1 3 }  { Bool_ce0 mem_ce 1 1 }  { Bool_we0 mem_we 1 1 }  { Bool_d0 mem_din 1 1 } } }
}
