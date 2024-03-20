set moduleName ThreadPE_Pipeline_TFLOOP3
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
set C_modelName {ThreadPE_Pipeline_TFLOOP3}
set C_modelType { void 0 }
set C_modelArgList {
	{ location_0_0 int 8 regular  }
	{ location_1_0 int 8 regular  }
	{ location_2_0 int 8 regular  }
	{ location_3_0 int 8 regular  }
	{ location_4_0 int 8 regular  }
	{ location_5_0 int 8 regular  }
	{ location_6_0 int 8 regular  }
	{ location_7_0 int 8 regular  }
	{ location_8_0 int 8 regular  }
	{ branch_0 int 8 regular  }
	{ p_read32 int 8 regular  }
	{ p_read33 int 8 regular  }
	{ p_read34 int 8 regular  }
	{ p_read35 int 8 regular  }
	{ p_read36 int 8 regular  }
	{ p_read37 int 8 regular  }
	{ p_read38 int 8 regular  }
	{ p_read39 int 8 regular  }
	{ p_read40 int 8 regular  }
	{ index_0 int 8 regular  }
	{ write_flag21_0 int 1 regular  }
	{ empty int 32 regular  }
	{ assignmentbegintemp_V int 8 regular  }
	{ p_read23 int 32 regular  }
	{ p_read24 int 32 regular  }
	{ p_read25 int 32 regular  }
	{ p_read26 int 32 regular  }
	{ p_read27 int 32 regular  }
	{ p_read28 int 32 regular  }
	{ p_read29 int 32 regular  }
	{ p_read30 int 32 regular  }
	{ p_read31 int 32 regular  }
	{ location_0_2_out int 8 regular {pointer 1}  }
	{ location_1_2_out int 8 regular {pointer 1}  }
	{ location_2_2_out int 8 regular {pointer 1}  }
	{ location_3_2_out int 8 regular {pointer 1}  }
	{ location_4_2_out int 8 regular {pointer 1}  }
	{ location_5_2_out int 8 regular {pointer 1}  }
	{ location_6_2_out int 8 regular {pointer 1}  }
	{ location_7_2_out int 8 regular {pointer 1}  }
	{ location_8_2_out int 8 regular {pointer 1}  }
	{ lhs_2_out int 8 regular {pointer 1}  }
	{ helpedList_0_0_out int 8 regular {pointer 1}  }
	{ helpedList_1_0_out int 8 regular {pointer 1}  }
	{ helpedList_2_0_out int 8 regular {pointer 1}  }
	{ helpedList_3_0_out int 8 regular {pointer 1}  }
	{ helpedList_4_0_out int 8 regular {pointer 1}  }
	{ helpedList_5_0_out int 8 regular {pointer 1}  }
	{ helpedList_6_0_out int 8 regular {pointer 1}  }
	{ helpedList_7_0_out int 8 regular {pointer 1}  }
	{ helpedList_8_0_out int 8 regular {pointer 1}  }
	{ index_1_out int 8 regular {pointer 1}  }
	{ write_flag21_1_out int 1 regular {pointer 1}  }
	{ J_current_1_out int 32 regular {pointer 1}  }
	{ rhs_1_out int 8 regular {pointer 1}  }
	{ trunc_ln5_out int 4 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "location_0_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_1_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_2_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_3_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_4_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_5_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_6_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_7_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "location_8_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "branch_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "index_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "write_flag21_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "assignmentbegintemp_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "location_0_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_1_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_2_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_3_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_4_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_5_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_6_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_7_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "location_8_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lhs_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_0_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_1_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_2_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_3_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_4_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_5_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_6_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_7_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "helpedList_8_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "index_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag21_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "J_current_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rhs_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln5_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 87
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ location_0_0 sc_in sc_lv 8 signal 0 } 
	{ location_1_0 sc_in sc_lv 8 signal 1 } 
	{ location_2_0 sc_in sc_lv 8 signal 2 } 
	{ location_3_0 sc_in sc_lv 8 signal 3 } 
	{ location_4_0 sc_in sc_lv 8 signal 4 } 
	{ location_5_0 sc_in sc_lv 8 signal 5 } 
	{ location_6_0 sc_in sc_lv 8 signal 6 } 
	{ location_7_0 sc_in sc_lv 8 signal 7 } 
	{ location_8_0 sc_in sc_lv 8 signal 8 } 
	{ branch_0 sc_in sc_lv 8 signal 9 } 
	{ p_read32 sc_in sc_lv 8 signal 10 } 
	{ p_read33 sc_in sc_lv 8 signal 11 } 
	{ p_read34 sc_in sc_lv 8 signal 12 } 
	{ p_read35 sc_in sc_lv 8 signal 13 } 
	{ p_read36 sc_in sc_lv 8 signal 14 } 
	{ p_read37 sc_in sc_lv 8 signal 15 } 
	{ p_read38 sc_in sc_lv 8 signal 16 } 
	{ p_read39 sc_in sc_lv 8 signal 17 } 
	{ p_read40 sc_in sc_lv 8 signal 18 } 
	{ index_0 sc_in sc_lv 8 signal 19 } 
	{ write_flag21_0 sc_in sc_lv 1 signal 20 } 
	{ empty sc_in sc_lv 32 signal 21 } 
	{ assignmentbegintemp_V sc_in sc_lv 8 signal 22 } 
	{ p_read23 sc_in sc_lv 32 signal 23 } 
	{ p_read24 sc_in sc_lv 32 signal 24 } 
	{ p_read25 sc_in sc_lv 32 signal 25 } 
	{ p_read26 sc_in sc_lv 32 signal 26 } 
	{ p_read27 sc_in sc_lv 32 signal 27 } 
	{ p_read28 sc_in sc_lv 32 signal 28 } 
	{ p_read29 sc_in sc_lv 32 signal 29 } 
	{ p_read30 sc_in sc_lv 32 signal 30 } 
	{ p_read31 sc_in sc_lv 32 signal 31 } 
	{ location_0_2_out sc_out sc_lv 8 signal 32 } 
	{ location_0_2_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ location_1_2_out sc_out sc_lv 8 signal 33 } 
	{ location_1_2_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ location_2_2_out sc_out sc_lv 8 signal 34 } 
	{ location_2_2_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ location_3_2_out sc_out sc_lv 8 signal 35 } 
	{ location_3_2_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ location_4_2_out sc_out sc_lv 8 signal 36 } 
	{ location_4_2_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ location_5_2_out sc_out sc_lv 8 signal 37 } 
	{ location_5_2_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ location_6_2_out sc_out sc_lv 8 signal 38 } 
	{ location_6_2_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ location_7_2_out sc_out sc_lv 8 signal 39 } 
	{ location_7_2_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ location_8_2_out sc_out sc_lv 8 signal 40 } 
	{ location_8_2_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ lhs_2_out sc_out sc_lv 8 signal 41 } 
	{ lhs_2_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ helpedList_0_0_out sc_out sc_lv 8 signal 42 } 
	{ helpedList_0_0_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ helpedList_1_0_out sc_out sc_lv 8 signal 43 } 
	{ helpedList_1_0_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ helpedList_2_0_out sc_out sc_lv 8 signal 44 } 
	{ helpedList_2_0_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ helpedList_3_0_out sc_out sc_lv 8 signal 45 } 
	{ helpedList_3_0_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ helpedList_4_0_out sc_out sc_lv 8 signal 46 } 
	{ helpedList_4_0_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ helpedList_5_0_out sc_out sc_lv 8 signal 47 } 
	{ helpedList_5_0_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ helpedList_6_0_out sc_out sc_lv 8 signal 48 } 
	{ helpedList_6_0_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ helpedList_7_0_out sc_out sc_lv 8 signal 49 } 
	{ helpedList_7_0_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ helpedList_8_0_out sc_out sc_lv 8 signal 50 } 
	{ helpedList_8_0_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ index_1_out sc_out sc_lv 8 signal 51 } 
	{ index_1_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ write_flag21_1_out sc_out sc_lv 1 signal 52 } 
	{ write_flag21_1_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ J_current_1_out sc_out sc_lv 32 signal 53 } 
	{ J_current_1_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ rhs_1_out sc_out sc_lv 8 signal 54 } 
	{ rhs_1_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ trunc_ln5_out sc_out sc_lv 4 signal 55 } 
	{ trunc_ln5_out_ap_vld sc_out sc_logic 1 outvld 55 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "location_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0_0", "role": "default" }} , 
 	{ "name": "location_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1_0", "role": "default" }} , 
 	{ "name": "location_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2_0", "role": "default" }} , 
 	{ "name": "location_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3_0", "role": "default" }} , 
 	{ "name": "location_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_4_0", "role": "default" }} , 
 	{ "name": "location_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_5_0", "role": "default" }} , 
 	{ "name": "location_6_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_6_0", "role": "default" }} , 
 	{ "name": "location_7_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_7_0", "role": "default" }} , 
 	{ "name": "location_8_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_8_0", "role": "default" }} , 
 	{ "name": "branch_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "branch_0", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "index_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_0", "role": "default" }} , 
 	{ "name": "write_flag21_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag21_0", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "assignmentbegintemp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "assignmentbegintemp_V", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "location_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0_2_out", "role": "default" }} , 
 	{ "name": "location_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1_2_out", "role": "default" }} , 
 	{ "name": "location_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2_2_out", "role": "default" }} , 
 	{ "name": "location_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3_2_out", "role": "default" }} , 
 	{ "name": "location_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_4_2_out", "role": "default" }} , 
 	{ "name": "location_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_5_2_out", "role": "default" }} , 
 	{ "name": "location_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_6_2_out", "role": "default" }} , 
 	{ "name": "location_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_7_2_out", "role": "default" }} , 
 	{ "name": "location_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "location_8_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_8_2_out", "role": "default" }} , 
 	{ "name": "location_8_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_8_2_out", "role": "ap_vld" }} , 
 	{ "name": "lhs_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lhs_2_out", "role": "default" }} , 
 	{ "name": "lhs_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_2_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0_0_out", "role": "default" }} , 
 	{ "name": "helpedList_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1_0_out", "role": "default" }} , 
 	{ "name": "helpedList_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2_0_out", "role": "default" }} , 
 	{ "name": "helpedList_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3_0_out", "role": "default" }} , 
 	{ "name": "helpedList_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_4_0_out", "role": "default" }} , 
 	{ "name": "helpedList_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_5_0_out", "role": "default" }} , 
 	{ "name": "helpedList_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_6_0_out", "role": "default" }} , 
 	{ "name": "helpedList_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_7_0_out", "role": "default" }} , 
 	{ "name": "helpedList_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "helpedList_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_8_0_out", "role": "default" }} , 
 	{ "name": "helpedList_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "index_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_1_out", "role": "default" }} , 
 	{ "name": "index_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "index_1_out", "role": "ap_vld" }} , 
 	{ "name": "write_flag21_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag21_1_out", "role": "default" }} , 
 	{ "name": "write_flag21_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag21_1_out", "role": "ap_vld" }} , 
 	{ "name": "J_current_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "J_current_1_out", "role": "default" }} , 
 	{ "name": "J_current_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "J_current_1_out", "role": "ap_vld" }} , 
 	{ "name": "rhs_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rhs_1_out", "role": "default" }} , 
 	{ "name": "rhs_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rhs_1_out", "role": "ap_vld" }} , 
 	{ "name": "trunc_ln5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln5_out", "role": "default" }} , 
 	{ "name": "trunc_ln5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trunc_ln5_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "ThreadPE_Pipeline_TFLOOP3",
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
			{"Name" : "location_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_4_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_6_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_7_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_8_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "branch_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_flag21_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "assignmentbegintemp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "location_8_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "helpedList_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag21_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "J_current_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rhs_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "TFLOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_8_1_1_U1888", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_32_1_1_U1889", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_98_8_1_1_U1890", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ThreadPE_Pipeline_TFLOOP3 {
		location_0_0 {Type I LastRead 0 FirstWrite -1}
		location_1_0 {Type I LastRead 0 FirstWrite -1}
		location_2_0 {Type I LastRead 0 FirstWrite -1}
		location_3_0 {Type I LastRead 0 FirstWrite -1}
		location_4_0 {Type I LastRead 0 FirstWrite -1}
		location_5_0 {Type I LastRead 0 FirstWrite -1}
		location_6_0 {Type I LastRead 0 FirstWrite -1}
		location_7_0 {Type I LastRead 0 FirstWrite -1}
		location_8_0 {Type I LastRead 0 FirstWrite -1}
		branch_0 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		index_0 {Type I LastRead 0 FirstWrite -1}
		write_flag21_0 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		assignmentbegintemp_V {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		location_0_2_out {Type O LastRead -1 FirstWrite 1}
		location_1_2_out {Type O LastRead -1 FirstWrite 1}
		location_2_2_out {Type O LastRead -1 FirstWrite 1}
		location_3_2_out {Type O LastRead -1 FirstWrite 1}
		location_4_2_out {Type O LastRead -1 FirstWrite 1}
		location_5_2_out {Type O LastRead -1 FirstWrite 1}
		location_6_2_out {Type O LastRead -1 FirstWrite 1}
		location_7_2_out {Type O LastRead -1 FirstWrite 1}
		location_8_2_out {Type O LastRead -1 FirstWrite 1}
		lhs_2_out {Type O LastRead -1 FirstWrite 1}
		helpedList_0_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_1_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_2_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_3_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_4_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_5_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_6_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_7_0_out {Type O LastRead -1 FirstWrite 1}
		helpedList_8_0_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}
		write_flag21_1_out {Type O LastRead -1 FirstWrite 1}
		J_current_1_out {Type O LastRead -1 FirstWrite 1}
		rhs_1_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln5_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	location_0_0 { ap_none {  { location_0_0 in_data 0 8 } } }
	location_1_0 { ap_none {  { location_1_0 in_data 0 8 } } }
	location_2_0 { ap_none {  { location_2_0 in_data 0 8 } } }
	location_3_0 { ap_none {  { location_3_0 in_data 0 8 } } }
	location_4_0 { ap_none {  { location_4_0 in_data 0 8 } } }
	location_5_0 { ap_none {  { location_5_0 in_data 0 8 } } }
	location_6_0 { ap_none {  { location_6_0 in_data 0 8 } } }
	location_7_0 { ap_none {  { location_7_0 in_data 0 8 } } }
	location_8_0 { ap_none {  { location_8_0 in_data 0 8 } } }
	branch_0 { ap_none {  { branch_0 in_data 0 8 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 8 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 8 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 8 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 8 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 8 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 8 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 8 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 8 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 8 } } }
	index_0 { ap_none {  { index_0 in_data 0 8 } } }
	write_flag21_0 { ap_none {  { write_flag21_0 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	assignmentbegintemp_V { ap_none {  { assignmentbegintemp_V in_data 0 8 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 32 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 32 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 32 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 32 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 32 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 32 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 32 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 32 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 32 } } }
	location_0_2_out { ap_vld {  { location_0_2_out out_data 1 8 }  { location_0_2_out_ap_vld out_vld 1 1 } } }
	location_1_2_out { ap_vld {  { location_1_2_out out_data 1 8 }  { location_1_2_out_ap_vld out_vld 1 1 } } }
	location_2_2_out { ap_vld {  { location_2_2_out out_data 1 8 }  { location_2_2_out_ap_vld out_vld 1 1 } } }
	location_3_2_out { ap_vld {  { location_3_2_out out_data 1 8 }  { location_3_2_out_ap_vld out_vld 1 1 } } }
	location_4_2_out { ap_vld {  { location_4_2_out out_data 1 8 }  { location_4_2_out_ap_vld out_vld 1 1 } } }
	location_5_2_out { ap_vld {  { location_5_2_out out_data 1 8 }  { location_5_2_out_ap_vld out_vld 1 1 } } }
	location_6_2_out { ap_vld {  { location_6_2_out out_data 1 8 }  { location_6_2_out_ap_vld out_vld 1 1 } } }
	location_7_2_out { ap_vld {  { location_7_2_out out_data 1 8 }  { location_7_2_out_ap_vld out_vld 1 1 } } }
	location_8_2_out { ap_vld {  { location_8_2_out out_data 1 8 }  { location_8_2_out_ap_vld out_vld 1 1 } } }
	lhs_2_out { ap_vld {  { lhs_2_out out_data 1 8 }  { lhs_2_out_ap_vld out_vld 1 1 } } }
	helpedList_0_0_out { ap_vld {  { helpedList_0_0_out out_data 1 8 }  { helpedList_0_0_out_ap_vld out_vld 1 1 } } }
	helpedList_1_0_out { ap_vld {  { helpedList_1_0_out out_data 1 8 }  { helpedList_1_0_out_ap_vld out_vld 1 1 } } }
	helpedList_2_0_out { ap_vld {  { helpedList_2_0_out out_data 1 8 }  { helpedList_2_0_out_ap_vld out_vld 1 1 } } }
	helpedList_3_0_out { ap_vld {  { helpedList_3_0_out out_data 1 8 }  { helpedList_3_0_out_ap_vld out_vld 1 1 } } }
	helpedList_4_0_out { ap_vld {  { helpedList_4_0_out out_data 1 8 }  { helpedList_4_0_out_ap_vld out_vld 1 1 } } }
	helpedList_5_0_out { ap_vld {  { helpedList_5_0_out out_data 1 8 }  { helpedList_5_0_out_ap_vld out_vld 1 1 } } }
	helpedList_6_0_out { ap_vld {  { helpedList_6_0_out out_data 1 8 }  { helpedList_6_0_out_ap_vld out_vld 1 1 } } }
	helpedList_7_0_out { ap_vld {  { helpedList_7_0_out out_data 1 8 }  { helpedList_7_0_out_ap_vld out_vld 1 1 } } }
	helpedList_8_0_out { ap_vld {  { helpedList_8_0_out out_data 1 8 }  { helpedList_8_0_out_ap_vld out_vld 1 1 } } }
	index_1_out { ap_vld {  { index_1_out out_data 1 8 }  { index_1_out_ap_vld out_vld 1 1 } } }
	write_flag21_1_out { ap_vld {  { write_flag21_1_out out_data 1 1 }  { write_flag21_1_out_ap_vld out_vld 1 1 } } }
	J_current_1_out { ap_vld {  { J_current_1_out out_data 1 32 }  { J_current_1_out_ap_vld out_vld 1 1 } } }
	rhs_1_out { ap_vld {  { rhs_1_out out_data 1 8 }  { rhs_1_out_ap_vld out_vld 1 1 } } }
	trunc_ln5_out { ap_vld {  { trunc_ln5_out out_data 1 4 }  { trunc_ln5_out_ap_vld out_vld 1 1 } } }
}
