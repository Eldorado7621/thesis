set moduleName rrt_Pipeline_1
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
set C_modelName {rrt_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ RRT_Star_Position_x int 32 regular {array 10000 { 0 3 } 0 1 }  }
	{ RRT_Star_Position_y int 32 regular {array 10000 { 0 3 } 0 1 }  }
	{ RRT_Star_Location_List int 16 regular {array 10000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RRT_Star_Position_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RRT_Star_Position_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RRT_Star_Location_List", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RRT_Star_Position_x_address0 sc_out sc_lv 14 signal 0 } 
	{ RRT_Star_Position_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ RRT_Star_Position_x_we0 sc_out sc_logic 1 signal 0 } 
	{ RRT_Star_Position_x_d0 sc_out sc_lv 32 signal 0 } 
	{ RRT_Star_Position_y_address0 sc_out sc_lv 14 signal 1 } 
	{ RRT_Star_Position_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ RRT_Star_Position_y_we0 sc_out sc_logic 1 signal 1 } 
	{ RRT_Star_Position_y_d0 sc_out sc_lv 32 signal 1 } 
	{ RRT_Star_Location_List_address0 sc_out sc_lv 14 signal 2 } 
	{ RRT_Star_Location_List_ce0 sc_out sc_logic 1 signal 2 } 
	{ RRT_Star_Location_List_we0 sc_out sc_logic 1 signal 2 } 
	{ RRT_Star_Location_List_d0 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RRT_Star_Position_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "RRT_Star_Position_x", "role": "address0" }} , 
 	{ "name": "RRT_Star_Position_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Position_x", "role": "ce0" }} , 
 	{ "name": "RRT_Star_Position_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Position_x", "role": "we0" }} , 
 	{ "name": "RRT_Star_Position_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RRT_Star_Position_x", "role": "d0" }} , 
 	{ "name": "RRT_Star_Position_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "RRT_Star_Position_y", "role": "address0" }} , 
 	{ "name": "RRT_Star_Position_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Position_y", "role": "ce0" }} , 
 	{ "name": "RRT_Star_Position_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Position_y", "role": "we0" }} , 
 	{ "name": "RRT_Star_Position_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RRT_Star_Position_y", "role": "d0" }} , 
 	{ "name": "RRT_Star_Location_List_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "RRT_Star_Location_List", "role": "address0" }} , 
 	{ "name": "RRT_Star_Location_List_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Location_List", "role": "ce0" }} , 
 	{ "name": "RRT_Star_Location_List_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RRT_Star_Location_List", "role": "we0" }} , 
 	{ "name": "RRT_Star_Location_List_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RRT_Star_Location_List", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rrt_Pipeline_1 {
		RRT_Star_Position_x {Type O LastRead -1 FirstWrite 0}
		RRT_Star_Position_y {Type O LastRead -1 FirstWrite 0}
		RRT_Star_Location_List {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10002", "Max" : "10002"}
	, {"Name" : "Interval", "Min" : "10002", "Max" : "10002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RRT_Star_Position_x { ap_memory {  { RRT_Star_Position_x_address0 mem_address 1 14 }  { RRT_Star_Position_x_ce0 mem_ce 1 1 }  { RRT_Star_Position_x_we0 mem_we 1 1 }  { RRT_Star_Position_x_d0 mem_din 1 32 } } }
	RRT_Star_Position_y { ap_memory {  { RRT_Star_Position_y_address0 mem_address 1 14 }  { RRT_Star_Position_y_ce0 mem_ce 1 1 }  { RRT_Star_Position_y_we0 mem_we 1 1 }  { RRT_Star_Position_y_d0 mem_din 1 32 } } }
	RRT_Star_Location_List { ap_memory {  { RRT_Star_Location_List_address0 mem_address 1 14 }  { RRT_Star_Location_List_ce0 mem_ce 1 1 }  { RRT_Star_Location_List_we0 mem_we 1 1 }  { RRT_Star_Location_List_d0 mem_din 1 16 } } }
}
