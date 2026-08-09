set moduleName rrt_Pipeline_VITIS_LOOP_420_3
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
set C_modelName {rrt_Pipeline_VITIS_LOOP_420_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_stream_keep_V_reload int 4 regular  }
	{ output_stream_strb_V_reload int 4 regular  }
	{ tmp_user_V_reload int 2 regular  }
	{ tmp_id_V_reload int 5 regular  }
	{ tmp_dest_V_reload int 6 regular  }
	{ XNearStream_V_data_V int 32 regular {axi_s 1 volatile  { XNearStream Data } }  }
	{ XNearStream_V_keep_V int 4 regular {axi_s 1 volatile  { XNearStream Keep } }  }
	{ XNearStream_V_strb_V int 4 regular {axi_s 1 volatile  { XNearStream Strb } }  }
	{ XNearStream_V_user_V int 2 regular {axi_s 1 volatile  { XNearStream User } }  }
	{ XNearStream_V_last_V int 1 regular {axi_s 1 volatile  { XNearStream Last } }  }
	{ XNearStream_V_id_V int 5 regular {axi_s 1 volatile  { XNearStream ID } }  }
	{ XNearStream_V_dest_V int 6 regular {axi_s 1 volatile  { XNearStream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_stream_keep_V_reload", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream_strb_V_reload", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_user_V_reload", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_id_V_reload", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dest_V_reload", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "XNearStream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "XNearStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ XNearStream_TREADY sc_in sc_logic 1 outacc 5 } 
	{ output_stream_keep_V_reload sc_in sc_lv 4 signal 0 } 
	{ output_stream_strb_V_reload sc_in sc_lv 4 signal 1 } 
	{ tmp_user_V_reload sc_in sc_lv 2 signal 2 } 
	{ tmp_id_V_reload sc_in sc_lv 5 signal 3 } 
	{ tmp_dest_V_reload sc_in sc_lv 6 signal 4 } 
	{ XNearStream_TDATA sc_out sc_lv 32 signal 5 } 
	{ XNearStream_TVALID sc_out sc_logic 1 outvld 11 } 
	{ XNearStream_TKEEP sc_out sc_lv 4 signal 6 } 
	{ XNearStream_TSTRB sc_out sc_lv 4 signal 7 } 
	{ XNearStream_TUSER sc_out sc_lv 2 signal 8 } 
	{ XNearStream_TLAST sc_out sc_lv 1 signal 9 } 
	{ XNearStream_TID sc_out sc_lv 5 signal 10 } 
	{ XNearStream_TDEST sc_out sc_lv 6 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "XNearStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "XNearStream_V_data_V", "role": "default" }} , 
 	{ "name": "output_stream_keep_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_keep_V_reload", "role": "default" }} , 
 	{ "name": "output_stream_strb_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_strb_V_reload", "role": "default" }} , 
 	{ "name": "tmp_user_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tmp_user_V_reload", "role": "default" }} , 
 	{ "name": "tmp_id_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_id_V_reload", "role": "default" }} , 
 	{ "name": "tmp_dest_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp_dest_V_reload", "role": "default" }} , 
 	{ "name": "XNearStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XNearStream_V_data_V", "role": "default" }} , 
 	{ "name": "XNearStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "XNearStream_V_dest_V", "role": "default" }} , 
 	{ "name": "XNearStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "XNearStream_V_keep_V", "role": "default" }} , 
 	{ "name": "XNearStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "XNearStream_V_strb_V", "role": "default" }} , 
 	{ "name": "XNearStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "XNearStream_V_user_V", "role": "default" }} , 
 	{ "name": "XNearStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "XNearStream_V_last_V", "role": "default" }} , 
 	{ "name": "XNearStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "XNearStream_V_id_V", "role": "default" }} , 
 	{ "name": "XNearStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "XNearStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		XNearStream_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_stream_keep_V_reload { ap_none {  { output_stream_keep_V_reload in_data 0 4 } } }
	output_stream_strb_V_reload { ap_none {  { output_stream_strb_V_reload in_data 0 4 } } }
	tmp_user_V_reload { ap_none {  { tmp_user_V_reload in_data 0 2 } } }
	tmp_id_V_reload { ap_none {  { tmp_id_V_reload in_data 0 5 } } }
	tmp_dest_V_reload { ap_none {  { tmp_dest_V_reload in_data 0 6 } } }
	XNearStream_V_data_V { axis {  { XNearStream_TREADY out_acc 0 1 }  { XNearStream_TDATA out_data 1 32 } } }
	XNearStream_V_keep_V { axis {  { XNearStream_TKEEP out_data 1 4 } } }
	XNearStream_V_strb_V { axis {  { XNearStream_TSTRB out_data 1 4 } } }
	XNearStream_V_user_V { axis {  { XNearStream_TUSER out_data 1 2 } } }
	XNearStream_V_last_V { axis {  { XNearStream_TLAST out_data 1 1 } } }
	XNearStream_V_id_V { axis {  { XNearStream_TID out_data 1 5 } } }
	XNearStream_V_dest_V { axis {  { XNearStream_TVALID out_vld 1 1 }  { XNearStream_TDEST out_data 1 6 } } }
}
