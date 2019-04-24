set moduleName key_expansion
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {key_expansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ key_V int 128 regular  }
	{ sub_key_V_2 int 128 regular {array 11 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sub_key_V_2", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ key_V sc_in sc_lv 128 signal 0 } 
	{ sub_key_V_2_address0 sc_out sc_lv 4 signal 1 } 
	{ sub_key_V_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ sub_key_V_2_we0 sc_out sc_logic 1 signal 1 } 
	{ sub_key_V_2_d0 sc_out sc_lv 128 signal 1 } 
	{ sub_key_V_2_q0 sc_in sc_lv 128 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "key_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "key_V", "role": "default" }} , 
 	{ "name": "sub_key_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sub_key_V_2", "role": "address0" }} , 
 	{ "name": "sub_key_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sub_key_V_2", "role": "ce0" }} , 
 	{ "name": "sub_key_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sub_key_V_2", "role": "we0" }} , 
 	{ "name": "sub_key_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sub_key_V_2", "role": "d0" }} , 
 	{ "name": "sub_key_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sub_key_V_2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "key_expansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "key_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_key_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rcon_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rcon_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U713", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U714", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U715", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U716", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	key_expansion {
		key_V {Type I LastRead 0 FirstWrite -1}
		sub_key_V_2 {Type IO LastRead 1 FirstWrite 0}
		rcon_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key_V { ap_none {  { key_V in_data 0 128 } } }
	sub_key_V_2 { ap_memory {  { sub_key_V_2_address0 mem_address 1 4 }  { sub_key_V_2_ce0 mem_ce 1 1 }  { sub_key_V_2_we0 mem_we 1 1 }  { sub_key_V_2_d0 mem_din 1 128 }  { sub_key_V_2_q0 mem_dout 0 128 } } }
}
