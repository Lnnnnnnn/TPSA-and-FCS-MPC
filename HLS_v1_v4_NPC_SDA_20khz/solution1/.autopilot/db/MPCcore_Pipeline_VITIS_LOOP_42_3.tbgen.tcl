set moduleName MPCcore_Pipeline_VITIS_LOOP_42_3
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
set C_modelName {MPCcore_Pipeline_VITIS_LOOP_42_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ Yref_V int 16 regular {array 18 { 0 0 } 0 1 }  }
	{ xref_0_load int 16 regular  }
	{ xref_1_load int 16 regular  }
	{ xref_2_load int 16 regular  }
	{ xref_3_load int 16 regular  }
	{ xref_4_load int 16 regular  }
	{ xref_5_load int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Yref_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xref_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xref_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xref_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xref_3_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xref_4_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xref_5_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ Yref_V_address0 sc_out sc_lv 5 signal 0 } 
	{ Yref_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ Yref_V_we0 sc_out sc_logic 1 signal 0 } 
	{ Yref_V_d0 sc_out sc_lv 16 signal 0 } 
	{ Yref_V_address1 sc_out sc_lv 5 signal 0 } 
	{ Yref_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ Yref_V_we1 sc_out sc_logic 1 signal 0 } 
	{ Yref_V_d1 sc_out sc_lv 16 signal 0 } 
	{ xref_0_load sc_in sc_lv 16 signal 1 } 
	{ xref_1_load sc_in sc_lv 16 signal 2 } 
	{ xref_2_load sc_in sc_lv 16 signal 3 } 
	{ xref_3_load sc_in sc_lv 16 signal 4 } 
	{ xref_4_load sc_in sc_lv 16 signal 5 } 
	{ xref_5_load sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "Yref_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Yref_V", "role": "address0" }} , 
 	{ "name": "Yref_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Yref_V", "role": "ce0" }} , 
 	{ "name": "Yref_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Yref_V", "role": "we0" }} , 
 	{ "name": "Yref_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Yref_V", "role": "d0" }} , 
 	{ "name": "Yref_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Yref_V", "role": "address1" }} , 
 	{ "name": "Yref_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Yref_V", "role": "ce1" }} , 
 	{ "name": "Yref_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Yref_V", "role": "we1" }} , 
 	{ "name": "Yref_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Yref_V", "role": "d1" }} , 
 	{ "name": "xref_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_0_load", "role": "default" }} , 
 	{ "name": "xref_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_1_load", "role": "default" }} , 
 	{ "name": "xref_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_2_load", "role": "default" }} , 
 	{ "name": "xref_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_3_load", "role": "default" }} , 
 	{ "name": "xref_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_4_load", "role": "default" }} , 
 	{ "name": "xref_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xref_5_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MPCcore_Pipeline_VITIS_LOOP_42_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Yref_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xref_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "xref_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "xref_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "xref_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "xref_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "xref_5_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MPCcore_Pipeline_VITIS_LOOP_42_3 {
		Yref_V {Type O LastRead -1 FirstWrite 0}
		xref_0_load {Type I LastRead 0 FirstWrite -1}
		xref_1_load {Type I LastRead 0 FirstWrite -1}
		xref_2_load {Type I LastRead 0 FirstWrite -1}
		xref_3_load {Type I LastRead 0 FirstWrite -1}
		xref_4_load {Type I LastRead 0 FirstWrite -1}
		xref_5_load {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Yref_V { ap_memory {  { Yref_V_address0 mem_address 1 5 }  { Yref_V_ce0 mem_ce 1 1 }  { Yref_V_we0 mem_we 1 1 }  { Yref_V_d0 mem_din 1 16 }  { Yref_V_address1 MemPortADDR2 1 5 }  { Yref_V_ce1 MemPortCE2 1 1 }  { Yref_V_we1 MemPortWE2 1 1 }  { Yref_V_d1 MemPortDIN2 1 16 } } }
	xref_0_load { ap_none {  { xref_0_load in_data 0 16 } } }
	xref_1_load { ap_none {  { xref_1_load in_data 0 16 } } }
	xref_2_load { ap_none {  { xref_2_load in_data 0 16 } } }
	xref_3_load { ap_none {  { xref_3_load in_data 0 16 } } }
	xref_4_load { ap_none {  { xref_4_load in_data 0 16 } } }
	xref_5_load { ap_none {  { xref_5_load in_data 0 16 } } }
}
