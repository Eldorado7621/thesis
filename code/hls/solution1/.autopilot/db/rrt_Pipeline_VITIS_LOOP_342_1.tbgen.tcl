set moduleName rrt_Pipeline_VITIS_LOOP_342_1
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
set C_modelName {rrt_Pipeline_VITIS_LOOP_342_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ N int 32 regular  }
	{ dataInStream_V_data_V int 64 regular {axi_s 0 volatile  { dataInStream Data } }  }
	{ dataInStream_V_keep_V int 8 regular {axi_s 0 volatile  { dataInStream Keep } }  }
	{ dataInStream_V_strb_V int 8 regular {axi_s 0 volatile  { dataInStream Strb } }  }
	{ dataInStream_V_user_V int 2 regular {axi_s 0 volatile  { dataInStream User } }  }
	{ dataInStream_V_last_V int 1 regular {axi_s 0 volatile  { dataInStream Last } }  }
	{ dataInStream_V_id_V int 5 regular {axi_s 0 volatile  { dataInStream ID } }  }
	{ dataInStream_V_dest_V int 6 regular {axi_s 0 volatile  { dataInStream Dest } }  }
	{ RRT_Star_Position_x int 32 regular {array 10000 { 0 3 } 0 1 }  }
	{ RRT_Star_Position_y int 32 regular {array 10000 { 0 3 } 0 1 }  }
	{ RRT_Star_Location_List int 16 regular {array 10000 { 0 3 } 0 1 }  }
	{ conv_i_i float 32 regular  }
	{ conv9_i_i float 32 regular  }
	{ Pos_Nearest_Node_out int 32 regular {pointer 1}  }
	{ output_stream_keep_V_out int 4 regular {pointer 1}  }
	{ output_stream_strb_V_out int 4 regular {pointer 1}  }
	{ tmp_user_V_out int 2 regular {pointer 1}  }
	{ tmp_id_V_out int 5 regular {pointer 1}  }
	{ tmp_dest_V_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "dataInStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "RRT_Star_Position_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RRT_Star_Position_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RRT_Star_Location_List", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_i_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv9_i_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Pos_Nearest_Node_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_keep_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_strb_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_user_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_id_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_dest_V_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataInStream_TVALID sc_in sc_logic 1 invld 1 } 
	{ N sc_in sc_lv 32 signal 0 } 
	{ dataInStream_TDATA sc_in sc_lv 64 signal 1 } 
	{ dataInStream_TREADY sc_out sc_logic 1 inacc 7 } 
	{ dataInStream_TKEEP sc_in sc_lv 8 signal 2 } 
	{ dataInStream_TSTRB sc_in sc_lv 8 signal 3 } 
	{ dataInStream_TUSER sc_in sc_lv 2 signal 4 } 
	{ dataInStream_TLAST sc_in sc_lv 1 signal 5 } 
	{ dataInStream_TID sc_in sc_lv 5 signal 6 } 
	{ dataInStream_TDEST sc_in sc_lv 6 signal 7 } 
	{ RRT_Star_Position_x_address0 sc_out sc_lv 14 signal 8 } 
	{ RRT_Star_Position_x_ce0 sc_out sc_logic 1 signal 8 } 
	{ RRT_Star_Position_x_we0 sc_out sc_logic 1 signal 8 } 
	{ RRT_Star_Position_x_d0 sc_out sc_lv 32 signal 8 } 
	{ RRT_Star_Position_y_address0 sc_out sc_lv 14 signal 9 } 
	{ RRT_Star_Position_y_ce0 sc_out sc_logic 1 signal 9 } 
	{ RRT_Star_Position_y_we0 sc_out sc_logic 1 signal 9 } 
	{ RRT_Star_Position_y_d0 sc_out sc_lv 32 signal 9 } 
	{ RRT_Star_Location_List_address0 sc_out sc_lv 14 signal 10 } 
	{ RRT_Star_Location_List_ce0 sc_out sc_logic 1 signal 10 } 
	{ RRT_Star_Location_List_we0 sc_out sc_logic 1 signal 10 } 
	{ RRT_Star_Location_List_d0 sc_out sc_lv 16 signal 10 } 
	{ conv_i_i sc_in sc_lv 32 signal 11 } 
	{ conv9_i_i sc_in sc_lv 32 signal 12 } 
	{ Pos_Nearest_Node_out sc_out sc_lv 32 signal 13 } 
	{ Pos_Nearest_Node_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ output_stream_keep_V_out sc_out sc_lv 4 signal 14 } 
	{ output_stream_keep_V_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ output_stream_strb_V_out sc_out sc_lv 4 signal 15 } 
	{ output_stream_strb_V_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ tmp_user_V_out sc_out sc_lv 2 signal 16 } 
	{ tmp_user_V_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ tmp_id_V_out sc_out sc_lv 5 signal 17 } 
	{ tmp_id_V_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ tmp_dest_V_out sc_out sc_lv 6 signal 18 } 
	{ tmp_dest_V_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ grp_FloatToFixed_16ul_s_fu_409_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_FloatToFixed_16ul_s_fu_409_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_FloatToFixed_16ul_s_fu_409_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_FloatToFixed_16ul_s_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_FloatToFixed_16ul_s_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_FloatToFixed_16ul_s_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_537_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_537_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_537_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_537_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_537_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_541_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_541_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_541_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_541_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_541_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_550_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_550_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_550_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_553_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_553_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_553_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1261_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1261_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1261_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1261_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1271_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1271_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1271_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1271_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataInStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataInStream_V_data_V", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "dataInStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataInStream_V_data_V", "role": "default" }} , 
 	{ "name": "dataInStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataInStream_V_dest_V", "role": "default" }} , 
 	{ "name": "dataInStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataInStream_V_keep_V", "role": "default" }} , 
 	{ "name": "dataInStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataInStream_V_strb_V", "role": "default" }} , 
 	{ "name": "dataInStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dataInStream_V_user_V", "role": "default" }} , 
 	{ "name": "dataInStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataInStream_V_last_V", "role": "default" }} , 
 	{ "name": "dataInStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dataInStream_V_id_V", "role": "default" }} , 
 	{ "name": "dataInStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dataInStream_V_dest_V", "role": "default" }} , 
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
 	{ "name": "RRT_Star_Location_List_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RRT_Star_Location_List", "role": "d0" }} , 
 	{ "name": "conv_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_i_i", "role": "default" }} , 
 	{ "name": "conv9_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv9_i_i", "role": "default" }} , 
 	{ "name": "Pos_Nearest_Node_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Pos_Nearest_Node_out", "role": "default" }} , 
 	{ "name": "Pos_Nearest_Node_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Pos_Nearest_Node_out", "role": "ap_vld" }} , 
 	{ "name": "output_stream_keep_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_keep_V_out", "role": "default" }} , 
 	{ "name": "output_stream_keep_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_stream_keep_V_out", "role": "ap_vld" }} , 
 	{ "name": "output_stream_strb_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_strb_V_out", "role": "default" }} , 
 	{ "name": "output_stream_strb_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_stream_strb_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_user_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tmp_user_V_out", "role": "default" }} , 
 	{ "name": "tmp_user_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_user_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_id_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_id_V_out", "role": "default" }} , 
 	{ "name": "tmp_id_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_id_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp_dest_V_out", "role": "default" }} , 
 	{ "name": "tmp_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_409_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_409_p_din1", "role": "default" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_409_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_409_p_dout0", "role": "default" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_409_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_409_p_ce", "role": "default" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_FloatToFixed_16ul_s_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_FloatToFixed_16ul_s_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_537_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_537_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_537_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_537_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_537_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_537_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_537_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_537_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_537_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_537_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_541_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_541_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_541_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_541_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_541_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_541_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_541_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_541_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_541_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_541_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_550_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_550_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_550_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_553_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_553_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_553_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_553_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_553_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_553_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1261_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1261_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1261_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1261_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1261_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1261_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1261_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1261_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1271_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1271_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1271_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1271_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1271_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1271_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1271_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1271_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hptosp_16ns_32_2_no_dsp_1_U17", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hptosp_16ns_32_2_no_dsp_1_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 50}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	N { ap_none {  { N in_data 0 32 } } }
	dataInStream_V_data_V { axis {  { dataInStream_TVALID in_vld 0 1 }  { dataInStream_TDATA in_data 0 64 } } }
	dataInStream_V_keep_V { axis {  { dataInStream_TKEEP in_data 0 8 } } }
	dataInStream_V_strb_V { axis {  { dataInStream_TSTRB in_data 0 8 } } }
	dataInStream_V_user_V { axis {  { dataInStream_TUSER in_data 0 2 } } }
	dataInStream_V_last_V { axis {  { dataInStream_TLAST in_data 0 1 } } }
	dataInStream_V_id_V { axis {  { dataInStream_TID in_data 0 5 } } }
	dataInStream_V_dest_V { axis {  { dataInStream_TREADY in_acc 1 1 }  { dataInStream_TDEST in_data 0 6 } } }
	RRT_Star_Position_x { ap_memory {  { RRT_Star_Position_x_address0 mem_address 1 14 }  { RRT_Star_Position_x_ce0 mem_ce 1 1 }  { RRT_Star_Position_x_we0 mem_we 1 1 }  { RRT_Star_Position_x_d0 mem_din 1 32 } } }
	RRT_Star_Position_y { ap_memory {  { RRT_Star_Position_y_address0 mem_address 1 14 }  { RRT_Star_Position_y_ce0 mem_ce 1 1 }  { RRT_Star_Position_y_we0 mem_we 1 1 }  { RRT_Star_Position_y_d0 mem_din 1 32 } } }
	RRT_Star_Location_List { ap_memory {  { RRT_Star_Location_List_address0 mem_address 1 14 }  { RRT_Star_Location_List_ce0 mem_ce 1 1 }  { RRT_Star_Location_List_we0 mem_we 1 1 }  { RRT_Star_Location_List_d0 mem_din 1 16 } } }
	conv_i_i { ap_none {  { conv_i_i in_data 0 32 } } }
	conv9_i_i { ap_none {  { conv9_i_i in_data 0 32 } } }
	Pos_Nearest_Node_out { ap_vld {  { Pos_Nearest_Node_out out_data 1 32 }  { Pos_Nearest_Node_out_ap_vld out_vld 1 1 } } }
	output_stream_keep_V_out { ap_vld {  { output_stream_keep_V_out out_data 1 4 }  { output_stream_keep_V_out_ap_vld out_vld 1 1 } } }
	output_stream_strb_V_out { ap_vld {  { output_stream_strb_V_out out_data 1 4 }  { output_stream_strb_V_out_ap_vld out_vld 1 1 } } }
	tmp_user_V_out { ap_vld {  { tmp_user_V_out out_data 1 2 }  { tmp_user_V_out_ap_vld out_vld 1 1 } } }
	tmp_id_V_out { ap_vld {  { tmp_id_V_out out_data 1 5 }  { tmp_id_V_out_ap_vld out_vld 1 1 } } }
	tmp_dest_V_out { ap_vld {  { tmp_dest_V_out out_data 1 6 }  { tmp_dest_V_out_ap_vld out_vld 1 1 } } }
}
