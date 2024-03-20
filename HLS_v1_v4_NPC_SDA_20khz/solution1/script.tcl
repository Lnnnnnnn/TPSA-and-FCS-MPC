############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_v1_v4_NPC_SDA_20khz
set_top MPCcore
add_files PHC_v1_v4_NPC_SDA_20khz/math.cpp
add_files PHC_v1_v4_NPC_SDA_20khz/ap_header.h
add_files PHC_v1_v4_NPC_SDA_20khz/ThreadFunction.cpp
add_files PHC_v1_v4_NPC_SDA_20khz/MPCcore.cpp
add_files -tb PHC_v1_v4_NPC_SDA_20khz/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k410t-fbg900-1}
create_clock -period 10 -name default
config_interface -clock_enable
source "./HLS_v1_v4_NPC_SDA_20khz/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
