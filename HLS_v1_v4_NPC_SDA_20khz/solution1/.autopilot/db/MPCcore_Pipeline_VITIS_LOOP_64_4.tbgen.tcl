set moduleName MPCcore_Pipeline_VITIS_LOOP_64_4
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
set C_modelName {MPCcore_Pipeline_VITIS_LOOP_64_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ Xk_V int 16 regular {array 6 { 0 3 } 0 1 }  }
	{ xn_currents_V_102 int 16 regular  }
	{ xn_currents_V_103 int 16 regular  }
	{ xn_currents_V_104 int 16 regular  }
	{ xn_currents_V_105 int 16 regular  }
	{ xn_currents_V_106 int 16 regular  }
	{ xn_currents_V_107 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Xk_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xn_currents_V_102", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_currents_V_103", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_currents_V_104", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_currents_V_105", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_currents_V_106", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xn_currents_V_107", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ Xk_V_address0 sc_out sc_lv 3 signal 0 } 
	{ Xk_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ Xk_V_we0 sc_out sc_logic 1 signal 0 } 
	{ Xk_V_d0 sc_out sc_lv 16 signal 0 } 
	{ xn_currents_V_102 sc_in sc_lv 16 signal 1 } 
	{ xn_currents_V_103 sc_in sc_lv 16 signal 2 } 
	{ xn_currents_V_104 sc_in sc_lv 16 signal 3 } 
	{ xn_currents_V_105 sc_in sc_lv 16 signal 4 } 
	{ xn_currents_V_106 sc_in sc_lv 16 signal 5 } 
	{ xn_currents_V_107 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "Xk_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Xk_V", "role": "address0" }} , 
 	{ "name": "Xk_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xk_V", "role": "ce0" }} , 
 	{ "name": "Xk_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Xk_V", "role": "we0" }} , 
 	{ "name": "Xk_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Xk_V", "role": "d0" }} , 
 	{ "name": "xn_currents_V_102", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_102", "role": "default" }} , 
 	{ "name": "xn_currents_V_103", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_103", "role": "default" }} , 
 	{ "name": "xn_currents_V_104", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_104", "role": "default" }} , 
 	{ "name": "xn_currents_V_105", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_105", "role": "default" }} , 
 	{ "name": "xn_currents_V_106", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_106", "role": "default" }} , 
 	{ "name": "xn_currents_V_107", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xn_currents_V_107", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MPCcore_Pipeline_VITIS_LOOP_64_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Xk_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xn_currents_V_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_currents_V_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_currents_V_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_currents_V_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_currents_V_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "xn_currents_V_107", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U8", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MPCcore_Pipeline_VITIS_LOOP_64_4 {
		Xk_V {Type O LastRead -1 FirstWrite 0}
		xn_currents_V_102 {Type I LastRead 0 FirstWrite -1}
		xn_currents_V_103 {Type I LastRead 0 FirstWrite -1}
		xn_currents_V_104 {Type I LastRead 0 FirstWrite -1}
		xn_currents_V_105 {Type I LastRead 0 FirstWrite -1}
		xn_currents_V_106 {Type I LastRead 0 FirstWrite -1}
		xn_currents_V_107 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Xk_V { ap_memory {  { Xk_V_address0 mem_address 1 3 }  { Xk_V_ce0 mem_ce 1 1 }  { Xk_V_we0 mem_we 1 1 }  { Xk_V_d0 mem_din 1 16 } } }
	xn_currents_V_102 { ap_none {  { xn_currents_V_102 in_data 0 16 } } }
	xn_currents_V_103 { ap_none {  { xn_currents_V_103 in_data 0 16 } } }
	xn_currents_V_104 { ap_none {  { xn_currents_V_104 in_data 0 16 } } }
	xn_currents_V_105 { ap_none {  { xn_currents_V_105 in_data 0 16 } } }
	xn_currents_V_106 { ap_none {  { xn_currents_V_106 in_data 0 16 } } }
	xn_currents_V_107 { ap_none {  { xn_currents_V_107 in_data 0 16 } } }
}
