set C_TypeInfoList {{ 
"update_n" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"num": [[], {"scalar": "int"}] }, {"stable_para": [[], {"array": [ {"scalar": "float"}, [16]]}] }, {"input00": [[], {"array": ["0", [900000]]}] }, {"input01": [[], {"array": ["0", [900000]]}] }, {"output0_": [[], {"array": [ {"scalar": "int"}, [112500]]}] }, {"output1_": [[], {"array": [ {"scalar": "int"}, [112500]]}] }, {"output2_": [[], {"array": [ {"scalar": "int"}, [112500]]}] }, {"output3_": [[], {"array": [ {"scalar": "int"}, [112500]]}] }],[],""], 
"0": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}]
}}
set moduleName update_n
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
set C_modelName {update_n}
set C_modelType { void 0 }
set C_modelArgList {
	{ stable_para int 512 regular {axi_master 0}  }
	{ input01 int 1024 regular {axi_master 0}  }
	{ input00 int 1024 regular {axi_master 2}  }
	{ output0_s int 32 regular {axi_master 1}  }
	{ output1_s int 32 regular {axi_master 1}  }
	{ num int 32 regular {axi_slave 0}  }
	{ stable_para_offset int 32 regular {axi_slave 0}  }
	{ input00_V int 32 regular {axi_slave 0}  }
	{ input01_V int 32 regular {axi_slave 0}  }
	{ output0_offset int 32 regular {axi_slave 0}  }
	{ output1_offset int 32 regular {axi_slave 0}  }
	{ output2_s int 32 regular {axi_slave 0}  }
	{ output3_s int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stable_para", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":32,"up":63,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":64,"up":95,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":96,"up":127,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":128,"up":159,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":160,"up":191,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":192,"up":223,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":224,"up":255,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":256,"up":287,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":288,"up":319,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":320,"up":351,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":352,"up":383,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":384,"up":415,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":416,"up":447,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":448,"up":479,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":480,"up":511,"cElement": [{"cName": "stable_para","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "stable_para_offset","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "input01", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 899992,"step" : 8}]}]},{"low":128,"up":255,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 1,"up" : 899993,"step" : 8}]}]},{"low":256,"up":383,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 2,"up" : 899994,"step" : 8}]}]},{"low":384,"up":511,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 3,"up" : 899995,"step" : 8}]}]},{"low":512,"up":639,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 4,"up" : 899996,"step" : 8}]}]},{"low":640,"up":767,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 5,"up" : 899997,"step" : 8}]}]},{"low":768,"up":895,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 6,"up" : 899998,"step" : 8}]}]},{"low":896,"up":1023,"cElement": [{"cName": "input00.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input00_V","bundle": "ctrl_bus"},"direction": "READONLY","cArray": [{"low" : 7,"up" : 899999,"step" : 8}]}]}]} , 
 	{ "Name" : "input00", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 899992,"step" : 8}]}]},{"low":128,"up":255,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 899993,"step" : 8}]}]},{"low":256,"up":383,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 2,"up" : 899994,"step" : 8}]}]},{"low":384,"up":511,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 3,"up" : 899995,"step" : 8}]}]},{"low":512,"up":639,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 4,"up" : 899996,"step" : 8}]}]},{"low":640,"up":767,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 5,"up" : 899997,"step" : 8}]}]},{"low":768,"up":895,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 6,"up" : 899998,"step" : 8}]}]},{"low":896,"up":1023,"cElement": [{"cName": "input01.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "input01_V","bundle": "ctrl_bus"},"direction": "READWRITE","cArray": [{"low" : 7,"up" : 899999,"step" : 8}]}]}]} , 
 	{ "Name" : "output0_s", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output0_","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output0_offset","bundle": "ctrl_bus"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 112499,"step" : 1}]},{"cName": "output1_","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output1_s","bundle": "ctrl_bus"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 112499,"step" : 1}]}]}]} , 
 	{ "Name" : "output1_s", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output2_","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output2_s","bundle": "ctrl_bus"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 112499,"step" : 1}]},{"cName": "output3_","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output3_s","bundle": "ctrl_bus"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 112499,"step" : 1}]}]}]} , 
 	{ "Name" : "num", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "stable_para_offset", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "input00_V", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "input01_V", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "output0_offset", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "output1_offset", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "output2_s", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "output3_s", "interface" : "axi_slave", "bundle":"ctrl_bus","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 245
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_stable_para_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_stable_para_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_stable_para_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_stable_para_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_stable_para_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_stable_para_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_stable_para_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_stable_para_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_stable_para_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_stable_para_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_stable_para_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_stable_para_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_stable_para_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_stable_para_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_stable_para_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_stable_para_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_stable_para_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_stable_para_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_stable_para_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_stable_para_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_stable_para_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_stable_para_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_stable_para_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_stable_para_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_stable_para_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_input01_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_input01_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_input01_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_input01_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_input01_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_input01_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_input01_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_input01_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_input01_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_input01_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_input01_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_input01_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_input01_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_input01_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_input01_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_input01_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input01_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_input01_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_input01_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_input01_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_input01_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_input01_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_input01_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_input01_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_input01_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_input00_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_input00_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_input00_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_input00_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_input00_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_input00_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_input00_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_WDATA sc_out sc_lv 1024 signal 2 } 
	{ m_axi_input00_WSTRB sc_out sc_lv 128 signal 2 } 
	{ m_axi_input00_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_input00_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_input00_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_input00_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_input00_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_input00_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_input00_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_input00_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_input00_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_RDATA sc_in sc_lv 1024 signal 2 } 
	{ m_axi_input00_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_input00_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_input00_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_input00_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_input00_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_input00_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_input00_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_input00_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_output0_s_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_output0_s_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_output0_s_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_output0_s_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_output0_s_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_output0_s_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_output0_s_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_output0_s_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_output0_s_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_output0_s_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_output0_s_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_output0_s_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_output0_s_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_output0_s_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_output0_s_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output0_s_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_output0_s_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_output0_s_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_output0_s_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_output0_s_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_output0_s_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_output0_s_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_output0_s_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_output0_s_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_output1_s_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_AWADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_output1_s_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_output1_s_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_output1_s_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_output1_s_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_output1_s_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_output1_s_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_output1_s_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_ARADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_output1_s_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_output1_s_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_output1_s_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_output1_s_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_output1_s_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_output1_s_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_output1_s_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_output1_s_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_output1_s_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_output1_s_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_output1_s_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_output1_s_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_output1_s_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_output1_s_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_output1_s_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_output1_s_BUSER sc_in sc_lv 1 signal 4 } 
	{ s_axi_ctrl_bus_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_bus_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_bus_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_bus_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_bus_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_bus_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_bus_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWADDR" },"address":[{"name":"update_n","role":"start","value":"0","valid_bit":"0"},{"name":"update_n","role":"continue","value":"0","valid_bit":"4"},{"name":"update_n","role":"auto_start","value":"0","valid_bit":"7"},{"name":"num","role":"data","value":"16"},{"name":"stable_para_offset","role":"data","value":"24"},{"name":"input00_V","role":"data","value":"32"},{"name":"input01_V","role":"data","value":"40"},{"name":"output0_offset","role":"data","value":"48"},{"name":"output1_offset","role":"data","value":"56"},{"name":"output2_s","role":"data","value":"64"},{"name":"output3_s","role":"data","value":"72"}] },
	{ "name": "s_axi_ctrl_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARADDR" },"address":[{"name":"update_n","role":"start","value":"0","valid_bit":"0"},{"name":"update_n","role":"done","value":"0","valid_bit":"1"},{"name":"update_n","role":"idle","value":"0","valid_bit":"2"},{"name":"update_n","role":"ready","value":"0","valid_bit":"3"},{"name":"update_n","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_bus_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_bus_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_bus_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_bus_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_bus_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_bus_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_bus_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_bus_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_bus_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl_bus", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_stable_para_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "AWVALID" }} , 
 	{ "name": "m_axi_stable_para_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "AWREADY" }} , 
 	{ "name": "m_axi_stable_para_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stable_para", "role": "AWADDR" }} , 
 	{ "name": "m_axi_stable_para_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "AWID" }} , 
 	{ "name": "m_axi_stable_para_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stable_para", "role": "AWLEN" }} , 
 	{ "name": "m_axi_stable_para_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stable_para", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_stable_para_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "AWBURST" }} , 
 	{ "name": "m_axi_stable_para_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_stable_para_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_stable_para_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stable_para", "role": "AWPROT" }} , 
 	{ "name": "m_axi_stable_para_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "AWQOS" }} , 
 	{ "name": "m_axi_stable_para_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "AWREGION" }} , 
 	{ "name": "m_axi_stable_para_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "AWUSER" }} , 
 	{ "name": "m_axi_stable_para_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "WVALID" }} , 
 	{ "name": "m_axi_stable_para_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "WREADY" }} , 
 	{ "name": "m_axi_stable_para_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "stable_para", "role": "WDATA" }} , 
 	{ "name": "m_axi_stable_para_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stable_para", "role": "WSTRB" }} , 
 	{ "name": "m_axi_stable_para_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "WLAST" }} , 
 	{ "name": "m_axi_stable_para_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "WID" }} , 
 	{ "name": "m_axi_stable_para_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "WUSER" }} , 
 	{ "name": "m_axi_stable_para_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "ARVALID" }} , 
 	{ "name": "m_axi_stable_para_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "ARREADY" }} , 
 	{ "name": "m_axi_stable_para_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stable_para", "role": "ARADDR" }} , 
 	{ "name": "m_axi_stable_para_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "ARID" }} , 
 	{ "name": "m_axi_stable_para_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stable_para", "role": "ARLEN" }} , 
 	{ "name": "m_axi_stable_para_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stable_para", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_stable_para_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "ARBURST" }} , 
 	{ "name": "m_axi_stable_para_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_stable_para_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_stable_para_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stable_para", "role": "ARPROT" }} , 
 	{ "name": "m_axi_stable_para_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "ARQOS" }} , 
 	{ "name": "m_axi_stable_para_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stable_para", "role": "ARREGION" }} , 
 	{ "name": "m_axi_stable_para_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "ARUSER" }} , 
 	{ "name": "m_axi_stable_para_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "RVALID" }} , 
 	{ "name": "m_axi_stable_para_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "RREADY" }} , 
 	{ "name": "m_axi_stable_para_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "stable_para", "role": "RDATA" }} , 
 	{ "name": "m_axi_stable_para_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "RLAST" }} , 
 	{ "name": "m_axi_stable_para_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "RID" }} , 
 	{ "name": "m_axi_stable_para_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "RUSER" }} , 
 	{ "name": "m_axi_stable_para_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "RRESP" }} , 
 	{ "name": "m_axi_stable_para_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "BVALID" }} , 
 	{ "name": "m_axi_stable_para_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "BREADY" }} , 
 	{ "name": "m_axi_stable_para_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stable_para", "role": "BRESP" }} , 
 	{ "name": "m_axi_stable_para_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "BID" }} , 
 	{ "name": "m_axi_stable_para_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stable_para", "role": "BUSER" }} , 
 	{ "name": "m_axi_input01_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input01_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input01_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input01_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "AWID" }} , 
 	{ "name": "m_axi_input01_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input01", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input01_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input01_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input01_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input01_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input01_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input01_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input01_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input01_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input01_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "WVALID" }} , 
 	{ "name": "m_axi_input01_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "WREADY" }} , 
 	{ "name": "m_axi_input01_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input01", "role": "WDATA" }} , 
 	{ "name": "m_axi_input01_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input01", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input01_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "WLAST" }} , 
 	{ "name": "m_axi_input01_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "WID" }} , 
 	{ "name": "m_axi_input01_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "WUSER" }} , 
 	{ "name": "m_axi_input01_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input01_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input01_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input01", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input01_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "ARID" }} , 
 	{ "name": "m_axi_input01_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input01", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input01_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input01_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input01_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input01_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input01_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input01", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input01_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input01_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input01", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input01_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input01_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "RVALID" }} , 
 	{ "name": "m_axi_input01_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "RREADY" }} , 
 	{ "name": "m_axi_input01_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input01", "role": "RDATA" }} , 
 	{ "name": "m_axi_input01_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "RLAST" }} , 
 	{ "name": "m_axi_input01_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "RID" }} , 
 	{ "name": "m_axi_input01_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "RUSER" }} , 
 	{ "name": "m_axi_input01_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "RRESP" }} , 
 	{ "name": "m_axi_input01_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "BVALID" }} , 
 	{ "name": "m_axi_input01_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "BREADY" }} , 
 	{ "name": "m_axi_input01_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input01", "role": "BRESP" }} , 
 	{ "name": "m_axi_input01_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "BID" }} , 
 	{ "name": "m_axi_input01_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input01", "role": "BUSER" }} , 
 	{ "name": "m_axi_input00_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input00_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input00_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input00", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input00_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "AWID" }} , 
 	{ "name": "m_axi_input00_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input00", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input00_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input00", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input00_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input00_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input00_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input00_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input00", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input00_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input00_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input00_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input00_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "WVALID" }} , 
 	{ "name": "m_axi_input00_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "WREADY" }} , 
 	{ "name": "m_axi_input00_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input00", "role": "WDATA" }} , 
 	{ "name": "m_axi_input00_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "input00", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input00_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "WLAST" }} , 
 	{ "name": "m_axi_input00_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "WID" }} , 
 	{ "name": "m_axi_input00_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "WUSER" }} , 
 	{ "name": "m_axi_input00_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input00_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input00_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input00", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input00_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "ARID" }} , 
 	{ "name": "m_axi_input00_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input00", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input00_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input00", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input00_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input00_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input00_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input00_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input00", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input00_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input00_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input00", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input00_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input00_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "RVALID" }} , 
 	{ "name": "m_axi_input00_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "RREADY" }} , 
 	{ "name": "m_axi_input00_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "input00", "role": "RDATA" }} , 
 	{ "name": "m_axi_input00_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "RLAST" }} , 
 	{ "name": "m_axi_input00_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "RID" }} , 
 	{ "name": "m_axi_input00_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "RUSER" }} , 
 	{ "name": "m_axi_input00_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "RRESP" }} , 
 	{ "name": "m_axi_input00_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "BVALID" }} , 
 	{ "name": "m_axi_input00_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "BREADY" }} , 
 	{ "name": "m_axi_input00_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input00", "role": "BRESP" }} , 
 	{ "name": "m_axi_input00_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "BID" }} , 
 	{ "name": "m_axi_input00_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input00", "role": "BUSER" }} , 
 	{ "name": "m_axi_output0_s_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output0_s_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output0_s_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output0_s", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output0_s_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "AWID" }} , 
 	{ "name": "m_axi_output0_s_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output0_s", "role": "AWLEN" }} , 
 	{ "name": "m_axi_output0_s_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output0_s", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_output0_s_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "AWBURST" }} , 
 	{ "name": "m_axi_output0_s_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_output0_s_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_output0_s_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output0_s", "role": "AWPROT" }} , 
 	{ "name": "m_axi_output0_s_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "AWQOS" }} , 
 	{ "name": "m_axi_output0_s_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "AWREGION" }} , 
 	{ "name": "m_axi_output0_s_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "AWUSER" }} , 
 	{ "name": "m_axi_output0_s_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "WVALID" }} , 
 	{ "name": "m_axi_output0_s_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "WREADY" }} , 
 	{ "name": "m_axi_output0_s_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output0_s", "role": "WDATA" }} , 
 	{ "name": "m_axi_output0_s_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "WSTRB" }} , 
 	{ "name": "m_axi_output0_s_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "WLAST" }} , 
 	{ "name": "m_axi_output0_s_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "WID" }} , 
 	{ "name": "m_axi_output0_s_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "WUSER" }} , 
 	{ "name": "m_axi_output0_s_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "ARVALID" }} , 
 	{ "name": "m_axi_output0_s_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "ARREADY" }} , 
 	{ "name": "m_axi_output0_s_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output0_s", "role": "ARADDR" }} , 
 	{ "name": "m_axi_output0_s_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "ARID" }} , 
 	{ "name": "m_axi_output0_s_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output0_s", "role": "ARLEN" }} , 
 	{ "name": "m_axi_output0_s_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output0_s", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_output0_s_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "ARBURST" }} , 
 	{ "name": "m_axi_output0_s_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_output0_s_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_output0_s_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output0_s", "role": "ARPROT" }} , 
 	{ "name": "m_axi_output0_s_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "ARQOS" }} , 
 	{ "name": "m_axi_output0_s_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output0_s", "role": "ARREGION" }} , 
 	{ "name": "m_axi_output0_s_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "ARUSER" }} , 
 	{ "name": "m_axi_output0_s_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "RVALID" }} , 
 	{ "name": "m_axi_output0_s_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "RREADY" }} , 
 	{ "name": "m_axi_output0_s_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output0_s", "role": "RDATA" }} , 
 	{ "name": "m_axi_output0_s_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "RLAST" }} , 
 	{ "name": "m_axi_output0_s_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "RID" }} , 
 	{ "name": "m_axi_output0_s_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "RUSER" }} , 
 	{ "name": "m_axi_output0_s_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "RRESP" }} , 
 	{ "name": "m_axi_output0_s_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "BVALID" }} , 
 	{ "name": "m_axi_output0_s_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "BREADY" }} , 
 	{ "name": "m_axi_output0_s_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output0_s", "role": "BRESP" }} , 
 	{ "name": "m_axi_output0_s_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "BID" }} , 
 	{ "name": "m_axi_output0_s_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output0_s", "role": "BUSER" }} , 
 	{ "name": "m_axi_output1_s_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output1_s_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output1_s_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output1_s", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output1_s_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "AWID" }} , 
 	{ "name": "m_axi_output1_s_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output1_s", "role": "AWLEN" }} , 
 	{ "name": "m_axi_output1_s_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output1_s", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_output1_s_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "AWBURST" }} , 
 	{ "name": "m_axi_output1_s_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_output1_s_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_output1_s_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output1_s", "role": "AWPROT" }} , 
 	{ "name": "m_axi_output1_s_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "AWQOS" }} , 
 	{ "name": "m_axi_output1_s_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "AWREGION" }} , 
 	{ "name": "m_axi_output1_s_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "AWUSER" }} , 
 	{ "name": "m_axi_output1_s_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "WVALID" }} , 
 	{ "name": "m_axi_output1_s_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "WREADY" }} , 
 	{ "name": "m_axi_output1_s_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output1_s", "role": "WDATA" }} , 
 	{ "name": "m_axi_output1_s_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "WSTRB" }} , 
 	{ "name": "m_axi_output1_s_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "WLAST" }} , 
 	{ "name": "m_axi_output1_s_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "WID" }} , 
 	{ "name": "m_axi_output1_s_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "WUSER" }} , 
 	{ "name": "m_axi_output1_s_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "ARVALID" }} , 
 	{ "name": "m_axi_output1_s_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "ARREADY" }} , 
 	{ "name": "m_axi_output1_s_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output1_s", "role": "ARADDR" }} , 
 	{ "name": "m_axi_output1_s_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "ARID" }} , 
 	{ "name": "m_axi_output1_s_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output1_s", "role": "ARLEN" }} , 
 	{ "name": "m_axi_output1_s_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output1_s", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_output1_s_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "ARBURST" }} , 
 	{ "name": "m_axi_output1_s_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_output1_s_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_output1_s_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output1_s", "role": "ARPROT" }} , 
 	{ "name": "m_axi_output1_s_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "ARQOS" }} , 
 	{ "name": "m_axi_output1_s_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output1_s", "role": "ARREGION" }} , 
 	{ "name": "m_axi_output1_s_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "ARUSER" }} , 
 	{ "name": "m_axi_output1_s_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "RVALID" }} , 
 	{ "name": "m_axi_output1_s_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "RREADY" }} , 
 	{ "name": "m_axi_output1_s_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output1_s", "role": "RDATA" }} , 
 	{ "name": "m_axi_output1_s_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "RLAST" }} , 
 	{ "name": "m_axi_output1_s_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "RID" }} , 
 	{ "name": "m_axi_output1_s_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "RUSER" }} , 
 	{ "name": "m_axi_output1_s_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "RRESP" }} , 
 	{ "name": "m_axi_output1_s_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "BVALID" }} , 
 	{ "name": "m_axi_output1_s_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "BREADY" }} , 
 	{ "name": "m_axi_output1_s_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output1_s", "role": "BRESP" }} , 
 	{ "name": "m_axi_output1_s_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "BID" }} , 
 	{ "name": "m_axi_output1_s_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output1_s", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "120", "121"],
		"CDFG" : "update_n",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "112546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stable_para", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stable_para_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "stable_para_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "input01", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input01_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input01_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_update_indata_fu_616", "Port" : "input00_V"}]},
			{"Name" : "input00", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "input00_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input00_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "input00_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "input00_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "input00_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_update_indata_fu_616", "Port" : "input01_V"},
					{"ID" : "121", "SubInstance" : "grp_update_outdata_fu_629", "Port" : "input01_V"}]},
			{"Name" : "output0_s", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output0_s_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "output0_s_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "output0_s_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "output1_s", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output1_s_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "output1_s_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "output1_s_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "stable_para_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "input00_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input01_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "output0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "output3_s", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_update_indata_fu_616", "SubBlockPort" : ["input00_V_blk_n_AR", "input00_V_blk_n_R", "input01_V_blk_n_AR", "input01_V_blk_n_R"]},
			{"SubInstance" : "grp_update_outdata_fu_629", "SubBlockPort" : ["input01_V_blk_n_AW", "input01_V_blk_n_W", "input01_V_blk_n_B"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_ctrl_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_stable_para_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_input01_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_input00_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_output0_s_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_n_output1_s_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U6", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U7", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U8", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U9", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U10", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U11", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U12", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U13", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U14", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U15", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U16", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U17", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U18", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U19", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U20", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U21", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U22", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U23", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U24", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U25", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U26", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U27", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U28", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U29", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U30", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U31", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U32", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U33", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U34", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U35", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U36", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U37", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U38", "Parent" : "7"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U39", "Parent" : "7"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U40", "Parent" : "7"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U41", "Parent" : "7"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U42", "Parent" : "7"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U43", "Parent" : "7"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U44", "Parent" : "7"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U45", "Parent" : "7"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U46", "Parent" : "7"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U47", "Parent" : "7"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U48", "Parent" : "7"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U49", "Parent" : "7"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U50", "Parent" : "7"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U51", "Parent" : "7"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U52", "Parent" : "7"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fadd_32nbkb_U53", "Parent" : "7"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U54", "Parent" : "7"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U55", "Parent" : "7"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U56", "Parent" : "7"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U57", "Parent" : "7"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U58", "Parent" : "7"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U59", "Parent" : "7"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U60", "Parent" : "7"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U61", "Parent" : "7"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U62", "Parent" : "7"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U63", "Parent" : "7"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U64", "Parent" : "7"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U65", "Parent" : "7"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U66", "Parent" : "7"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U67", "Parent" : "7"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U68", "Parent" : "7"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U69", "Parent" : "7"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U70", "Parent" : "7"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U71", "Parent" : "7"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U72", "Parent" : "7"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U73", "Parent" : "7"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U74", "Parent" : "7"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U75", "Parent" : "7"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U76", "Parent" : "7"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U77", "Parent" : "7"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U78", "Parent" : "7"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U79", "Parent" : "7"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U80", "Parent" : "7"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U81", "Parent" : "7"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U82", "Parent" : "7"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U83", "Parent" : "7"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U84", "Parent" : "7"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U85", "Parent" : "7"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U86", "Parent" : "7"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U87", "Parent" : "7"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U88", "Parent" : "7"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U89", "Parent" : "7"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U90", "Parent" : "7"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U91", "Parent" : "7"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U92", "Parent" : "7"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U93", "Parent" : "7"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U94", "Parent" : "7"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U95", "Parent" : "7"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U96", "Parent" : "7"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U97", "Parent" : "7"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U98", "Parent" : "7"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U99", "Parent" : "7"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U100", "Parent" : "7"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fmul_32ncud_U101", "Parent" : "7"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U102", "Parent" : "7"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U103", "Parent" : "7"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U104", "Parent" : "7"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U105", "Parent" : "7"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U106", "Parent" : "7"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U107", "Parent" : "7"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U108", "Parent" : "7"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U109", "Parent" : "7"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U110", "Parent" : "7"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U111", "Parent" : "7"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U112", "Parent" : "7"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U113", "Parent" : "7"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U114", "Parent" : "7"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U115", "Parent" : "7"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U116", "Parent" : "7"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_594.update_n_fcmp_32ndEe_U117", "Parent" : "7"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_indata_fu_616", "Parent" : "0",
		"CDFG" : "update_indata",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "input00_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input00_V_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "input00_V_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "input00_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "input01_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input01_V_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "input01_V_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "input01_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_outdata_fu_629", "Parent" : "0",
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
	update_n {
		stable_para {Type I LastRead 10 FirstWrite -1}
		input01 {Type I LastRead 8 FirstWrite -1}
		input00 {Type IO LastRead 8 FirstWrite -1}
		output0_s {Type O LastRead 40 FirstWrite 34}
		output1_s {Type O LastRead 40 FirstWrite 34}
		num {Type I LastRead 0 FirstWrite -1}
		stable_para_offset {Type I LastRead 0 FirstWrite -1}
		input00_V {Type I LastRead 0 FirstWrite -1}
		input01_V {Type I LastRead 0 FirstWrite -1}
		output0_offset {Type I LastRead 0 FirstWrite -1}
		output1_offset {Type I LastRead 0 FirstWrite -1}
		output2_s {Type I LastRead 0 FirstWrite -1}
		output3_s {Type I LastRead 0 FirstWrite -1}}
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
		V_m_read {Type I LastRead 0 FirstWrite -1}}
	update_indata {
		i {Type I LastRead 0 FirstWrite -1}
		input00_V {Type I LastRead 8 FirstWrite -1}
		input00_V_offset {Type I LastRead 0 FirstWrite -1}
		input01_V {Type I LastRead 8 FirstWrite -1}
		input01_V_offset {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "40", "Max" : "112546"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "112547"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	stable_para { m_axi {  { m_axi_stable_para_AWVALID VALID 1 1 }  { m_axi_stable_para_AWREADY READY 0 1 }  { m_axi_stable_para_AWADDR ADDR 1 32 }  { m_axi_stable_para_AWID ID 1 1 }  { m_axi_stable_para_AWLEN LEN 1 8 }  { m_axi_stable_para_AWSIZE SIZE 1 3 }  { m_axi_stable_para_AWBURST BURST 1 2 }  { m_axi_stable_para_AWLOCK LOCK 1 2 }  { m_axi_stable_para_AWCACHE CACHE 1 4 }  { m_axi_stable_para_AWPROT PROT 1 3 }  { m_axi_stable_para_AWQOS QOS 1 4 }  { m_axi_stable_para_AWREGION REGION 1 4 }  { m_axi_stable_para_AWUSER USER 1 1 }  { m_axi_stable_para_WVALID VALID 1 1 }  { m_axi_stable_para_WREADY READY 0 1 }  { m_axi_stable_para_WDATA DATA 1 512 }  { m_axi_stable_para_WSTRB STRB 1 64 }  { m_axi_stable_para_WLAST LAST 1 1 }  { m_axi_stable_para_WID ID 1 1 }  { m_axi_stable_para_WUSER USER 1 1 }  { m_axi_stable_para_ARVALID VALID 1 1 }  { m_axi_stable_para_ARREADY READY 0 1 }  { m_axi_stable_para_ARADDR ADDR 1 32 }  { m_axi_stable_para_ARID ID 1 1 }  { m_axi_stable_para_ARLEN LEN 1 8 }  { m_axi_stable_para_ARSIZE SIZE 1 3 }  { m_axi_stable_para_ARBURST BURST 1 2 }  { m_axi_stable_para_ARLOCK LOCK 1 2 }  { m_axi_stable_para_ARCACHE CACHE 1 4 }  { m_axi_stable_para_ARPROT PROT 1 3 }  { m_axi_stable_para_ARQOS QOS 1 4 }  { m_axi_stable_para_ARREGION REGION 1 4 }  { m_axi_stable_para_ARUSER USER 1 1 }  { m_axi_stable_para_RVALID VALID 0 1 }  { m_axi_stable_para_RREADY READY 1 1 }  { m_axi_stable_para_RDATA DATA 0 512 }  { m_axi_stable_para_RLAST LAST 0 1 }  { m_axi_stable_para_RID ID 0 1 }  { m_axi_stable_para_RUSER USER 0 1 }  { m_axi_stable_para_RRESP RESP 0 2 }  { m_axi_stable_para_BVALID VALID 0 1 }  { m_axi_stable_para_BREADY READY 1 1 }  { m_axi_stable_para_BRESP RESP 0 2 }  { m_axi_stable_para_BID ID 0 1 }  { m_axi_stable_para_BUSER USER 0 1 } } }
	input01 { m_axi {  { m_axi_input01_AWVALID VALID 1 1 }  { m_axi_input01_AWREADY READY 0 1 }  { m_axi_input01_AWADDR ADDR 1 32 }  { m_axi_input01_AWID ID 1 1 }  { m_axi_input01_AWLEN LEN 1 8 }  { m_axi_input01_AWSIZE SIZE 1 3 }  { m_axi_input01_AWBURST BURST 1 2 }  { m_axi_input01_AWLOCK LOCK 1 2 }  { m_axi_input01_AWCACHE CACHE 1 4 }  { m_axi_input01_AWPROT PROT 1 3 }  { m_axi_input01_AWQOS QOS 1 4 }  { m_axi_input01_AWREGION REGION 1 4 }  { m_axi_input01_AWUSER USER 1 1 }  { m_axi_input01_WVALID VALID 1 1 }  { m_axi_input01_WREADY READY 0 1 }  { m_axi_input01_WDATA DATA 1 1024 }  { m_axi_input01_WSTRB STRB 1 128 }  { m_axi_input01_WLAST LAST 1 1 }  { m_axi_input01_WID ID 1 1 }  { m_axi_input01_WUSER USER 1 1 }  { m_axi_input01_ARVALID VALID 1 1 }  { m_axi_input01_ARREADY READY 0 1 }  { m_axi_input01_ARADDR ADDR 1 32 }  { m_axi_input01_ARID ID 1 1 }  { m_axi_input01_ARLEN LEN 1 8 }  { m_axi_input01_ARSIZE SIZE 1 3 }  { m_axi_input01_ARBURST BURST 1 2 }  { m_axi_input01_ARLOCK LOCK 1 2 }  { m_axi_input01_ARCACHE CACHE 1 4 }  { m_axi_input01_ARPROT PROT 1 3 }  { m_axi_input01_ARQOS QOS 1 4 }  { m_axi_input01_ARREGION REGION 1 4 }  { m_axi_input01_ARUSER USER 1 1 }  { m_axi_input01_RVALID VALID 0 1 }  { m_axi_input01_RREADY READY 1 1 }  { m_axi_input01_RDATA DATA 0 1024 }  { m_axi_input01_RLAST LAST 0 1 }  { m_axi_input01_RID ID 0 1 }  { m_axi_input01_RUSER USER 0 1 }  { m_axi_input01_RRESP RESP 0 2 }  { m_axi_input01_BVALID VALID 0 1 }  { m_axi_input01_BREADY READY 1 1 }  { m_axi_input01_BRESP RESP 0 2 }  { m_axi_input01_BID ID 0 1 }  { m_axi_input01_BUSER USER 0 1 } } }
	input00 { m_axi {  { m_axi_input00_AWVALID VALID 1 1 }  { m_axi_input00_AWREADY READY 0 1 }  { m_axi_input00_AWADDR ADDR 1 32 }  { m_axi_input00_AWID ID 1 1 }  { m_axi_input00_AWLEN LEN 1 8 }  { m_axi_input00_AWSIZE SIZE 1 3 }  { m_axi_input00_AWBURST BURST 1 2 }  { m_axi_input00_AWLOCK LOCK 1 2 }  { m_axi_input00_AWCACHE CACHE 1 4 }  { m_axi_input00_AWPROT PROT 1 3 }  { m_axi_input00_AWQOS QOS 1 4 }  { m_axi_input00_AWREGION REGION 1 4 }  { m_axi_input00_AWUSER USER 1 1 }  { m_axi_input00_WVALID VALID 1 1 }  { m_axi_input00_WREADY READY 0 1 }  { m_axi_input00_WDATA DATA 1 1024 }  { m_axi_input00_WSTRB STRB 1 128 }  { m_axi_input00_WLAST LAST 1 1 }  { m_axi_input00_WID ID 1 1 }  { m_axi_input00_WUSER USER 1 1 }  { m_axi_input00_ARVALID VALID 1 1 }  { m_axi_input00_ARREADY READY 0 1 }  { m_axi_input00_ARADDR ADDR 1 32 }  { m_axi_input00_ARID ID 1 1 }  { m_axi_input00_ARLEN LEN 1 8 }  { m_axi_input00_ARSIZE SIZE 1 3 }  { m_axi_input00_ARBURST BURST 1 2 }  { m_axi_input00_ARLOCK LOCK 1 2 }  { m_axi_input00_ARCACHE CACHE 1 4 }  { m_axi_input00_ARPROT PROT 1 3 }  { m_axi_input00_ARQOS QOS 1 4 }  { m_axi_input00_ARREGION REGION 1 4 }  { m_axi_input00_ARUSER USER 1 1 }  { m_axi_input00_RVALID VALID 0 1 }  { m_axi_input00_RREADY READY 1 1 }  { m_axi_input00_RDATA DATA 0 1024 }  { m_axi_input00_RLAST LAST 0 1 }  { m_axi_input00_RID ID 0 1 }  { m_axi_input00_RUSER USER 0 1 }  { m_axi_input00_RRESP RESP 0 2 }  { m_axi_input00_BVALID VALID 0 1 }  { m_axi_input00_BREADY READY 1 1 }  { m_axi_input00_BRESP RESP 0 2 }  { m_axi_input00_BID ID 0 1 }  { m_axi_input00_BUSER USER 0 1 } } }
	output0_s { m_axi {  { m_axi_output0_s_AWVALID VALID 1 1 }  { m_axi_output0_s_AWREADY READY 0 1 }  { m_axi_output0_s_AWADDR ADDR 1 32 }  { m_axi_output0_s_AWID ID 1 1 }  { m_axi_output0_s_AWLEN LEN 1 8 }  { m_axi_output0_s_AWSIZE SIZE 1 3 }  { m_axi_output0_s_AWBURST BURST 1 2 }  { m_axi_output0_s_AWLOCK LOCK 1 2 }  { m_axi_output0_s_AWCACHE CACHE 1 4 }  { m_axi_output0_s_AWPROT PROT 1 3 }  { m_axi_output0_s_AWQOS QOS 1 4 }  { m_axi_output0_s_AWREGION REGION 1 4 }  { m_axi_output0_s_AWUSER USER 1 1 }  { m_axi_output0_s_WVALID VALID 1 1 }  { m_axi_output0_s_WREADY READY 0 1 }  { m_axi_output0_s_WDATA DATA 1 32 }  { m_axi_output0_s_WSTRB STRB 1 4 }  { m_axi_output0_s_WLAST LAST 1 1 }  { m_axi_output0_s_WID ID 1 1 }  { m_axi_output0_s_WUSER USER 1 1 }  { m_axi_output0_s_ARVALID VALID 1 1 }  { m_axi_output0_s_ARREADY READY 0 1 }  { m_axi_output0_s_ARADDR ADDR 1 32 }  { m_axi_output0_s_ARID ID 1 1 }  { m_axi_output0_s_ARLEN LEN 1 8 }  { m_axi_output0_s_ARSIZE SIZE 1 3 }  { m_axi_output0_s_ARBURST BURST 1 2 }  { m_axi_output0_s_ARLOCK LOCK 1 2 }  { m_axi_output0_s_ARCACHE CACHE 1 4 }  { m_axi_output0_s_ARPROT PROT 1 3 }  { m_axi_output0_s_ARQOS QOS 1 4 }  { m_axi_output0_s_ARREGION REGION 1 4 }  { m_axi_output0_s_ARUSER USER 1 1 }  { m_axi_output0_s_RVALID VALID 0 1 }  { m_axi_output0_s_RREADY READY 1 1 }  { m_axi_output0_s_RDATA DATA 0 32 }  { m_axi_output0_s_RLAST LAST 0 1 }  { m_axi_output0_s_RID ID 0 1 }  { m_axi_output0_s_RUSER USER 0 1 }  { m_axi_output0_s_RRESP RESP 0 2 }  { m_axi_output0_s_BVALID VALID 0 1 }  { m_axi_output0_s_BREADY READY 1 1 }  { m_axi_output0_s_BRESP RESP 0 2 }  { m_axi_output0_s_BID ID 0 1 }  { m_axi_output0_s_BUSER USER 0 1 } } }
	output1_s { m_axi {  { m_axi_output1_s_AWVALID VALID 1 1 }  { m_axi_output1_s_AWREADY READY 0 1 }  { m_axi_output1_s_AWADDR ADDR 1 32 }  { m_axi_output1_s_AWID ID 1 1 }  { m_axi_output1_s_AWLEN LEN 1 8 }  { m_axi_output1_s_AWSIZE SIZE 1 3 }  { m_axi_output1_s_AWBURST BURST 1 2 }  { m_axi_output1_s_AWLOCK LOCK 1 2 }  { m_axi_output1_s_AWCACHE CACHE 1 4 }  { m_axi_output1_s_AWPROT PROT 1 3 }  { m_axi_output1_s_AWQOS QOS 1 4 }  { m_axi_output1_s_AWREGION REGION 1 4 }  { m_axi_output1_s_AWUSER USER 1 1 }  { m_axi_output1_s_WVALID VALID 1 1 }  { m_axi_output1_s_WREADY READY 0 1 }  { m_axi_output1_s_WDATA DATA 1 32 }  { m_axi_output1_s_WSTRB STRB 1 4 }  { m_axi_output1_s_WLAST LAST 1 1 }  { m_axi_output1_s_WID ID 1 1 }  { m_axi_output1_s_WUSER USER 1 1 }  { m_axi_output1_s_ARVALID VALID 1 1 }  { m_axi_output1_s_ARREADY READY 0 1 }  { m_axi_output1_s_ARADDR ADDR 1 32 }  { m_axi_output1_s_ARID ID 1 1 }  { m_axi_output1_s_ARLEN LEN 1 8 }  { m_axi_output1_s_ARSIZE SIZE 1 3 }  { m_axi_output1_s_ARBURST BURST 1 2 }  { m_axi_output1_s_ARLOCK LOCK 1 2 }  { m_axi_output1_s_ARCACHE CACHE 1 4 }  { m_axi_output1_s_ARPROT PROT 1 3 }  { m_axi_output1_s_ARQOS QOS 1 4 }  { m_axi_output1_s_ARREGION REGION 1 4 }  { m_axi_output1_s_ARUSER USER 1 1 }  { m_axi_output1_s_RVALID VALID 0 1 }  { m_axi_output1_s_RREADY READY 1 1 }  { m_axi_output1_s_RDATA DATA 0 32 }  { m_axi_output1_s_RLAST LAST 0 1 }  { m_axi_output1_s_RID ID 0 1 }  { m_axi_output1_s_RUSER USER 0 1 }  { m_axi_output1_s_RRESP RESP 0 2 }  { m_axi_output1_s_BVALID VALID 0 1 }  { m_axi_output1_s_BREADY READY 1 1 }  { m_axi_output1_s_BRESP RESP 0 2 }  { m_axi_output1_s_BID ID 0 1 }  { m_axi_output1_s_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ stable_para { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ input01 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ input00 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ output0_s { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ output1_s { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ stable_para 1 }
	{ input01 1 }
	{ input00 1 }
	{ output0_s 1 }
	{ output1_s 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ stable_para 1 }
	{ input01 1 }
	{ input00 1 }
	{ output0_s 1 }
	{ output1_s 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
