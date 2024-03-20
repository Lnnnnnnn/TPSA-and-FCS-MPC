set moduleName MPCthread
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MPCthread}
set C_modelType { int 544 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ p_read1 int 16 regular  }
	{ p_read3 int 8 regular  }
	{ p_read2 int 8 regular  }
	{ p_read5 int 8 regular  }
	{ INIT_index int 8 regular  }
	{ p_read6 int 8 regular  }
	{ INIT_branch int 8 regular  }
	{ p_read7 int 8 regular  }
	{ p_read8 int 8 regular  }
	{ p_read9 int 8 regular  }
	{ p_read10 int 8 regular  }
	{ p_read11 int 8 regular  }
	{ p_read12 int 8 regular  }
	{ p_read13 int 8 regular  }
	{ p_read14 int 8 regular  }
	{ p_read15 int 8 regular  }
	{ p_read4 int 32 regular  }
	{ p_read17 int 32 regular  }
	{ p_read18 int 32 regular  }
	{ p_read19 int 32 regular  }
	{ p_read20 int 32 regular  }
	{ p_read21 int 32 regular  }
	{ p_read22 int 32 regular  }
	{ p_read23 int 32 regular  }
	{ p_read24 int 32 regular  }
	{ p_read25 int 32 regular  }
	{ p_read26 int 8 regular  }
	{ p_read27 int 8 regular  }
	{ p_read28 int 8 regular  }
	{ p_read29 int 8 regular  }
	{ p_read30 int 8 regular  }
	{ p_read31 int 8 regular  }
	{ p_read32 int 8 regular  }
	{ p_read33 int 8 regular  }
	{ p_read34 int 8 regular  }
	{ helper_assignment_number int 8 regular  }
	{ p_read35 int 7 regular  }
	{ p_read16 int 7 regular  }
	{ p_read210 int 7 regular  }
	{ UBarUnc int 16 regular {array 9 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "INIT_index", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "INIT_branch", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "helper_assignment_number", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_read210", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "UBarUnc", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 544} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 16 signal 1 } 
	{ p_read3 sc_in sc_lv 8 signal 2 } 
	{ p_read2 sc_in sc_lv 8 signal 3 } 
	{ p_read5 sc_in sc_lv 8 signal 4 } 
	{ INIT_index sc_in sc_lv 8 signal 5 } 
	{ p_read6 sc_in sc_lv 8 signal 6 } 
	{ INIT_branch sc_in sc_lv 8 signal 7 } 
	{ p_read7 sc_in sc_lv 8 signal 8 } 
	{ p_read8 sc_in sc_lv 8 signal 9 } 
	{ p_read9 sc_in sc_lv 8 signal 10 } 
	{ p_read10 sc_in sc_lv 8 signal 11 } 
	{ p_read11 sc_in sc_lv 8 signal 12 } 
	{ p_read12 sc_in sc_lv 8 signal 13 } 
	{ p_read13 sc_in sc_lv 8 signal 14 } 
	{ p_read14 sc_in sc_lv 8 signal 15 } 
	{ p_read15 sc_in sc_lv 8 signal 16 } 
	{ p_read4 sc_in sc_lv 32 signal 17 } 
	{ p_read17 sc_in sc_lv 32 signal 18 } 
	{ p_read18 sc_in sc_lv 32 signal 19 } 
	{ p_read19 sc_in sc_lv 32 signal 20 } 
	{ p_read20 sc_in sc_lv 32 signal 21 } 
	{ p_read21 sc_in sc_lv 32 signal 22 } 
	{ p_read22 sc_in sc_lv 32 signal 23 } 
	{ p_read23 sc_in sc_lv 32 signal 24 } 
	{ p_read24 sc_in sc_lv 32 signal 25 } 
	{ p_read25 sc_in sc_lv 32 signal 26 } 
	{ p_read26 sc_in sc_lv 8 signal 27 } 
	{ p_read27 sc_in sc_lv 8 signal 28 } 
	{ p_read28 sc_in sc_lv 8 signal 29 } 
	{ p_read29 sc_in sc_lv 8 signal 30 } 
	{ p_read30 sc_in sc_lv 8 signal 31 } 
	{ p_read31 sc_in sc_lv 8 signal 32 } 
	{ p_read32 sc_in sc_lv 8 signal 33 } 
	{ p_read33 sc_in sc_lv 8 signal 34 } 
	{ p_read34 sc_in sc_lv 8 signal 35 } 
	{ helper_assignment_number sc_in sc_lv 8 signal 36 } 
	{ p_read35 sc_in sc_lv 7 signal 37 } 
	{ p_read16 sc_in sc_lv 7 signal 38 } 
	{ p_read210 sc_in sc_lv 7 signal 39 } 
	{ UBarUnc_address0 sc_out sc_lv 4 signal 40 } 
	{ UBarUnc_ce0 sc_out sc_logic 1 signal 40 } 
	{ UBarUnc_q0 sc_in sc_lv 16 signal 40 } 
	{ ap_return_0 sc_out sc_lv 16 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
	{ ap_return_5 sc_out sc_lv 8 signal -1 } 
	{ ap_return_6 sc_out sc_lv 8 signal -1 } 
	{ ap_return_7 sc_out sc_lv 8 signal -1 } 
	{ ap_return_8 sc_out sc_lv 8 signal -1 } 
	{ ap_return_9 sc_out sc_lv 8 signal -1 } 
	{ ap_return_10 sc_out sc_lv 8 signal -1 } 
	{ ap_return_11 sc_out sc_lv 8 signal -1 } 
	{ ap_return_12 sc_out sc_lv 8 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 32 signal -1 } 
	{ ap_return_18 sc_out sc_lv 32 signal -1 } 
	{ ap_return_19 sc_out sc_lv 32 signal -1 } 
	{ ap_return_20 sc_out sc_lv 32 signal -1 } 
	{ ap_return_21 sc_out sc_lv 32 signal -1 } 
	{ ap_return_22 sc_out sc_lv 8 signal -1 } 
	{ ap_return_23 sc_out sc_lv 8 signal -1 } 
	{ ap_return_24 sc_out sc_lv 8 signal -1 } 
	{ ap_return_25 sc_out sc_lv 8 signal -1 } 
	{ ap_return_26 sc_out sc_lv 8 signal -1 } 
	{ ap_return_27 sc_out sc_lv 8 signal -1 } 
	{ ap_return_28 sc_out sc_lv 8 signal -1 } 
	{ ap_return_29 sc_out sc_lv 8 signal -1 } 
	{ ap_return_30 sc_out sc_lv 8 signal -1 } 
	{ ap_return_31 sc_out sc_lv 32 signal -1 } 
	{ ap_return_32 sc_out sc_lv 8 signal -1 } 
	{ ap_return_33 sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "INIT_index", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INIT_index", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "INIT_branch", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INIT_branch", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "helper_assignment_number", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "helper_assignment_number", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read210", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_read210", "role": "default" }} , 
 	{ "name": "UBarUnc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "UBarUnc", "role": "address0" }} , 
 	{ "name": "UBarUnc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "UBarUnc", "role": "ce0" }} , 
 	{ "name": "UBarUnc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "UBarUnc", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MPCthread",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "INIT_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "INIT_branch", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "helper_assignment_number", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read210", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBarUnc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ThreadPE_fu_668", "Port" : "UBarUnc", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668", "Parent" : "0", "Child" : ["2", "7", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "ThreadPE",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "helper_assignment_number", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3742", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3843", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3944", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBarUnc", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_150_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP3_fu_2957", "Parent" : "1", "Child" : ["3", "4", "5", "6"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP3_fu_2957.mux_98_8_1_1_U1888", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP3_fu_2957.mux_98_32_1_1_U1889", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP3_fu_2957.mux_98_8_1_1_U1890", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP3_fu_2957.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP2_fu_3018", "Parent" : "1", "Child" : ["8", "9", "10", "11"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP2_fu_3018.mux_98_8_1_1_U1948", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP2_fu_3018.mux_98_32_1_1_U1949", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP2_fu_3018.mux_98_8_1_1_U1950", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.grp_ThreadPE_Pipeline_TFLOOP2_fu_3018.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_98_32_1_1_U2005", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_98_8_1_1_U2006", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_98_8_1_1_U2007", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_34_16_1_1_U2008", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_34_16_1_1_U2009", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_34_16_1_1_U2010", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_98_16_1_1_U2011", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_94_16_1_1_U2012", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mul_32s_32s_40_1_1_U2013", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_104_32_1_1_U2014", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mux_98_8_1_1_U2015", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ThreadPE_fu_668.mac_muladd_16s_16s_36s_36_4_1_U2016", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	MPCthread {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		INIT_index {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		INIT_branch {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		helper_assignment_number {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read210 {Type I LastRead 0 FirstWrite -1}
		UBarUnc {Type I LastRead 1 FirstWrite -1}}
	ThreadPE {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		helper_assignment_number {Type I LastRead 0 FirstWrite -1}
		p_read3742 {Type I LastRead 0 FirstWrite -1}
		p_read3843 {Type I LastRead 0 FirstWrite -1}
		p_read3944 {Type I LastRead 0 FirstWrite -1}
		UBarUnc {Type I LastRead 1 FirstWrite -1}}
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
		trunc_ln5_out {Type O LastRead -1 FirstWrite 1}}
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
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 8 } } }
	INIT_index { ap_none {  { INIT_index in_data 0 8 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 8 } } }
	INIT_branch { ap_none {  { INIT_branch in_data 0 8 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 8 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 8 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 8 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 8 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 8 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 8 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 8 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 8 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 32 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 32 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 32 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 32 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 32 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 32 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 32 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 32 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 32 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 8 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 8 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 8 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 8 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 8 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 8 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 8 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 8 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 8 } } }
	helper_assignment_number { ap_none {  { helper_assignment_number in_data 0 8 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 7 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 7 } } }
	p_read210 { ap_none {  { p_read210 in_data 0 7 } } }
	UBarUnc { ap_memory {  { UBarUnc_address0 mem_address 1 4 }  { UBarUnc_ce0 mem_ce 1 1 }  { UBarUnc_q0 mem_dout 0 16 } } }
}
