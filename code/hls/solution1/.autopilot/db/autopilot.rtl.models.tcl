set SynModuleInfo {
  {SRCNAME FloatToFixed<16ul> MODELNAME FloatToFixed_16ul_s RTLNAME rrt_FloatToFixed_16ul_s
    SUBMODULES {
      {MODELNAME rrt_fmul_32ns_32ns_32_5_max_dsp_0 RTLNAME rrt_fmul_32ns_32ns_32_5_max_dsp_0 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME rrt_fpext_32ns_64_2_no_dsp_0 RTLNAME rrt_fpext_32ns_64_2_no_dsp_0 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME rrt_fcmp_32ns_32ns_1_3_no_dsp_0 RTLNAME rrt_fcmp_32ns_32ns_1_3_no_dsp_0 BINDTYPE op TYPE fcmp IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_dadd_64ns_64ns_64_12_full_dsp_0 RTLNAME rrt_dadd_64ns_64ns_64_12_full_dsp_0 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 11 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrt_Pipeline_1 MODELNAME rrt_Pipeline_1 RTLNAME rrt_rrt_Pipeline_1
    SUBMODULES {
      {MODELNAME rrt_flow_control_loop_pipe_sequential_init RTLNAME rrt_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rrt_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rrt_Pipeline_VITIS_LOOP_342_1 MODELNAME rrt_Pipeline_VITIS_LOOP_342_1 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_342_1
    SUBMODULES {
      {MODELNAME rrt_hptosp_16ns_32_2_no_dsp_1 RTLNAME rrt_hptosp_16ns_32_2_no_dsp_1 BINDTYPE op TYPE hptosp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrt_Pipeline_VITIS_LOOP_47_1 MODELNAME rrt_Pipeline_VITIS_LOOP_47_1 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_47_1}
  {SRCNAME __hls_fptosi_float_i32 MODELNAME p_hls_fptosi_float_i32 RTLNAME rrt_p_hls_fptosi_float_i32}
  {SRCNAME Collision_detectedhw MODELNAME Collision_detectedhw RTLNAME rrt_Collision_detectedhw
    SUBMODULES {
      {MODELNAME rrt_fadd_32ns_32ns_32_9_full_dsp_1 RTLNAME rrt_fadd_32ns_32ns_32_9_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME rrt_sitofp_32ns_32_7_no_dsp_1_x RTLNAME rrt_sitofp_32ns_32_7_no_dsp_1_x BINDTYPE op TYPE sitofp IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME rrt_mul_48s_50ns_97_3_1 RTLNAME rrt_mul_48s_50ns_97_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_mul_24s_32s_48_5_1 RTLNAME rrt_mul_24s_32s_48_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME rrt_mul_32s_32s_48_5_1_x RTLNAME rrt_mul_32s_32s_48_5_1_x BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrt_Pipeline_VITIS_LOOP_112_1 MODELNAME rrt_Pipeline_VITIS_LOOP_112_1 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_112_1
    SUBMODULES {
      {MODELNAME rrt_mul_32s_48s_48_3_1 RTLNAME rrt_mul_32s_48s_48_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrt_Pipeline_VITIS_LOOP_420_3 MODELNAME rrt_Pipeline_VITIS_LOOP_420_3 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_420_3}
  {SRCNAME Nearhw MODELNAME Nearhw RTLNAME rrt_Nearhw}
  {SRCNAME rrt_Pipeline_VITIS_LOOP_47_12 MODELNAME rrt_Pipeline_VITIS_LOOP_47_12 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_47_12}
  {SRCNAME rrt_Pipeline_VITIS_LOOP_396_2 MODELNAME rrt_Pipeline_VITIS_LOOP_396_2 RTLNAME rrt_rrt_Pipeline_VITIS_LOOP_396_2}
  {SRCNAME rrt MODELNAME rrt RTLNAME rrt IS_TOP 1
    SUBMODULES {
      {MODELNAME rrt_fsub_32ns_32ns_32_9_full_dsp_1 RTLNAME rrt_fsub_32ns_32ns_32_9_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME rrt_sitofp_32ns_32_7_no_dsp_1 RTLNAME rrt_sitofp_32ns_32_7_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME rrt_fptrunc_64ns_32_3_no_dsp_1 RTLNAME rrt_fptrunc_64ns_32_3_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_udiv_33s_24ns_32_37_seq_1 RTLNAME rrt_udiv_33s_24ns_32_37_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 36 ALLOW_PRAGMA 1}
      {MODELNAME rrt_mul_48s_50ns_97_3_1_x RTLNAME rrt_mul_48s_50ns_97_3_1_x BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_mul_32s_32s_48_5_1 RTLNAME rrt_mul_32s_32s_48_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME rrt_Bool_RAM_AUTO_1R1W RTLNAME rrt_Bool_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_x_near_RAM_AUTO_1R1W RTLNAME rrt_x_near_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_RRT_Star_Position_x_RAM_AUTO_1R1W RTLNAME rrt_RRT_Star_Position_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_RRT_Star_Location_List_RAM_AUTO_1R1W RTLNAME rrt_RRT_Star_Location_List_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rrt_CTRL_BUS_s_axi RTLNAME rrt_CTRL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rrt_regslice_both RTLNAME rrt_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME rrt_regslice_both_U}
    }
  }
}
