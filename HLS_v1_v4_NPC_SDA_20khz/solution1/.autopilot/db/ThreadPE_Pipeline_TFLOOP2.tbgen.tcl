set moduleName ThreadPE_Pipeline_TFLOOP2
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
set C_modelName {ThreadPE_Pipeline_TFLOOP2}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read11 int 8 regular  }
	{ p_read12 int 8 regular  }
	{ p_read13 int 8 regular  }
	{ p_read14 int 8 regular  }
	{ p_read15 int 8 regular  }
	{ p_read16 int 8 regular  }
	{ p_read17 int 8 regular  }
	{ p_read18 int 8 regular  }
	{ p_read19 int 8 regular  }
	{ p_read32 int 8 regular  }
	{ p_read33 int 8 regular  }
	{ p_read34 int 8 regular  }
	{ p_read35 int 8 regular  }
	{ p_read36 int 8 regular  }
	{ p_read37 int 8 regular  }
	{ p_read38 int 8 regular  }
	{ p_read39 int 8 regular  }
	{ p_read40 int 8 regular  }
	{ p_read10 int 8 regular  }
	{ p_read3 int 32 regular  }
	{ conv3_i752 int 8 regular  }
	{ select_ln170 int 32 regular  }
	{ select_ln170_1 int 32 regular  }
	{ select_ln170_2 int 32 regular  }
	{ select_ln170_3 int 32 regular  }
	{ select_ln170_4 int 32 regular  }
	{ select_ln170_5 int 32 regular  }
	{ select_ln170_6 int 32 regular  }
	{ select_ln170_7 int 32 regular  }
	{ select_ln170_8 int 32 regular  }
	{ location_0_6_out int 8 regular {pointer 1}  }
	{ location_1_6_out int 8 regular {pointer 1}  }
	{ location_2_6_out int 8 regular {pointer 1}  }
	{ location_3_6_out int 8 regular {pointer 1}  }
	{ location_4_6_out int 8 regular {pointer 1}  }
	{ location_5_6_out int 8 regular {pointer 1}  }
	{ location_6_6_out int 8 regular {pointer 1}  }
	{ location_7_6_out int 8 regular {pointer 1}  }
	{ location_8_6_out int 8 regular {pointer 1}  }
	{ helpedList_0_4_out int 8 regular {pointer 1}  }
	{ helpedList_1_4_out int 8 regular {pointer 1}  }
	{ helpedList_2_4_out int 8 regular {pointer 1}  }
	{ helpedList_3_4_out int 8 regular {pointer 1}  }
	{ helpedList_4_4_out int 8 regular {pointer 1}  }
	{ helpedList_5_4_out int 8 regular {pointer 1}  }
	{ helpedList_6_4_out int 8 regular {pointer 1}  }
	{ helpedList_7_4_out int 8 regular {pointer 1}  }
	{ helpedList_8_4_out int 8 regular {pointer 1}  }
	{ index_3_out int 8 regular {pointer 1}  }
	{ lhs_V_out int 8 regular {pointer 1}  }
	{ mux_case_03022_out int 8 regular {pointer 1}  }
	{ p_out int 32 regular {pointer 1}  }
	{ rhs_V_out int 8 regular {pointer 1}  }
	{ trunc_ln7_out int 4 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv3_i752", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln170_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "location_0_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_1_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_2_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_3_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_4_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_5_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_6_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_7_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_8_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_0_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_1_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_2_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_3_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_4_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_5_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_6_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_7_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_8_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "index_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lhs_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_03022_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rhs_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln7_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ p_read11 sc_in sc_lv 8 signal 0 } 
	{ p_read12 sc_in sc_lv 8 signal 1 } 
	{ p_read13 sc_in sc_lv 8 signal 2 } 
	{ p_read14 sc_in sc_lv 8 signal 3 } 
	{ p_read15 sc_in sc_lv 8 signal 4 } 
	{ p_read16 sc_in sc_lv 8 signal 5 } 
	{ p_read17 sc_in sc_lv 8 signal 6 } 
	{ p_read18 sc_in sc_lv 8 signal 7 } 
	{ p_read19 sc_in sc_lv 8 signal 8 } 
	{ p_read32 sc_in sc_lv 8 signal 9 } 
	{ p_read33 sc_in sc_lv 8 signal 10 } 
	{ p_read34 sc_in sc_lv 8 signal 11 } 
	{ p_read35 sc_in sc_lv 8 signal 12 } 
	{ p_read36 sc_in sc_lv 8 signal 13 } 
	{ p_read37 sc_in sc_lv 8 signal 14 } 
	{ p_read38 sc_in sc_lv 8 signal 15 } 
	{ p_read39 sc_in sc_lv 8 signal 16 } 
	{ p_read40 sc_in sc_lv 8 signal 17 } 
	{ p_read10 sc_in sc_lv 8 signal 18 } 
	{ p_read3 sc_in sc_lv 32 signal 19 } 
	{ conv3_i752 sc_in sc_lv 8 signal 20 } 
	{ select_ln170 sc_in sc_lv 32 signal 21 } 
	{ select_ln170_1 sc_in sc_lv 32 signal 22 } 
	{ select_ln170_2 sc_in sc_lv 32 signal 23 } 
	{ select_ln170_3 sc_in sc_lv 32 signal 24 } 
	{ select_ln170_4 sc_in sc_lv 32 signal 25 } 
	{ select_ln170_5 sc_in sc_lv 32 signal 26 } 
	{ select_ln170_6 sc_in sc_lv 32 signal 27 } 
	{ select_ln170_7 sc_in sc_lv 32 signal 28 } 
	{ select_ln170_8 sc_in sc_lv 32 signal 29 } 
	{ location_0_6_out sc_out sc_lv 8 signal 30 } 
	{ location_0_6_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ location_1_6_out sc_out sc_lv 8 signal 31 } 
	{ location_1_6_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ location_2_6_out sc_out sc_lv 8 signal 32 } 
	{ location_2_6_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ location_3_6_out sc_out sc_lv 8 signal 33 } 
	{ location_3_6_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ location_4_6_out sc_out sc_lv 8 signal 34 } 
	{ location_4_6_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ location_5_6_out sc_out sc_lv 8 signal 35 } 
	{ location_5_6_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ location_6_6_out sc_out sc_lv 8 signal 36 } 
	{ location_6_6_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ location_7_6_out sc_out sc_lv 8 signal 37 } 
	{ location_7_6_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ location_8_6_out sc_out sc_lv 8 signal 38 } 
	{ location_8_6_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ helpedList_0_4_out sc_out sc_lv 8 signal 39 } 
	{ helpedList_0_4_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ helpedList_1_4_out sc_out sc_lv 8 signal 40 } 
	{ helpedList_1_4_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ helpedList_2_4_out sc_out sc_lv 8 signal 41 } 
	{ helpedList_2_4_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ helpedList_3_4_out sc_out sc_lv 8 signal 42 } 
	{ helpedList_3_4_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ helpedList_4_4_out sc_out sc_lv 8 signal 43 } 
	{ helpedList_4_4_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ helpedList_5_4_out sc_out sc_lv 8 signal 44 } 
	{ helpedList_5_4_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ helpedList_6_4_out sc_out sc_lv 8 signal 45 } 
	{ helpedList_6_4_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ helpedList_7_4_out sc_out sc_lv 8 signal 46 } 
	{ helpedList_7_4_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ helpedList_8_4_out sc_out sc_lv 8 signal 47 } 
	{ helpedList_8_4_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ index_3_out sc_out sc_lv 8 signal 48 } 
	{ index_3_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ lhs_V_out sc_out sc_lv 8 signal 49 } 
	{ lhs_V_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ mux_case_03022_out sc_out sc_lv 8 signal 50 } 
	{ mux_case_03022_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ p_out sc_out sc_lv 32 signal 51 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ rhs_V_out sc_out sc_lv 8 signal 52 } 
	{ rhs_V_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ trunc_ln7_out sc_out sc_lv 4 signal 53 } 
	{ trunc_ln7_out_ap_vld sc_out sc_logic 1 outvld 53 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "conv3_i752", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv3_i752", "role": "default" }} , 
 	{ "name": "select_ln170", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170", "role": "default" }} , 
 	{ "name": "select_ln170_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_1", "role": "default" }} , 
 	{ "name": "select_ln170_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_2", "role": "default" }} , 
 	{ "name": "select_ln170_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_3", "role": "default" }} , 
 	{ "name": "select_ln170_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_4", "role": "default" }} , 
 	{ "name": "select_ln170_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_5", "role": "default" }} , 
 	{ "name": "select_ln170_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_6", "role": "default" }} , 
 	{ "name": "select_ln170_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_7", "role": "default" }} , 
 	{ "name": "select_ln170_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln170_8", "role": "default" }} , 
 	{ "name": "location_0_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0_6_out", "role": "default" }} , 
 	{ "name": "location_0_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_0_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_1_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1_6_out", "role": "default" }} , 
 	{ "name": "location_1_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_1_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_2_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2_6_out", "role": "default" }} , 
 	{ "name": "location_2_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_2_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_3_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3_6_out", "role": "default" }} , 
 	{ "name": "location_3_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_3_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_4_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_4_6_out", "role": "default" }} , 
 	{ "name": "location_4_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_4_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_5_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_5_6_out", "role": "default" }} , 
 	{ "name": "location_5_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_5_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_6_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_6_6_out", "role": "default" }} , 
 	{ "name": "location_6_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_6_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_7_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_7_6_out", "role": "default" }} , 
 	{ "name": "location_7_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_7_6_out", "role": "ap_vld" }} , 
 	{ "name": "location_8_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_8_6_out", "role": "default" }} , 
 	{ "name": "location_8_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_8_6_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_0_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0_4_out", "role": "default" }} , 
 	{ "name": "helpedList_0_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_0_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_1_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1_4_out", "role": "default" }} , 
 	{ "name": "helpedList_1_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_1_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2_4_out", "role": "default" }} , 
 	{ "name": "helpedList_2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_2_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_3_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3_4_out", "role": "default" }} , 
 	{ "name": "helpedList_3_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_3_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_4_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_4_4_out", "role": "default" }} , 
 	{ "name": "helpedList_4_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_4_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_5_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_5_4_out", "role": "default" }} , 
 	{ "name": "helpedList_5_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_5_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_6_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_6_4_out", "role": "default" }} , 
 	{ "name": "helpedList_6_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_6_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_7_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_7_4_out", "role": "default" }} , 
 	{ "name": "helpedList_7_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_7_4_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_8_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_8_4_out", "role": "default" }} , 
 	{ "name": "helpedList_8_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_8_4_out", "role": "ap_vld" }} , 
 	{ "name": "index_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_3_out", "role": "default" }} , 
 	{ "name": "index_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "index_3_out", "role": "ap_vld" }} , 
 	{ "name": "lhs_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lhs_V_out", "role": "default" }} , 
 	{ "name": "lhs_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_V_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_03022_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mux_case_03022_out", "role": "default" }} , 
 	{ "name": "mux_case_03022_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_03022_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "rhs_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rhs_V_out", "role": "default" }} , 
 	{ "name": "rhs_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rhs_V_out", "role": "ap_vld" }} , 
 	{ "name": "trunc_ln7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln7_out", "role": "default" }} , 
 	{ "name": "trunc_ln7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trunc_ln7_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "ThreadPE_Pipeline_TFLOOP2",
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
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv3_i752", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln170_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_0_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_5_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_6_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_7_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_8_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_4_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_5_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_6_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_7_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_8_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_03022_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rhs_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "TFLOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_8_1_1_U1948", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_32_1_1_U1949", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_8_1_1_U1950", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ThreadPE_Pipeline_TFLOOP2 {
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		conv3_i752 {Type I LastRead 0 FirstWrite -1}
		select_ln170 {Type I LastRead 0 FirstWrite -1}
		select_ln170_1 {Type I LastRead 0 FirstWrite -1}
		select_ln170_2 {Type I LastRead 0 FirstWrite -1}
		select_ln170_3 {Type I LastRead 0 FirstWrite -1}
		select_ln170_4 {Type I LastRead 0 FirstWrite -1}
		select_ln170_5 {Type I LastRead 0 FirstWrite -1}
		select_ln170_6 {Type I LastRead 0 FirstWrite -1}
		select_ln170_7 {Type I LastRead 0 FirstWrite -1}
		select_ln170_8 {Type I LastRead 0 FirstWrite -1}
		location_0_6_out {Type O LastRead -1 FirstWrite 1}
		location_1_6_out {Type O LastRead -1 FirstWrite 1}
		location_2_6_out {Type O LastRead -1 FirstWrite 1}
		location_3_6_out {Type O LastRead -1 FirstWrite 1}
		location_4_6_out {Type O LastRead -1 FirstWrite 1}
		location_5_6_out {Type O LastRead -1 FirstWrite 1}
		location_6_6_out {Type O LastRead -1 FirstWrite 1}
		location_7_6_out {Type O LastRead -1 FirstWrite 1}
		location_8_6_out {Type O LastRead -1 FirstWrite 1}
		helpedList_0_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_1_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_2_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_3_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_4_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_5_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_6_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_7_4_out {Type O LastRead -1 FirstWrite 1}
		helpedList_8_4_out {Type O LastRead -1 FirstWrite 1}
		index_3_out {Type O LastRead -1 FirstWrite 1}
		lhs_V_out {Type O LastRead -1 FirstWrite 1}
		mux_case_03022_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		rhs_V_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln7_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read11 { ap_none {  { p_read11 in_data 0 8 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 8 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 8 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 8 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 8 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 8 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 8 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 8 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 8 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 8 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 8 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 8 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 8 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 8 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 8 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 8 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 8 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 8 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	conv3_i752 { ap_none {  { conv3_i752 in_data 0 8 } } }
	select_ln170 { ap_none {  { select_ln170 in_data 0 32 } } }
	select_ln170_1 { ap_none {  { select_ln170_1 in_data 0 32 } } }
	select_ln170_2 { ap_none {  { select_ln170_2 in_data 0 32 } } }
	select_ln170_3 { ap_none {  { select_ln170_3 in_data 0 32 } } }
	select_ln170_4 { ap_none {  { select_ln170_4 in_data 0 32 } } }
	select_ln170_5 { ap_none {  { select_ln170_5 in_data 0 32 } } }
	select_ln170_6 { ap_none {  { select_ln170_6 in_data 0 32 } } }
	select_ln170_7 { ap_none {  { select_ln170_7 in_data 0 32 } } }
	select_ln170_8 { ap_none {  { select_ln170_8 in_data 0 32 } } }
	location_0_6_out { ap_vld {  { location_0_6_out out_data 1 8 }  { location_0_6_out_ap_vld out_vld 1 1 } } }
	location_1_6_out { ap_vld {  { location_1_6_out out_data 1 8 }  { location_1_6_out_ap_vld out_vld 1 1 } } }
	location_2_6_out { ap_vld {  { location_2_6_out out_data 1 8 }  { location_2_6_out_ap_vld out_vld 1 1 } } }
	location_3_6_out { ap_vld {  { location_3_6_out out_data 1 8 }  { location_3_6_out_ap_vld out_vld 1 1 } } }
	location_4_6_out { ap_vld {  { location_4_6_out out_data 1 8 }  { location_4_6_out_ap_vld out_vld 1 1 } } }
	location_5_6_out { ap_vld {  { location_5_6_out out_data 1 8 }  { location_5_6_out_ap_vld out_vld 1 1 } } }
	location_6_6_out { ap_vld {  { location_6_6_out out_data 1 8 }  { location_6_6_out_ap_vld out_vld 1 1 } } }
	location_7_6_out { ap_vld {  { location_7_6_out out_data 1 8 }  { location_7_6_out_ap_vld out_vld 1 1 } } }
	location_8_6_out { ap_vld {  { location_8_6_out out_data 1 8 }  { location_8_6_out_ap_vld out_vld 1 1 } } }
	helpedList_0_4_out { ap_vld {  { helpedList_0_4_out out_data 1 8 }  { helpedList_0_4_out_ap_vld out_vld 1 1 } } }
	helpedList_1_4_out { ap_vld {  { helpedList_1_4_out out_data 1 8 }  { helpedList_1_4_out_ap_vld out_vld 1 1 } } }
	helpedList_2_4_out { ap_vld {  { helpedList_2_4_out out_data 1 8 }  { helpedList_2_4_out_ap_vld out_vld 1 1 } } }
	helpedList_3_4_out { ap_vld {  { helpedList_3_4_out out_data 1 8 }  { helpedList_3_4_out_ap_vld out_vld 1 1 } } }
	helpedList_4_4_out { ap_vld {  { helpedList_4_4_out out_data 1 8 }  { helpedList_4_4_out_ap_vld out_vld 1 1 } } }
	helpedList_5_4_out { ap_vld {  { helpedList_5_4_out out_data 1 8 }  { helpedList_5_4_out_ap_vld out_vld 1 1 } } }
	helpedList_6_4_out { ap_vld {  { helpedList_6_4_out out_data 1 8 }  { helpedList_6_4_out_ap_vld out_vld 1 1 } } }
	helpedList_7_4_out { ap_vld {  { helpedList_7_4_out out_data 1 8 }  { helpedList_7_4_out_ap_vld out_vld 1 1 } } }
	helpedList_8_4_out { ap_vld {  { helpedList_8_4_out out_data 1 8 }  { helpedList_8_4_out_ap_vld out_vld 1 1 } } }
	index_3_out { ap_vld {  { index_3_out out_data 1 8 }  { index_3_out_ap_vld out_vld 1 1 } } }
	lhs_V_out { ap_vld {  { lhs_V_out out_data 1 8 }  { lhs_V_out_ap_vld out_vld 1 1 } } }
	mux_case_03022_out { ap_vld {  { mux_case_03022_out out_data 1 8 }  { mux_case_03022_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	rhs_V_out { ap_vld {  { rhs_V_out out_data 1 8 }  { rhs_V_out_ap_vld out_vld 1 1 } } }
	trunc_ln7_out { ap_vld {  { trunc_ln7_out out_data 1 4 }  { trunc_ln7_out_ap_vld out_vld 1 1 } } }
}
