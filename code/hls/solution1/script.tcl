############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project new_fixedpoint2205
set_top rrt
add_files new_fixedpoint2205/Aux_Lib_hw.hpp
add_files new_fixedpoint2205/RRT_Star_hw.hpp
add_files new_fixedpoint2205/fixedpt.h
add_files new_fixedpoint2205/main.cpp
add_files new_fixedpoint2205/main.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 6.75 -name default
config_export -display_name nfp02 -format ip_catalog -rtl verilog
source "./new_fixedpoint2205/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
