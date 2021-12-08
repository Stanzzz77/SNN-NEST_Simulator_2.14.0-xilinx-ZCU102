set moduleName update_outdata
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {update_outdata}
set C_modelType { void 0 }
set C_modelArgList {
	{ num int 30 regular  }
	{ V_m_r_read int 256 regular  }
	{ i_syn_ex_rr_read int 256 regular  }
	{ i_syn_in_rr_read int 256 regular  }
	{ r_ref_r_read int 256 regular  }
	{ input01_V int 1024 regular {axi_master 1}  }
	{ input01_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "V_m_r_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "i_syn_ex_rr_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "i_syn_in_rr_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "r_ref_r_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "input01_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input01_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_input01_V_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_AWADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_input01_V_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_input01_V_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_input01_V_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_input01_V_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_input01_V_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_input01_V_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_WDATA sc_out sc_lv 1024 signal 5 } 
	{ m_axi_input01_V_WSTRB sc_out sc_lv 128 signal 5 } 
	{ m_axi_input01_V_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_ARADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_input01_V_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_input01_V_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_input01_V_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_input01_V_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_input01_V_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_input01_V_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_input01_V_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_input01_V_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_RDATA sc_in sc_lv 1024 signal 5 } 
	{ m_axi_input01_V_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_input01_V_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_input01_V_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_input01_V_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_input01_V_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_input01_V_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_input01_V_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_input01_V_BUSER sc_in sc_lv 1 signal 5 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ num sc_in sc_lv 30 signal 0 } 
	{ V_m_r_read sc_in sc_lv 256 signal 1 } 
	{ i_syn_ex_rr_read sc_in sc_lv 256 signal 2 } 
	{ i_syn_in_rr_read sc_in sc_lv 256 signal 3 } 
	{ r_ref_r_read sc_in sc_lv 256 signal 4 } 
	{ input01_V_offset sc_in sc_lv 25 signal 6 } 
	{ input01_V_blk_n_AW sc_out sc_logic 1 signal -1 } 
	{ input01_V_blk_n_W sc_out sc_logic 1 signal -1 } 
	{ input01_V_blk_n_B sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_input01_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input01_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input01_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input01_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "AWID" }} , 
 	{ "name": "m_axi_input01_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input01_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input01_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input01_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input01_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input01_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input01_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input01_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input01_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input01_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_input01_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_input01_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input01_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_input01_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input01_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input01_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_input01_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "WID" }} , 
 	{ "name": "m_axi_input01_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_input01_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input01_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input01_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input01_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "ARID" }} , 
 	{ "name": "m_axi_input01_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input01_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input01_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input01_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input01_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input01_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input01_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input01_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input01_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input01_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_input01_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_input01_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input01_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_input01_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_input01_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "RID" }} , 
 	{ "name": "m_axi_input01_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_input01_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_input01_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_input01_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_input01_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_input01_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "BID" }} , 
 	{ "name": "m_axi_input01_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V", "role": "BUSER" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "num", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "num", "role": "default" }} , 
 	{ "name": "V_m_r_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "V_m_r_read", "role": "default" }} , 
 	{ "name": "i_syn_ex_rr_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "i_syn_ex_rr_read", "role": "default" }} , 
 	{ "name": "i_syn_in_rr_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "i_syn_in_rr_read", "role": "default" }} , 
 	{ "name": "r_ref_r_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "r_ref_r_read", "role": "default" }} , 
 	{ "name": "input01_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "input01_V_offset", "role": "default" }} , 
 	{ "name": "input01_V_blk_n_AW", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V_blk_n_AW", "role": "default" }} , 
 	{ "name": "input01_V_blk_n_W", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V_blk_n_W", "role": "default" }} , 
 	{ "name": "input01_V_blk_n_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01_V_blk_n_B", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "update_outdata",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_m_r_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_syn_ex_rr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_syn_in_rr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_ref_r_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input01_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "input01_V_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "input01_V_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "input01_V_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "input01_V_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	update_outdata {
		num {Type I LastRead 0 FirstWrite -1}
		V_m_r_read {Type I LastRead 0 FirstWrite -1}
		i_syn_ex_rr_read {Type I LastRead 0 FirstWrite -1}
		i_syn_in_rr_read {Type I LastRead 0 FirstWrite -1}
		r_ref_r_read {Type I LastRead 0 FirstWrite -1}
		input01_V {Type O LastRead 3 FirstWrite 2}
		input01_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num { ap_none {  { num in_data 0 30 } } }
	V_m_r_read { ap_none {  { V_m_r_read in_data 0 256 } } }
	i_syn_ex_rr_read { ap_none {  { i_syn_ex_rr_read in_data 0 256 } } }
	i_syn_in_rr_read { ap_none {  { i_syn_in_rr_read in_data 0 256 } } }
	r_ref_r_read { ap_none {  { r_ref_r_read in_data 0 256 } } }
	input01_V { m_axi {  { m_axi_input01_V_AWVALID VALID 1 1 }  { m_axi_input01_V_AWREADY READY 0 1 }  { m_axi_input01_V_AWADDR ADDR 1 32 }  { m_axi_input01_V_AWID ID 1 1 }  { m_axi_input01_V_AWLEN LEN 1 32 }  { m_axi_input01_V_AWSIZE SIZE 1 3 }  { m_axi_input01_V_AWBURST BURST 1 2 }  { m_axi_input01_V_AWLOCK LOCK 1 2 }  { m_axi_input01_V_AWCACHE CACHE 1 4 }  { m_axi_input01_V_AWPROT PROT 1 3 }  { m_axi_input01_V_AWQOS QOS 1 4 }  { m_axi_input01_V_AWREGION REGION 1 4 }  { m_axi_input01_V_AWUSER USER 1 1 }  { m_axi_input01_V_WVALID VALID 1 1 }  { m_axi_input01_V_WREADY READY 0 1 }  { m_axi_input01_V_WDATA DATA 1 1024 }  { m_axi_input01_V_WSTRB STRB 1 128 }  { m_axi_input01_V_WLAST LAST 1 1 }  { m_axi_input01_V_WID ID 1 1 }  { m_axi_input01_V_WUSER USER 1 1 }  { m_axi_input01_V_ARVALID VALID 1 1 }  { m_axi_input01_V_ARREADY READY 0 1 }  { m_axi_input01_V_ARADDR ADDR 1 32 }  { m_axi_input01_V_ARID ID 1 1 }  { m_axi_input01_V_ARLEN LEN 1 32 }  { m_axi_input01_V_ARSIZE SIZE 1 3 }  { m_axi_input01_V_ARBURST BURST 1 2 }  { m_axi_input01_V_ARLOCK LOCK 1 2 }  { m_axi_input01_V_ARCACHE CACHE 1 4 }  { m_axi_input01_V_ARPROT PROT 1 3 }  { m_axi_input01_V_ARQOS QOS 1 4 }  { m_axi_input01_V_ARREGION REGION 1 4 }  { m_axi_input01_V_ARUSER USER 1 1 }  { m_axi_input01_V_RVALID VALID 0 1 }  { m_axi_input01_V_RREADY READY 1 1 }  { m_axi_input01_V_RDATA DATA 0 1024 }  { m_axi_input01_V_RLAST LAST 0 1 }  { m_axi_input01_V_RID ID 0 1 }  { m_axi_input01_V_RUSER USER 0 1 }  { m_axi_input01_V_RRESP RESP 0 2 }  { m_axi_input01_V_BVALID VALID 0 1 }  { m_axi_input01_V_BREADY READY 1 1 }  { m_axi_input01_V_BRESP RESP 0 2 }  { m_axi_input01_V_BID ID 0 1 }  { m_axi_input01_V_BUSER USER 0 1 } } }
	input01_V_offset { ap_none {  { input01_V_offset in_data 0 25 } } }
}
