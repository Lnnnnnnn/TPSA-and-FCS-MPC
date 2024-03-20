############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PHC_v23_v16_NPC
set_top MPCcore
add_files ../Cpp/PHC_v23_v16_NPC/MPCcore.cpp
add_files ../Cpp/PHC_v23_v16_NPC/ThreadFunction.cpp
add_files ../Cpp/PHC_v23_v16_NPC/ap_header.h
add_files ../Cpp/PHC_v23_v16_NPC/math.cpp
add_files -tb ../Cpp/PHC_v23_v16_NPC/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k410t-fbg900-1}
create_clock -period 10 -name default
config_interface -clock_enable
source "./PHC_v23_v16_NPC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -random_stall -O -wave_debug -disable_deadlock_detection -trace_level all
export_design -format ip_catalog
