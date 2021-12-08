set moduleName execute
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {execute}
set C_modelType { int 1536 }
set C_modelArgList {
	{ i int 30 regular  }
	{ P20_s float 32 regular  }
	{ P22_s float 32 regular  }
	{ P11ex_s float 32 regular  }
	{ P11in_s float 32 regular  }
	{ P21ex_s float 32 regular  }
	{ P21in_s float 32 regular  }
	{ Theta_s float 32 regular  }
	{ RefractoryCounts_s float 32 regular  }
	{ V_reset_s float 32 regular  }
	{ weighted_spikes_ex_s int 256 regular  }
	{ weighted_spikes_in_s int 256 regular  }
	{ I_e_read int 256 regular  }
	{ i_syn_ex_read int 256 regular  }
	{ i_syn_in_read int 256 regular  }
	{ r_ref_read int 256 regular  }
	{ V_m_read int 256 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "P20_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P22_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P11ex_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P11in_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P21ex_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P21in_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Theta_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "RefractoryCounts_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "V_reset_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weighted_spikes_ex_s", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "weighted_spikes_in_s", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "I_e_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "i_syn_ex_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "i_syn_in_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "r_ref_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "V_m_read", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1536} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ i sc_in sc_lv 30 signal 0 } 
	{ P20_s sc_in sc_lv 32 signal 1 } 
	{ P22_s sc_in sc_lv 32 signal 2 } 
	{ P11ex_s sc_in sc_lv 32 signal 3 } 
	{ P11in_s sc_in sc_lv 32 signal 4 } 
	{ P21ex_s sc_in sc_lv 32 signal 5 } 
	{ P21in_s sc_in sc_lv 32 signal 6 } 
	{ Theta_s sc_in sc_lv 32 signal 7 } 
	{ RefractoryCounts_s sc_in sc_lv 32 signal 8 } 
	{ V_reset_s sc_in sc_lv 32 signal 9 } 
	{ weighted_spikes_ex_s sc_in sc_lv 256 signal 10 } 
	{ weighted_spikes_in_s sc_in sc_lv 256 signal 11 } 
	{ I_e_read sc_in sc_lv 256 signal 12 } 
	{ i_syn_ex_read sc_in sc_lv 256 signal 13 } 
	{ i_syn_in_read sc_in sc_lv 256 signal 14 } 
	{ r_ref_read sc_in sc_lv 256 signal 15 } 
	{ V_m_read sc_in sc_lv 256 signal 16 } 
	{ ap_return_0 sc_out sc_lv 256 signal -1 } 
	{ ap_return_1 sc_out sc_lv 256 signal -1 } 
	{ ap_return_2 sc_out sc_lv 256 signal -1 } 
	{ ap_return_3 sc_out sc_lv 256 signal -1 } 
	{ ap_return_4 sc_out sc_lv 256 signal -1 } 
	{ ap_return_5 sc_out sc_lv 256 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "P20_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P20_s", "role": "default" }} , 
 	{ "name": "P22_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P22_s", "role": "default" }} , 
 	{ "name": "P11ex_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P11ex_s", "role": "default" }} , 
 	{ "name": "P11in_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P11in_s", "role": "default" }} , 
 	{ "name": "P21ex_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P21ex_s", "role": "default" }} , 
 	{ "name": "P21in_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P21in_s", "role": "default" }} , 
 	{ "name": "Theta_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Theta_s", "role": "default" }} , 
 	{ "name": "RefractoryCounts_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RefractoryCounts_s", "role": "default" }} , 
 	{ "name": "V_reset_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_reset_s", "role": "default" }} , 
 	{ "name": "weighted_spikes_ex_s", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "weighted_spikes_ex_s", "role": "default" }} , 
 	{ "name": "weighted_spikes_in_s", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "weighted_spikes_in_s", "role": "default" }} , 
 	{ "name": "I_e_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "I_e_read", "role": "default" }} , 
 	{ "name": "i_syn_ex_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "i_syn_ex_read", "role": "default" }} , 
 	{ "name": "i_syn_in_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "i_syn_in_read", "role": "default" }} , 
 	{ "name": "r_ref_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "r_ref_read", "role": "default" }} , 
 	{ "name": "V_m_read", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "V_m_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P20_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "P22_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "P11ex_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "P11in_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "P21ex_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "P21in_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "Theta_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "RefractoryCounts_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_reset_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "weighted_spikes_ex_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "weighted_spikes_in_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "I_e_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_syn_ex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_syn_in_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_ref_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_m_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U6", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U7", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U8", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U9", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U10", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U11", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U12", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U13", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U14", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U15", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U16", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U17", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U18", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U19", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U20", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U21", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U22", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U23", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U24", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U25", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U26", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U27", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U28", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U29", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U30", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U31", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U32", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U33", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U34", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U35", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U36", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U37", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U38", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U39", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U40", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U41", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U42", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U43", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U44", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U45", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U46", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U47", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U48", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U49", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U50", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U51", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U52", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fadd_32nbkb_U53", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U54", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U55", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U56", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U57", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U58", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U59", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U60", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U61", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U62", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U63", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U64", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U65", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U66", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U67", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U68", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U69", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U70", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U71", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U72", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U73", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U74", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U75", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U76", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U77", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U78", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U79", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U80", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U81", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U82", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U83", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U84", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U85", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U86", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U87", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U88", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U89", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U90", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U91", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U92", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U93", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U94", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U95", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U96", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U97", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U98", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U99", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U100", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fmul_32ncud_U101", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U102", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U103", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U104", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U105", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U106", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U107", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U108", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U109", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U110", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U111", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U112", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U113", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U114", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U115", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U116", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_fcmp_32ndEe_U117", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	execute {
		i {Type I LastRead 0 FirstWrite -1}
		P20_s {Type I LastRead 0 FirstWrite -1}
		P22_s {Type I LastRead 0 FirstWrite -1}
		P11ex_s {Type I LastRead 0 FirstWrite -1}
		P11in_s {Type I LastRead 0 FirstWrite -1}
		P21ex_s {Type I LastRead 0 FirstWrite -1}
		P21in_s {Type I LastRead 0 FirstWrite -1}
		Theta_s {Type I LastRead 0 FirstWrite -1}
		RefractoryCounts_s {Type I LastRead 0 FirstWrite -1}
		V_reset_s {Type I LastRead 0 FirstWrite -1}
		weighted_spikes_ex_s {Type I LastRead 0 FirstWrite -1}
		weighted_spikes_in_s {Type I LastRead 0 FirstWrite -1}
		I_e_read {Type I LastRead 0 FirstWrite -1}
		i_syn_ex_read {Type I LastRead 0 FirstWrite -1}
		i_syn_in_read {Type I LastRead 0 FirstWrite -1}
		r_ref_read {Type I LastRead 0 FirstWrite -1}
		V_m_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i { ap_none {  { i in_data 0 30 } } }
	P20_s { ap_none {  { P20_s in_data 0 32 } } }
	P22_s { ap_none {  { P22_s in_data 0 32 } } }
	P11ex_s { ap_none {  { P11ex_s in_data 0 32 } } }
	P11in_s { ap_none {  { P11in_s in_data 0 32 } } }
	P21ex_s { ap_none {  { P21ex_s in_data 0 32 } } }
	P21in_s { ap_none {  { P21in_s in_data 0 32 } } }
	Theta_s { ap_none {  { Theta_s in_data 0 32 } } }
	RefractoryCounts_s { ap_none {  { RefractoryCounts_s in_data 0 32 } } }
	V_reset_s { ap_none {  { V_reset_s in_data 0 32 } } }
	weighted_spikes_ex_s { ap_none {  { weighted_spikes_ex_s in_data 0 256 } } }
	weighted_spikes_in_s { ap_none {  { weighted_spikes_in_s in_data 0 256 } } }
	I_e_read { ap_none {  { I_e_read in_data 0 256 } } }
	i_syn_ex_read { ap_none {  { i_syn_ex_read in_data 0 256 } } }
	i_syn_in_read { ap_none {  { i_syn_in_read in_data 0 256 } } }
	r_ref_read { ap_none {  { r_ref_read in_data 0 256 } } }
	V_m_read { ap_none {  { V_m_read in_data 0 256 } } }
}
