set moduleName ThreadPE_Pipeline_TFLOOP1
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
set hasInterrupt 0
set C_modelName {ThreadPE_Pipeline_TFLOOP1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read80 int 8 regular  }
	{ location_3_load int 8 regular  }
	{ location_2_load int 8 regular  }
	{ location_1_load int 8 regular  }
	{ location_0_load int 8 regular  }
	{ helpedList_3_load int 8 regular  }
	{ helpedList_2_load_1 int 8 regular  }
	{ helpedList_1_load_1 int 8 regular  }
	{ helpedList_0_load_1 int 8 regular  }
	{ p_read82 int 8 regular  }
	{ p_read28 int 32 regular  }
	{ xn_current_5 int 16 regular {pointer 1}  }
	{ xn_current_4 int 16 regular {pointer 1}  }
	{ xn_current_3 int 16 regular {pointer 1}  }
	{ xn_current_2 int 16 regular {pointer 1}  }
	{ xn_current_1 int 16 regular {pointer 1}  }
	{ xn_current_0 int 16 regular {pointer 1}  }
	{ location_3 int 8 regular {pointer 1}  }
	{ location_2 int 8 regular {pointer 1}  }
	{ location_1 int 8 regular {pointer 1}  }
	{ location_0 int 8 regular {pointer 1}  }
	{ helpedList_3 int 8 regular {pointer 1}  }
	{ helpedList_2 int 8 regular {pointer 1}  }
	{ helpedList_1 int 8 regular {pointer 1}  }
	{ helpedList_0 int 8 regular {pointer 1}  }
	{ assignmentbegintemp_V int 8 regular  }
	{ p_read29 int 32 regular  }
	{ p_read30 int 32 regular  }
	{ p_read32 int 32 regular  }
	{ p_read33 int 32 regular  }
	{ p_read3 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read22 int 16 regular  }
	{ p_read5 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read23 int 16 regular  }
	{ p_read6 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read24 int 16 regular  }
	{ p_read7 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read25 int 16 regular  }
	{ p_read8 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read20 int 16 regular  }
	{ p_read26 int 16 regular  }
	{ p_read9 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read21 int 16 regular  }
	{ p_read27 int 16 regular  }
	{ index_5_out int 8 regular {pointer 1}  }
	{ mux_case_33616_out int 8 regular {pointer 1}  }
	{ mux_case_23514_out int 8 regular {pointer 1}  }
	{ mux_case_13412_out int 8 regular {pointer 1}  }
	{ mux_case_03310_out int 8 regular {pointer 1}  }
	{ lhs_V_1_out int 8 regular {pointer 1}  }
	{ p_out int 32 regular {pointer 1}  }
	{ rhs_V_3_out int 8 regular {pointer 1}  }
	{ trunc_ln8_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read80", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_3_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_2_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_1_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_0_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helpedList_3_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helpedList_2_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helpedList_1_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helpedList_0_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read82", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_5", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_current_4", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_current_3", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_current_2", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_current_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_current_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "assignmentbegintemp_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "index_5_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_33616_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_23514_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_13412_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_03310_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lhs_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rhs_V_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln8_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ p_read80 sc_in sc_lv 8 signal 0 } 
	{ location_3_load sc_in sc_lv 8 signal 1 } 
	{ location_2_load sc_in sc_lv 8 signal 2 } 
	{ location_1_load sc_in sc_lv 8 signal 3 } 
	{ location_0_load sc_in sc_lv 8 signal 4 } 
	{ helpedList_3_load sc_in sc_lv 8 signal 5 } 
	{ helpedList_2_load_1 sc_in sc_lv 8 signal 6 } 
	{ helpedList_1_load_1 sc_in sc_lv 8 signal 7 } 
	{ helpedList_0_load_1 sc_in sc_lv 8 signal 8 } 
	{ p_read82 sc_in sc_lv 8 signal 9 } 
	{ p_read28 sc_in sc_lv 32 signal 10 } 
	{ xn_current_5 sc_out sc_lv 16 signal 11 } 
	{ xn_current_5_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ xn_current_4 sc_out sc_lv 16 signal 12 } 
	{ xn_current_4_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ xn_current_3 sc_out sc_lv 16 signal 13 } 
	{ xn_current_3_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ xn_current_2 sc_out sc_lv 16 signal 14 } 
	{ xn_current_2_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ xn_current_1 sc_out sc_lv 16 signal 15 } 
	{ xn_current_1_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ xn_current_0 sc_out sc_lv 16 signal 16 } 
	{ xn_current_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ location_3 sc_out sc_lv 8 signal 17 } 
	{ location_3_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ location_2 sc_out sc_lv 8 signal 18 } 
	{ location_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ location_1 sc_out sc_lv 8 signal 19 } 
	{ location_1_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ location_0 sc_out sc_lv 8 signal 20 } 
	{ location_0_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ helpedList_3 sc_out sc_lv 8 signal 21 } 
	{ helpedList_3_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ helpedList_2 sc_out sc_lv 8 signal 22 } 
	{ helpedList_2_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ helpedList_1 sc_out sc_lv 8 signal 23 } 
	{ helpedList_1_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ helpedList_0 sc_out sc_lv 8 signal 24 } 
	{ helpedList_0_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ assignmentbegintemp_V sc_in sc_lv 8 signal 25 } 
	{ p_read29 sc_in sc_lv 32 signal 26 } 
	{ p_read30 sc_in sc_lv 32 signal 27 } 
	{ p_read32 sc_in sc_lv 32 signal 28 } 
	{ p_read33 sc_in sc_lv 32 signal 29 } 
	{ p_read3 sc_in sc_lv 16 signal 30 } 
	{ p_read10 sc_in sc_lv 16 signal 31 } 
	{ p_read16 sc_in sc_lv 16 signal 32 } 
	{ p_read22 sc_in sc_lv 16 signal 33 } 
	{ p_read5 sc_in sc_lv 16 signal 34 } 
	{ p_read11 sc_in sc_lv 16 signal 35 } 
	{ p_read17 sc_in sc_lv 16 signal 36 } 
	{ p_read23 sc_in sc_lv 16 signal 37 } 
	{ p_read6 sc_in sc_lv 16 signal 38 } 
	{ p_read12 sc_in sc_lv 16 signal 39 } 
	{ p_read18 sc_in sc_lv 16 signal 40 } 
	{ p_read24 sc_in sc_lv 16 signal 41 } 
	{ p_read7 sc_in sc_lv 16 signal 42 } 
	{ p_read13 sc_in sc_lv 16 signal 43 } 
	{ p_read19 sc_in sc_lv 16 signal 44 } 
	{ p_read25 sc_in sc_lv 16 signal 45 } 
	{ p_read8 sc_in sc_lv 16 signal 46 } 
	{ p_read14 sc_in sc_lv 16 signal 47 } 
	{ p_read20 sc_in sc_lv 16 signal 48 } 
	{ p_read26 sc_in sc_lv 16 signal 49 } 
	{ p_read9 sc_in sc_lv 16 signal 50 } 
	{ p_read15 sc_in sc_lv 16 signal 51 } 
	{ p_read21 sc_in sc_lv 16 signal 52 } 
	{ p_read27 sc_in sc_lv 16 signal 53 } 
	{ index_5_out sc_out sc_lv 8 signal 54 } 
	{ index_5_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ mux_case_33616_out sc_out sc_lv 8 signal 55 } 
	{ mux_case_33616_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ mux_case_23514_out sc_out sc_lv 8 signal 56 } 
	{ mux_case_23514_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ mux_case_13412_out sc_out sc_lv 8 signal 57 } 
	{ mux_case_13412_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ mux_case_03310_out sc_out sc_lv 8 signal 58 } 
	{ mux_case_03310_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ lhs_V_1_out sc_out sc_lv 8 signal 59 } 
	{ lhs_V_1_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ p_out sc_out sc_lv 32 signal 60 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ rhs_V_3_out sc_out sc_lv 8 signal 61 } 
	{ rhs_V_3_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ trunc_ln8_out sc_out sc_lv 2 signal 62 } 
	{ trunc_ln8_out_ap_vld sc_out sc_logic 1 outvld 62 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "p_read80", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read80", "role": "default" }} , 
 	{ "name": "location_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3_load", "role": "default" }} , 
 	{ "name": "location_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2_load", "role": "default" }} , 
 	{ "name": "location_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1_load", "role": "default" }} , 
 	{ "name": "location_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0_load", "role": "default" }} , 
 	{ "name": "helpedList_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3_load", "role": "default" }} , 
 	{ "name": "helpedList_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2_load_1", "role": "default" }} , 
 	{ "name": "helpedList_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1_load_1", "role": "default" }} , 
 	{ "name": "helpedList_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0_load_1", "role": "default" }} , 
 	{ "name": "p_read82", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read82", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "xn_current_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_5", "role": "default" }} , 
 	{ "name": "xn_current_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_5", "role": "ap_vld" }} , 
 	{ "name": "xn_current_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_4", "role": "default" }} , 
 	{ "name": "xn_current_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_4", "role": "ap_vld" }} , 
 	{ "name": "xn_current_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_3", "role": "default" }} , 
 	{ "name": "xn_current_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_3", "role": "ap_vld" }} , 
 	{ "name": "xn_current_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_2", "role": "default" }} , 
 	{ "name": "xn_current_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_2", "role": "ap_vld" }} , 
 	{ "name": "xn_current_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_1", "role": "default" }} , 
 	{ "name": "xn_current_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_1", "role": "ap_vld" }} , 
 	{ "name": "xn_current_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_0", "role": "default" }} , 
 	{ "name": "xn_current_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_0", "role": "ap_vld" }} , 
 	{ "name": "location_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3", "role": "default" }} , 
 	{ "name": "location_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_3", "role": "ap_vld" }} , 
 	{ "name": "location_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2", "role": "default" }} , 
 	{ "name": "location_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_2", "role": "ap_vld" }} , 
 	{ "name": "location_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1", "role": "default" }} , 
 	{ "name": "location_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_1", "role": "ap_vld" }} , 
 	{ "name": "location_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0", "role": "default" }} , 
 	{ "name": "location_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_0", "role": "ap_vld" }} , 
 	{ "name": "helpedList_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3", "role": "default" }} , 
 	{ "name": "helpedList_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_3", "role": "ap_vld" }} , 
 	{ "name": "helpedList_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2", "role": "default" }} , 
 	{ "name": "helpedList_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_2", "role": "ap_vld" }} , 
 	{ "name": "helpedList_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1", "role": "default" }} , 
 	{ "name": "helpedList_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_1", "role": "ap_vld" }} , 
 	{ "name": "helpedList_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0", "role": "default" }} , 
 	{ "name": "helpedList_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_0", "role": "ap_vld" }} , 
 	{ "name": "assignmentbegintemp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "assignmentbegintemp_V", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "index_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_5_out", "role": "default" }} , 
 	{ "name": "index_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "index_5_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_33616_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mux_case_33616_out", "role": "default" }} , 
 	{ "name": "mux_case_33616_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_33616_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_23514_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mux_case_23514_out", "role": "default" }} , 
 	{ "name": "mux_case_23514_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_23514_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_13412_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mux_case_13412_out", "role": "default" }} , 
 	{ "name": "mux_case_13412_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_13412_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_03310_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mux_case_03310_out", "role": "default" }} , 
 	{ "name": "mux_case_03310_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_03310_out", "role": "ap_vld" }} , 
 	{ "name": "lhs_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lhs_V_1_out", "role": "default" }} , 
 	{ "name": "lhs_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "rhs_V_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rhs_V_3_out", "role": "default" }} , 
 	{ "name": "rhs_V_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rhs_V_3_out", "role": "ap_vld" }} , 
 	{ "name": "trunc_ln8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln8_out", "role": "default" }} , 
 	{ "name": "trunc_ln8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trunc_ln8_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "ThreadPE_Pipeline_TFLOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "helpedList_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "helpedList_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "helpedList_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "helpedList_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xn_current_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xn_current_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xn_current_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xn_current_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xn_current_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "assignmentbegintemp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_33616_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_23514_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_13412_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_03310_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rhs_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "TFLOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_8_1_1_U1125", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_32_1_1_U1126", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1127", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1128", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1129", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1130", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1131", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1132", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_8_1_1_U1133", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ThreadPE_Pipeline_TFLOOP1 {
		p_read80 {Type I LastRead 0 FirstWrite -1}
		location_3_load {Type I LastRead 0 FirstWrite -1}
		location_2_load {Type I LastRead 0 FirstWrite -1}
		location_1_load {Type I LastRead 0 FirstWrite -1}
		location_0_load {Type I LastRead 0 FirstWrite -1}
		helpedList_3_load {Type I LastRead 0 FirstWrite -1}
		helpedList_2_load_1 {Type I LastRead 0 FirstWrite -1}
		helpedList_1_load_1 {Type I LastRead 0 FirstWrite -1}
		helpedList_0_load_1 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		xn_current_5 {Type O LastRead -1 FirstWrite 1}
		xn_current_4 {Type O LastRead -1 FirstWrite 1}
		xn_current_3 {Type O LastRead -1 FirstWrite 1}
		xn_current_2 {Type O LastRead -1 FirstWrite 1}
		xn_current_1 {Type O LastRead -1 FirstWrite 1}
		xn_current_0 {Type O LastRead -1 FirstWrite 1}
		location_3 {Type O LastRead -1 FirstWrite 1}
		location_2 {Type O LastRead -1 FirstWrite 1}
		location_1 {Type O LastRead -1 FirstWrite 1}
		location_0 {Type O LastRead -1 FirstWrite 1}
		helpedList_3 {Type O LastRead -1 FirstWrite 1}
		helpedList_2 {Type O LastRead -1 FirstWrite 1}
		helpedList_1 {Type O LastRead -1 FirstWrite 1}
		helpedList_0 {Type O LastRead -1 FirstWrite 1}
		assignmentbegintemp_V {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		index_5_out {Type O LastRead -1 FirstWrite 1}
		mux_case_33616_out {Type O LastRead -1 FirstWrite 1}
		mux_case_23514_out {Type O LastRead -1 FirstWrite 1}
		mux_case_13412_out {Type O LastRead -1 FirstWrite 1}
		mux_case_03310_out {Type O LastRead -1 FirstWrite 1}
		lhs_V_1_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		rhs_V_3_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln8_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read80 { ap_none {  { p_read80 in_data 0 8 } } }
	location_3_load { ap_none {  { location_3_load in_data 0 8 } } }
	location_2_load { ap_none {  { location_2_load in_data 0 8 } } }
	location_1_load { ap_none {  { location_1_load in_data 0 8 } } }
	location_0_load { ap_none {  { location_0_load in_data 0 8 } } }
	helpedList_3_load { ap_none {  { helpedList_3_load in_data 0 8 } } }
	helpedList_2_load_1 { ap_none {  { helpedList_2_load_1 in_data 0 8 } } }
	helpedList_1_load_1 { ap_none {  { helpedList_1_load_1 in_data 0 8 } } }
	helpedList_0_load_1 { ap_none {  { helpedList_0_load_1 in_data 0 8 } } }
	p_read82 { ap_none {  { p_read82 in_data 0 8 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 32 } } }
	xn_current_5 { ap_vld {  { xn_current_5 out_data 1 16 }  { xn_current_5_ap_vld out_vld 1 1 } } }
	xn_current_4 { ap_vld {  { xn_current_4 out_data 1 16 }  { xn_current_4_ap_vld out_vld 1 1 } } }
	xn_current_3 { ap_vld {  { xn_current_3 out_data 1 16 }  { xn_current_3_ap_vld out_vld 1 1 } } }
	xn_current_2 { ap_vld {  { xn_current_2 out_data 1 16 }  { xn_current_2_ap_vld out_vld 1 1 } } }
	xn_current_1 { ap_vld {  { xn_current_1 out_data 1 16 }  { xn_current_1_ap_vld out_vld 1 1 } } }
	xn_current_0 { ap_vld {  { xn_current_0 out_data 1 16 }  { xn_current_0_ap_vld out_vld 1 1 } } }
	location_3 { ap_vld {  { location_3 out_data 1 8 }  { location_3_ap_vld out_vld 1 1 } } }
	location_2 { ap_vld {  { location_2 out_data 1 8 }  { location_2_ap_vld out_vld 1 1 } } }
	location_1 { ap_vld {  { location_1 out_data 1 8 }  { location_1_ap_vld out_vld 1 1 } } }
	location_0 { ap_vld {  { location_0 out_data 1 8 }  { location_0_ap_vld out_vld 1 1 } } }
	helpedList_3 { ap_vld {  { helpedList_3 out_data 1 8 }  { helpedList_3_ap_vld out_vld 1 1 } } }
	helpedList_2 { ap_vld {  { helpedList_2 out_data 1 8 }  { helpedList_2_ap_vld out_vld 1 1 } } }
	helpedList_1 { ap_vld {  { helpedList_1 out_data 1 8 }  { helpedList_1_ap_vld out_vld 1 1 } } }
	helpedList_0 { ap_vld {  { helpedList_0 out_data 1 8 }  { helpedList_0_ap_vld out_vld 1 1 } } }
	assignmentbegintemp_V { ap_none {  { assignmentbegintemp_V in_data 0 8 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 32 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 32 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 32 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 16 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 16 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 16 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 16 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 16 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 16 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 16 } } }
	index_5_out { ap_vld {  { index_5_out out_data 1 8 }  { index_5_out_ap_vld out_vld 1 1 } } }
	mux_case_33616_out { ap_vld {  { mux_case_33616_out out_data 1 8 }  { mux_case_33616_out_ap_vld out_vld 1 1 } } }
	mux_case_23514_out { ap_vld {  { mux_case_23514_out out_data 1 8 }  { mux_case_23514_out_ap_vld out_vld 1 1 } } }
	mux_case_13412_out { ap_vld {  { mux_case_13412_out out_data 1 8 }  { mux_case_13412_out_ap_vld out_vld 1 1 } } }
	mux_case_03310_out { ap_vld {  { mux_case_03310_out out_data 1 8 }  { mux_case_03310_out_ap_vld out_vld 1 1 } } }
	lhs_V_1_out { ap_vld {  { lhs_V_1_out out_data 1 8 }  { lhs_V_1_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	rhs_V_3_out { ap_vld {  { rhs_V_3_out out_data 1 8 }  { rhs_V_3_out_ap_vld out_vld 1 1 } } }
	trunc_ln8_out { ap_vld {  { trunc_ln8_out out_data 1 2 }  { trunc_ln8_out_ap_vld out_vld 1 1 } } }
}
