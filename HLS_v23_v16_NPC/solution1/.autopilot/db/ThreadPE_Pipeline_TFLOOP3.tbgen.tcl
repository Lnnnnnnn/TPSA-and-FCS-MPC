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
	{ write_flag84_0 int 1 regular  }
	{ empty int 32 regular  }
	{ branch_0 int 8 regular  }
	{ index_0 int 8 regular  }
	{ helpedList_0 int 8 regular {pointer 2}  }
	{ helpedList_1 int 8 regular {pointer 2}  }
	{ helpedList_2 int 8 regular {pointer 2}  }
	{ helpedList_3 int 8 regular {pointer 2}  }
	{ assignmentbegintemp_V int 8 regular  }
	{ p_read29 int 32 regular  }
	{ p_read30 int 32 regular  }
	{ p_read32 int 32 regular  }
	{ p_read33 int 32 regular  }
	{ location_0 int 8 regular {pointer 2}  }
	{ location_1 int 8 regular {pointer 2}  }
	{ location_2 int 8 regular {pointer 2}  }
	{ location_3 int 8 regular {pointer 2}  }
	{ p_read3 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read22 int 16 regular  }
	{ xn_current_0 int 16 regular {pointer 1}  }
	{ p_read5 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read23 int 16 regular  }
	{ xn_current_1 int 16 regular {pointer 1}  }
	{ p_read6 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read24 int 16 regular  }
	{ xn_current_2 int 16 regular {pointer 1}  }
	{ p_read7 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read25 int 16 regular  }
	{ xn_current_3 int 16 regular {pointer 1}  }
	{ p_read8 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read20 int 16 regular  }
	{ p_read26 int 16 regular  }
	{ xn_current_4 int 16 regular {pointer 1}  }
	{ p_read9 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read21 int 16 regular  }
	{ p_read27 int 16 regular  }
	{ xn_current_5 int 16 regular {pointer 1}  }
	{ write_flag84_1_out int 1 regular {pointer 1}  }
	{ J_current_1_out int 32 regular {pointer 1}  }
	{ lhs_out int 8 regular {pointer 1}  }
	{ index_1_out int 8 regular {pointer 1}  }
	{ rhs_out int 8 regular {pointer 1}  }
	{ trunc_ln6_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "write_flag84_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "branch_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "index_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helpedList_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "helpedList_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "helpedList_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "helpedList_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "assignmentbegintemp_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "location_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "location_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "location_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "location_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_2", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_3", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_4", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_current_5", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag84_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "J_current_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lhs_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "index_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rhs_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln6_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ write_flag84_0 sc_in sc_lv 1 signal 0 } 
	{ empty sc_in sc_lv 32 signal 1 } 
	{ branch_0 sc_in sc_lv 8 signal 2 } 
	{ index_0 sc_in sc_lv 8 signal 3 } 
	{ helpedList_0_i sc_in sc_lv 8 signal 4 } 
	{ helpedList_0_o sc_out sc_lv 8 signal 4 } 
	{ helpedList_0_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ helpedList_1_i sc_in sc_lv 8 signal 5 } 
	{ helpedList_1_o sc_out sc_lv 8 signal 5 } 
	{ helpedList_1_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ helpedList_2_i sc_in sc_lv 8 signal 6 } 
	{ helpedList_2_o sc_out sc_lv 8 signal 6 } 
	{ helpedList_2_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ helpedList_3_i sc_in sc_lv 8 signal 7 } 
	{ helpedList_3_o sc_out sc_lv 8 signal 7 } 
	{ helpedList_3_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ assignmentbegintemp_V sc_in sc_lv 8 signal 8 } 
	{ p_read29 sc_in sc_lv 32 signal 9 } 
	{ p_read30 sc_in sc_lv 32 signal 10 } 
	{ p_read32 sc_in sc_lv 32 signal 11 } 
	{ p_read33 sc_in sc_lv 32 signal 12 } 
	{ location_0_i sc_in sc_lv 8 signal 13 } 
	{ location_0_o sc_out sc_lv 8 signal 13 } 
	{ location_0_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ location_1_i sc_in sc_lv 8 signal 14 } 
	{ location_1_o sc_out sc_lv 8 signal 14 } 
	{ location_1_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ location_2_i sc_in sc_lv 8 signal 15 } 
	{ location_2_o sc_out sc_lv 8 signal 15 } 
	{ location_2_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ location_3_i sc_in sc_lv 8 signal 16 } 
	{ location_3_o sc_out sc_lv 8 signal 16 } 
	{ location_3_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_read3 sc_in sc_lv 16 signal 17 } 
	{ p_read10 sc_in sc_lv 16 signal 18 } 
	{ p_read16 sc_in sc_lv 16 signal 19 } 
	{ p_read22 sc_in sc_lv 16 signal 20 } 
	{ xn_current_0 sc_out sc_lv 16 signal 21 } 
	{ xn_current_0_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_read5 sc_in sc_lv 16 signal 22 } 
	{ p_read11 sc_in sc_lv 16 signal 23 } 
	{ p_read17 sc_in sc_lv 16 signal 24 } 
	{ p_read23 sc_in sc_lv 16 signal 25 } 
	{ xn_current_1 sc_out sc_lv 16 signal 26 } 
	{ xn_current_1_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_read6 sc_in sc_lv 16 signal 27 } 
	{ p_read12 sc_in sc_lv 16 signal 28 } 
	{ p_read18 sc_in sc_lv 16 signal 29 } 
	{ p_read24 sc_in sc_lv 16 signal 30 } 
	{ xn_current_2 sc_out sc_lv 16 signal 31 } 
	{ xn_current_2_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_read7 sc_in sc_lv 16 signal 32 } 
	{ p_read13 sc_in sc_lv 16 signal 33 } 
	{ p_read19 sc_in sc_lv 16 signal 34 } 
	{ p_read25 sc_in sc_lv 16 signal 35 } 
	{ xn_current_3 sc_out sc_lv 16 signal 36 } 
	{ xn_current_3_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_read8 sc_in sc_lv 16 signal 37 } 
	{ p_read14 sc_in sc_lv 16 signal 38 } 
	{ p_read20 sc_in sc_lv 16 signal 39 } 
	{ p_read26 sc_in sc_lv 16 signal 40 } 
	{ xn_current_4 sc_out sc_lv 16 signal 41 } 
	{ xn_current_4_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ p_read9 sc_in sc_lv 16 signal 42 } 
	{ p_read15 sc_in sc_lv 16 signal 43 } 
	{ p_read21 sc_in sc_lv 16 signal 44 } 
	{ p_read27 sc_in sc_lv 16 signal 45 } 
	{ xn_current_5 sc_out sc_lv 16 signal 46 } 
	{ xn_current_5_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ write_flag84_1_out sc_out sc_lv 1 signal 47 } 
	{ write_flag84_1_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ J_current_1_out sc_out sc_lv 32 signal 48 } 
	{ J_current_1_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ lhs_out sc_out sc_lv 8 signal 49 } 
	{ lhs_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ index_1_out sc_out sc_lv 8 signal 50 } 
	{ index_1_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ rhs_out sc_out sc_lv 8 signal 51 } 
	{ rhs_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ trunc_ln6_out sc_out sc_lv 2 signal 52 } 
	{ trunc_ln6_out_ap_vld sc_out sc_logic 1 outvld 52 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "write_flag84_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag84_0", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "branch_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "branch_0", "role": "default" }} , 
 	{ "name": "index_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_0", "role": "default" }} , 
 	{ "name": "helpedList_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0", "role": "i" }} , 
 	{ "name": "helpedList_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_0", "role": "o" }} , 
 	{ "name": "helpedList_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_0", "role": "o_ap_vld" }} , 
 	{ "name": "helpedList_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1", "role": "i" }} , 
 	{ "name": "helpedList_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_1", "role": "o" }} , 
 	{ "name": "helpedList_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_1", "role": "o_ap_vld" }} , 
 	{ "name": "helpedList_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2", "role": "i" }} , 
 	{ "name": "helpedList_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_2", "role": "o" }} , 
 	{ "name": "helpedList_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_2", "role": "o_ap_vld" }} , 
 	{ "name": "helpedList_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3", "role": "i" }} , 
 	{ "name": "helpedList_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helpedList_3", "role": "o" }} , 
 	{ "name": "helpedList_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "helpedList_3", "role": "o_ap_vld" }} , 
 	{ "name": "assignmentbegintemp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "assignmentbegintemp_V", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "location_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0", "role": "i" }} , 
 	{ "name": "location_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_0", "role": "o" }} , 
 	{ "name": "location_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_0", "role": "o_ap_vld" }} , 
 	{ "name": "location_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1", "role": "i" }} , 
 	{ "name": "location_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_1", "role": "o" }} , 
 	{ "name": "location_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_1", "role": "o_ap_vld" }} , 
 	{ "name": "location_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2", "role": "i" }} , 
 	{ "name": "location_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_2", "role": "o" }} , 
 	{ "name": "location_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_2", "role": "o_ap_vld" }} , 
 	{ "name": "location_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3", "role": "i" }} , 
 	{ "name": "location_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "location_3", "role": "o" }} , 
 	{ "name": "location_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "location_3", "role": "o_ap_vld" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "xn_current_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_0", "role": "default" }} , 
 	{ "name": "xn_current_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_0", "role": "ap_vld" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "xn_current_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_1", "role": "default" }} , 
 	{ "name": "xn_current_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_1", "role": "ap_vld" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "xn_current_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_2", "role": "default" }} , 
 	{ "name": "xn_current_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_2", "role": "ap_vld" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "xn_current_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_3", "role": "default" }} , 
 	{ "name": "xn_current_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_3", "role": "ap_vld" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "xn_current_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_4", "role": "default" }} , 
 	{ "name": "xn_current_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_4", "role": "ap_vld" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "xn_current_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_current_5", "role": "default" }} , 
 	{ "name": "xn_current_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xn_current_5", "role": "ap_vld" }} , 
 	{ "name": "write_flag84_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag84_1_out", "role": "default" }} , 
 	{ "name": "write_flag84_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag84_1_out", "role": "ap_vld" }} , 
 	{ "name": "J_current_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "J_current_1_out", "role": "default" }} , 
 	{ "name": "J_current_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "J_current_1_out", "role": "ap_vld" }} , 
 	{ "name": "lhs_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lhs_out", "role": "default" }} , 
 	{ "name": "lhs_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lhs_out", "role": "ap_vld" }} , 
 	{ "name": "index_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "index_1_out", "role": "default" }} , 
 	{ "name": "index_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "index_1_out", "role": "ap_vld" }} , 
 	{ "name": "rhs_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rhs_out", "role": "default" }} , 
 	{ "name": "rhs_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rhs_out", "role": "ap_vld" }} , 
 	{ "name": "trunc_ln6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln6_out", "role": "default" }} , 
 	{ "name": "trunc_ln6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trunc_ln6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
			{"Name" : "write_flag84_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "branch_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "helpedList_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "helpedList_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "helpedList_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "helpedList_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "assignmentbegintemp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "location_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "location_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "location_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "location_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_current_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag84_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "J_current_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lhs_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rhs_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "TFLOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_8_1_1_U1061", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_32_1_1_U1062", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1063", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1064", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1065", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1066", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1067", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_16_1_1_U1068", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_48_8_1_1_U1069", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ThreadPE_Pipeline_TFLOOP3 {
		write_flag84_0 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		branch_0 {Type I LastRead 0 FirstWrite -1}
		index_0 {Type I LastRead 0 FirstWrite -1}
		helpedList_0 {Type IO LastRead 1 FirstWrite 1}
		helpedList_1 {Type IO LastRead 1 FirstWrite 1}
		helpedList_2 {Type IO LastRead 1 FirstWrite 1}
		helpedList_3 {Type IO LastRead 1 FirstWrite 1}
		assignmentbegintemp_V {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		location_0 {Type IO LastRead 2 FirstWrite 1}
		location_1 {Type IO LastRead 2 FirstWrite 1}
		location_2 {Type IO LastRead 2 FirstWrite 1}
		location_3 {Type IO LastRead 2 FirstWrite 1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		xn_current_0 {Type O LastRead -1 FirstWrite 1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		xn_current_1 {Type O LastRead -1 FirstWrite 1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		xn_current_2 {Type O LastRead -1 FirstWrite 1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		xn_current_3 {Type O LastRead -1 FirstWrite 1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		xn_current_4 {Type O LastRead -1 FirstWrite 1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		xn_current_5 {Type O LastRead -1 FirstWrite 1}
		write_flag84_1_out {Type O LastRead -1 FirstWrite 1}
		J_current_1_out {Type O LastRead -1 FirstWrite 1}
		lhs_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}
		rhs_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	write_flag84_0 { ap_none {  { write_flag84_0 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	branch_0 { ap_none {  { branch_0 in_data 0 8 } } }
	index_0 { ap_none {  { index_0 in_data 0 8 } } }
	helpedList_0 { ap_ovld {  { helpedList_0_i in_data 0 8 }  { helpedList_0_o out_data 1 8 }  { helpedList_0_o_ap_vld out_vld 1 1 } } }
	helpedList_1 { ap_ovld {  { helpedList_1_i in_data 0 8 }  { helpedList_1_o out_data 1 8 }  { helpedList_1_o_ap_vld out_vld 1 1 } } }
	helpedList_2 { ap_ovld {  { helpedList_2_i in_data 0 8 }  { helpedList_2_o out_data 1 8 }  { helpedList_2_o_ap_vld out_vld 1 1 } } }
	helpedList_3 { ap_ovld {  { helpedList_3_i in_data 0 8 }  { helpedList_3_o out_data 1 8 }  { helpedList_3_o_ap_vld out_vld 1 1 } } }
	assignmentbegintemp_V { ap_none {  { assignmentbegintemp_V in_data 0 8 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 32 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 32 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 32 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 32 } } }
	location_0 { ap_ovld {  { location_0_i in_data 0 8 }  { location_0_o out_data 1 8 }  { location_0_o_ap_vld out_vld 1 1 } } }
	location_1 { ap_ovld {  { location_1_i in_data 0 8 }  { location_1_o out_data 1 8 }  { location_1_o_ap_vld out_vld 1 1 } } }
	location_2 { ap_ovld {  { location_2_i in_data 0 8 }  { location_2_o out_data 1 8 }  { location_2_o_ap_vld out_vld 1 1 } } }
	location_3 { ap_ovld {  { location_3_i in_data 0 8 }  { location_3_o out_data 1 8 }  { location_3_o_ap_vld out_vld 1 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 16 } } }
	xn_current_0 { ap_vld {  { xn_current_0 out_data 1 16 }  { xn_current_0_ap_vld out_vld 1 1 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 16 } } }
	xn_current_1 { ap_vld {  { xn_current_1 out_data 1 16 }  { xn_current_1_ap_vld out_vld 1 1 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 16 } } }
	xn_current_2 { ap_vld {  { xn_current_2 out_data 1 16 }  { xn_current_2_ap_vld out_vld 1 1 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 16 } } }
	xn_current_3 { ap_vld {  { xn_current_3 out_data 1 16 }  { xn_current_3_ap_vld out_vld 1 1 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 16 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 16 } } }
	xn_current_4 { ap_vld {  { xn_current_4 out_data 1 16 }  { xn_current_4_ap_vld out_vld 1 1 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 16 } } }
	xn_current_5 { ap_vld {  { xn_current_5 out_data 1 16 }  { xn_current_5_ap_vld out_vld 1 1 } } }
	write_flag84_1_out { ap_vld {  { write_flag84_1_out out_data 1 1 }  { write_flag84_1_out_ap_vld out_vld 1 1 } } }
	J_current_1_out { ap_vld {  { J_current_1_out out_data 1 32 }  { J_current_1_out_ap_vld out_vld 1 1 } } }
	lhs_out { ap_vld {  { lhs_out out_data 1 8 }  { lhs_out_ap_vld out_vld 1 1 } } }
	index_1_out { ap_vld {  { index_1_out out_data 1 8 }  { index_1_out_ap_vld out_vld 1 1 } } }
	rhs_out { ap_vld {  { rhs_out out_data 1 8 }  { rhs_out_ap_vld out_vld 1 1 } } }
	trunc_ln6_out { ap_vld {  { trunc_ln6_out out_data 1 2 }  { trunc_ln6_out_ap_vld out_vld 1 1 } } }
}
