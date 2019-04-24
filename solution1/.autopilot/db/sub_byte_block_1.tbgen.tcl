set moduleName sub_byte_block_1
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sub_byte_block.1}
set C_modelType { int 512 }
set C_modelArgList {
	{ in_state_0_0_0_V_s int 8 regular  }
	{ in_state_0_0_1_V_s int 8 regular  }
	{ in_state_0_0_2_V_s int 8 regular  }
	{ in_state_0_0_3_V_s int 8 regular  }
	{ in_state_0_1_0_V_s int 8 regular  }
	{ in_state_0_1_1_V_s int 8 regular  }
	{ in_state_0_1_2_V_s int 8 regular  }
	{ in_state_0_1_3_V_s int 8 regular  }
	{ in_state_0_2_0_V_s int 8 regular  }
	{ in_state_0_2_1_V_s int 8 regular  }
	{ in_state_0_2_2_V_s int 8 regular  }
	{ in_state_0_2_3_V_s int 8 regular  }
	{ in_state_0_3_0_V_s int 8 regular  }
	{ in_state_0_3_1_V_s int 8 regular  }
	{ in_state_0_3_2_V_s int 8 regular  }
	{ in_state_0_3_3_V_s int 8 regular  }
	{ in_state_1_0_0_V_s int 8 regular  }
	{ in_state_1_0_1_V_s int 8 regular  }
	{ in_state_1_0_2_V_s int 8 regular  }
	{ in_state_1_0_3_V_s int 8 regular  }
	{ in_state_1_1_0_V_s int 8 regular  }
	{ in_state_1_1_1_V_s int 8 regular  }
	{ in_state_1_1_2_V_s int 8 regular  }
	{ in_state_1_1_3_V_s int 8 regular  }
	{ in_state_1_2_0_V_s int 8 regular  }
	{ in_state_1_2_1_V_s int 8 regular  }
	{ in_state_1_2_2_V_s int 8 regular  }
	{ in_state_1_2_3_V_s int 8 regular  }
	{ in_state_1_3_0_V_s int 8 regular  }
	{ in_state_1_3_1_V_s int 8 regular  }
	{ in_state_1_3_2_V_s int 8 regular  }
	{ in_state_1_3_3_V_s int 8 regular  }
	{ in_state_2_0_0_V_s int 8 regular  }
	{ in_state_2_0_1_V_s int 8 regular  }
	{ in_state_2_0_2_V_s int 8 regular  }
	{ in_state_2_0_3_V_s int 8 regular  }
	{ in_state_2_1_0_V_s int 8 regular  }
	{ in_state_2_1_1_V_s int 8 regular  }
	{ in_state_2_1_2_V_s int 8 regular  }
	{ in_state_2_1_3_V_s int 8 regular  }
	{ in_state_2_2_0_V_s int 8 regular  }
	{ in_state_2_2_1_V_s int 8 regular  }
	{ in_state_2_2_2_V_s int 8 regular  }
	{ in_state_2_2_3_V_s int 8 regular  }
	{ in_state_2_3_0_V_s int 8 regular  }
	{ in_state_2_3_1_V_s int 8 regular  }
	{ in_state_2_3_2_V_s int 8 regular  }
	{ in_state_2_3_3_V_s int 8 regular  }
	{ in_state_3_0_0_V_s int 8 regular  }
	{ in_state_3_0_1_V_s int 8 regular  }
	{ in_state_3_0_2_V_s int 8 regular  }
	{ in_state_3_0_3_V_s int 8 regular  }
	{ in_state_3_1_0_V_s int 8 regular  }
	{ in_state_3_1_1_V_s int 8 regular  }
	{ in_state_3_1_2_V_s int 8 regular  }
	{ in_state_3_1_3_V_s int 8 regular  }
	{ in_state_3_2_0_V_s int 8 regular  }
	{ in_state_3_2_1_V_s int 8 regular  }
	{ in_state_3_2_2_V_s int 8 regular  }
	{ in_state_3_2_3_V_s int 8 regular  }
	{ in_state_3_3_0_V_s int 8 regular  }
	{ in_state_3_3_1_V_s int 8 regular  }
	{ in_state_3_3_2_V_s int 8 regular  }
	{ in_state_3_3_3_V_s int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_state_0_0_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_0_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_0_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_0_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_1_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_1_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_1_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_1_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_2_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_2_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_2_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_2_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_3_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_3_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_3_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_0_3_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_0_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_0_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_0_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_0_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_1_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_1_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_1_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_1_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_2_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_2_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_2_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_2_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_3_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_3_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_3_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_1_3_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_0_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_0_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_0_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_0_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_1_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_1_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_1_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_1_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_2_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_2_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_2_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_2_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_3_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_3_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_3_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_2_3_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_0_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_0_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_0_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_0_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_1_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_1_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_1_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_1_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_2_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_2_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_2_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_2_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_3_0_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_3_1_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_3_2_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_state_3_3_3_V_s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 129
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_state_0_0_0_V_s sc_in sc_lv 8 signal 0 } 
	{ in_state_0_0_1_V_s sc_in sc_lv 8 signal 1 } 
	{ in_state_0_0_2_V_s sc_in sc_lv 8 signal 2 } 
	{ in_state_0_0_3_V_s sc_in sc_lv 8 signal 3 } 
	{ in_state_0_1_0_V_s sc_in sc_lv 8 signal 4 } 
	{ in_state_0_1_1_V_s sc_in sc_lv 8 signal 5 } 
	{ in_state_0_1_2_V_s sc_in sc_lv 8 signal 6 } 
	{ in_state_0_1_3_V_s sc_in sc_lv 8 signal 7 } 
	{ in_state_0_2_0_V_s sc_in sc_lv 8 signal 8 } 
	{ in_state_0_2_1_V_s sc_in sc_lv 8 signal 9 } 
	{ in_state_0_2_2_V_s sc_in sc_lv 8 signal 10 } 
	{ in_state_0_2_3_V_s sc_in sc_lv 8 signal 11 } 
	{ in_state_0_3_0_V_s sc_in sc_lv 8 signal 12 } 
	{ in_state_0_3_1_V_s sc_in sc_lv 8 signal 13 } 
	{ in_state_0_3_2_V_s sc_in sc_lv 8 signal 14 } 
	{ in_state_0_3_3_V_s sc_in sc_lv 8 signal 15 } 
	{ in_state_1_0_0_V_s sc_in sc_lv 8 signal 16 } 
	{ in_state_1_0_1_V_s sc_in sc_lv 8 signal 17 } 
	{ in_state_1_0_2_V_s sc_in sc_lv 8 signal 18 } 
	{ in_state_1_0_3_V_s sc_in sc_lv 8 signal 19 } 
	{ in_state_1_1_0_V_s sc_in sc_lv 8 signal 20 } 
	{ in_state_1_1_1_V_s sc_in sc_lv 8 signal 21 } 
	{ in_state_1_1_2_V_s sc_in sc_lv 8 signal 22 } 
	{ in_state_1_1_3_V_s sc_in sc_lv 8 signal 23 } 
	{ in_state_1_2_0_V_s sc_in sc_lv 8 signal 24 } 
	{ in_state_1_2_1_V_s sc_in sc_lv 8 signal 25 } 
	{ in_state_1_2_2_V_s sc_in sc_lv 8 signal 26 } 
	{ in_state_1_2_3_V_s sc_in sc_lv 8 signal 27 } 
	{ in_state_1_3_0_V_s sc_in sc_lv 8 signal 28 } 
	{ in_state_1_3_1_V_s sc_in sc_lv 8 signal 29 } 
	{ in_state_1_3_2_V_s sc_in sc_lv 8 signal 30 } 
	{ in_state_1_3_3_V_s sc_in sc_lv 8 signal 31 } 
	{ in_state_2_0_0_V_s sc_in sc_lv 8 signal 32 } 
	{ in_state_2_0_1_V_s sc_in sc_lv 8 signal 33 } 
	{ in_state_2_0_2_V_s sc_in sc_lv 8 signal 34 } 
	{ in_state_2_0_3_V_s sc_in sc_lv 8 signal 35 } 
	{ in_state_2_1_0_V_s sc_in sc_lv 8 signal 36 } 
	{ in_state_2_1_1_V_s sc_in sc_lv 8 signal 37 } 
	{ in_state_2_1_2_V_s sc_in sc_lv 8 signal 38 } 
	{ in_state_2_1_3_V_s sc_in sc_lv 8 signal 39 } 
	{ in_state_2_2_0_V_s sc_in sc_lv 8 signal 40 } 
	{ in_state_2_2_1_V_s sc_in sc_lv 8 signal 41 } 
	{ in_state_2_2_2_V_s sc_in sc_lv 8 signal 42 } 
	{ in_state_2_2_3_V_s sc_in sc_lv 8 signal 43 } 
	{ in_state_2_3_0_V_s sc_in sc_lv 8 signal 44 } 
	{ in_state_2_3_1_V_s sc_in sc_lv 8 signal 45 } 
	{ in_state_2_3_2_V_s sc_in sc_lv 8 signal 46 } 
	{ in_state_2_3_3_V_s sc_in sc_lv 8 signal 47 } 
	{ in_state_3_0_0_V_s sc_in sc_lv 8 signal 48 } 
	{ in_state_3_0_1_V_s sc_in sc_lv 8 signal 49 } 
	{ in_state_3_0_2_V_s sc_in sc_lv 8 signal 50 } 
	{ in_state_3_0_3_V_s sc_in sc_lv 8 signal 51 } 
	{ in_state_3_1_0_V_s sc_in sc_lv 8 signal 52 } 
	{ in_state_3_1_1_V_s sc_in sc_lv 8 signal 53 } 
	{ in_state_3_1_2_V_s sc_in sc_lv 8 signal 54 } 
	{ in_state_3_1_3_V_s sc_in sc_lv 8 signal 55 } 
	{ in_state_3_2_0_V_s sc_in sc_lv 8 signal 56 } 
	{ in_state_3_2_1_V_s sc_in sc_lv 8 signal 57 } 
	{ in_state_3_2_2_V_s sc_in sc_lv 8 signal 58 } 
	{ in_state_3_2_3_V_s sc_in sc_lv 8 signal 59 } 
	{ in_state_3_3_0_V_s sc_in sc_lv 8 signal 60 } 
	{ in_state_3_3_1_V_s sc_in sc_lv 8 signal 61 } 
	{ in_state_3_3_2_V_s sc_in sc_lv 8 signal 62 } 
	{ in_state_3_3_3_V_s sc_in sc_lv 8 signal 63 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
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
	{ ap_return_13 sc_out sc_lv 8 signal -1 } 
	{ ap_return_14 sc_out sc_lv 8 signal -1 } 
	{ ap_return_15 sc_out sc_lv 8 signal -1 } 
	{ ap_return_16 sc_out sc_lv 8 signal -1 } 
	{ ap_return_17 sc_out sc_lv 8 signal -1 } 
	{ ap_return_18 sc_out sc_lv 8 signal -1 } 
	{ ap_return_19 sc_out sc_lv 8 signal -1 } 
	{ ap_return_20 sc_out sc_lv 8 signal -1 } 
	{ ap_return_21 sc_out sc_lv 8 signal -1 } 
	{ ap_return_22 sc_out sc_lv 8 signal -1 } 
	{ ap_return_23 sc_out sc_lv 8 signal -1 } 
	{ ap_return_24 sc_out sc_lv 8 signal -1 } 
	{ ap_return_25 sc_out sc_lv 8 signal -1 } 
	{ ap_return_26 sc_out sc_lv 8 signal -1 } 
	{ ap_return_27 sc_out sc_lv 8 signal -1 } 
	{ ap_return_28 sc_out sc_lv 8 signal -1 } 
	{ ap_return_29 sc_out sc_lv 8 signal -1 } 
	{ ap_return_30 sc_out sc_lv 8 signal -1 } 
	{ ap_return_31 sc_out sc_lv 8 signal -1 } 
	{ ap_return_32 sc_out sc_lv 8 signal -1 } 
	{ ap_return_33 sc_out sc_lv 8 signal -1 } 
	{ ap_return_34 sc_out sc_lv 8 signal -1 } 
	{ ap_return_35 sc_out sc_lv 8 signal -1 } 
	{ ap_return_36 sc_out sc_lv 8 signal -1 } 
	{ ap_return_37 sc_out sc_lv 8 signal -1 } 
	{ ap_return_38 sc_out sc_lv 8 signal -1 } 
	{ ap_return_39 sc_out sc_lv 8 signal -1 } 
	{ ap_return_40 sc_out sc_lv 8 signal -1 } 
	{ ap_return_41 sc_out sc_lv 8 signal -1 } 
	{ ap_return_42 sc_out sc_lv 8 signal -1 } 
	{ ap_return_43 sc_out sc_lv 8 signal -1 } 
	{ ap_return_44 sc_out sc_lv 8 signal -1 } 
	{ ap_return_45 sc_out sc_lv 8 signal -1 } 
	{ ap_return_46 sc_out sc_lv 8 signal -1 } 
	{ ap_return_47 sc_out sc_lv 8 signal -1 } 
	{ ap_return_48 sc_out sc_lv 8 signal -1 } 
	{ ap_return_49 sc_out sc_lv 8 signal -1 } 
	{ ap_return_50 sc_out sc_lv 8 signal -1 } 
	{ ap_return_51 sc_out sc_lv 8 signal -1 } 
	{ ap_return_52 sc_out sc_lv 8 signal -1 } 
	{ ap_return_53 sc_out sc_lv 8 signal -1 } 
	{ ap_return_54 sc_out sc_lv 8 signal -1 } 
	{ ap_return_55 sc_out sc_lv 8 signal -1 } 
	{ ap_return_56 sc_out sc_lv 8 signal -1 } 
	{ ap_return_57 sc_out sc_lv 8 signal -1 } 
	{ ap_return_58 sc_out sc_lv 8 signal -1 } 
	{ ap_return_59 sc_out sc_lv 8 signal -1 } 
	{ ap_return_60 sc_out sc_lv 8 signal -1 } 
	{ ap_return_61 sc_out sc_lv 8 signal -1 } 
	{ ap_return_62 sc_out sc_lv 8 signal -1 } 
	{ ap_return_63 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_state_0_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_0_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_0_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_0_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_0_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_0_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_1_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_1_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_1_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_1_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_1_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_2_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_2_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_2_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_2_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_2_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_3_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_3_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_3_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_0_3_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_0_3_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_0_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_0_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_0_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_0_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_0_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_1_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_1_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_1_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_1_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_1_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_2_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_2_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_2_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_2_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_2_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_3_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_3_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_3_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_1_3_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_1_3_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_0_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_0_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_0_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_0_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_0_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_1_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_1_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_1_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_1_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_1_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_2_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_2_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_2_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_2_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_2_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_3_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_3_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_3_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_2_3_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_2_3_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_0_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_0_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_0_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_0_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_0_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_1_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_1_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_1_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_1_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_1_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_2_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_2_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_2_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_2_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_2_3_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_3_0_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_3_1_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_3_2_V_s", "role": "default" }} , 
 	{ "name": "in_state_3_3_3_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_state_3_3_3_V_s", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
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
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "sub_byte_block_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_state_0_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_0_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_1_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_2_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_0_3_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_0_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_1_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_2_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_1_3_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_0_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_1_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_2_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_2_3_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_0_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_1_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_2_3_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_state_3_3_3_V_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U518", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U519", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U520", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U521", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U522", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U523", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U524", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U525", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U526", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U527", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U528", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U529", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U530", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U531", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U532", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U533", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U534", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U535", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U536", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U537", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U538", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U539", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U540", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U541", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U542", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U543", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U544", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U545", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U546", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U547", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U548", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U549", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U550", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U551", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U552", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U553", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U554", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U555", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U556", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U557", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U558", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U559", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U560", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U561", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U562", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U563", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U564", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U565", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U566", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U567", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U568", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U569", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U570", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U571", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U572", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U573", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U574", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U575", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U576", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U577", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U578", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U579", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U580", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_aes_128_mux_2568_8_1_1_U581", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sub_byte_block_1 {
		in_state_0_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_0_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_1_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_2_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_0_3_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_0_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_1_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_2_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_1_3_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_0_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_1_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_2_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_2_3_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_0_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_1_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_2_3_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		in_state_3_3_3_V_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_state_0_0_0_V_s { ap_none {  { in_state_0_0_0_V_s in_data 0 8 } } }
	in_state_0_0_1_V_s { ap_none {  { in_state_0_0_1_V_s in_data 0 8 } } }
	in_state_0_0_2_V_s { ap_none {  { in_state_0_0_2_V_s in_data 0 8 } } }
	in_state_0_0_3_V_s { ap_none {  { in_state_0_0_3_V_s in_data 0 8 } } }
	in_state_0_1_0_V_s { ap_none {  { in_state_0_1_0_V_s in_data 0 8 } } }
	in_state_0_1_1_V_s { ap_none {  { in_state_0_1_1_V_s in_data 0 8 } } }
	in_state_0_1_2_V_s { ap_none {  { in_state_0_1_2_V_s in_data 0 8 } } }
	in_state_0_1_3_V_s { ap_none {  { in_state_0_1_3_V_s in_data 0 8 } } }
	in_state_0_2_0_V_s { ap_none {  { in_state_0_2_0_V_s in_data 0 8 } } }
	in_state_0_2_1_V_s { ap_none {  { in_state_0_2_1_V_s in_data 0 8 } } }
	in_state_0_2_2_V_s { ap_none {  { in_state_0_2_2_V_s in_data 0 8 } } }
	in_state_0_2_3_V_s { ap_none {  { in_state_0_2_3_V_s in_data 0 8 } } }
	in_state_0_3_0_V_s { ap_none {  { in_state_0_3_0_V_s in_data 0 8 } } }
	in_state_0_3_1_V_s { ap_none {  { in_state_0_3_1_V_s in_data 0 8 } } }
	in_state_0_3_2_V_s { ap_none {  { in_state_0_3_2_V_s in_data 0 8 } } }
	in_state_0_3_3_V_s { ap_none {  { in_state_0_3_3_V_s in_data 0 8 } } }
	in_state_1_0_0_V_s { ap_none {  { in_state_1_0_0_V_s in_data 0 8 } } }
	in_state_1_0_1_V_s { ap_none {  { in_state_1_0_1_V_s in_data 0 8 } } }
	in_state_1_0_2_V_s { ap_none {  { in_state_1_0_2_V_s in_data 0 8 } } }
	in_state_1_0_3_V_s { ap_none {  { in_state_1_0_3_V_s in_data 0 8 } } }
	in_state_1_1_0_V_s { ap_none {  { in_state_1_1_0_V_s in_data 0 8 } } }
	in_state_1_1_1_V_s { ap_none {  { in_state_1_1_1_V_s in_data 0 8 } } }
	in_state_1_1_2_V_s { ap_none {  { in_state_1_1_2_V_s in_data 0 8 } } }
	in_state_1_1_3_V_s { ap_none {  { in_state_1_1_3_V_s in_data 0 8 } } }
	in_state_1_2_0_V_s { ap_none {  { in_state_1_2_0_V_s in_data 0 8 } } }
	in_state_1_2_1_V_s { ap_none {  { in_state_1_2_1_V_s in_data 0 8 } } }
	in_state_1_2_2_V_s { ap_none {  { in_state_1_2_2_V_s in_data 0 8 } } }
	in_state_1_2_3_V_s { ap_none {  { in_state_1_2_3_V_s in_data 0 8 } } }
	in_state_1_3_0_V_s { ap_none {  { in_state_1_3_0_V_s in_data 0 8 } } }
	in_state_1_3_1_V_s { ap_none {  { in_state_1_3_1_V_s in_data 0 8 } } }
	in_state_1_3_2_V_s { ap_none {  { in_state_1_3_2_V_s in_data 0 8 } } }
	in_state_1_3_3_V_s { ap_none {  { in_state_1_3_3_V_s in_data 0 8 } } }
	in_state_2_0_0_V_s { ap_none {  { in_state_2_0_0_V_s in_data 0 8 } } }
	in_state_2_0_1_V_s { ap_none {  { in_state_2_0_1_V_s in_data 0 8 } } }
	in_state_2_0_2_V_s { ap_none {  { in_state_2_0_2_V_s in_data 0 8 } } }
	in_state_2_0_3_V_s { ap_none {  { in_state_2_0_3_V_s in_data 0 8 } } }
	in_state_2_1_0_V_s { ap_none {  { in_state_2_1_0_V_s in_data 0 8 } } }
	in_state_2_1_1_V_s { ap_none {  { in_state_2_1_1_V_s in_data 0 8 } } }
	in_state_2_1_2_V_s { ap_none {  { in_state_2_1_2_V_s in_data 0 8 } } }
	in_state_2_1_3_V_s { ap_none {  { in_state_2_1_3_V_s in_data 0 8 } } }
	in_state_2_2_0_V_s { ap_none {  { in_state_2_2_0_V_s in_data 0 8 } } }
	in_state_2_2_1_V_s { ap_none {  { in_state_2_2_1_V_s in_data 0 8 } } }
	in_state_2_2_2_V_s { ap_none {  { in_state_2_2_2_V_s in_data 0 8 } } }
	in_state_2_2_3_V_s { ap_none {  { in_state_2_2_3_V_s in_data 0 8 } } }
	in_state_2_3_0_V_s { ap_none {  { in_state_2_3_0_V_s in_data 0 8 } } }
	in_state_2_3_1_V_s { ap_none {  { in_state_2_3_1_V_s in_data 0 8 } } }
	in_state_2_3_2_V_s { ap_none {  { in_state_2_3_2_V_s in_data 0 8 } } }
	in_state_2_3_3_V_s { ap_none {  { in_state_2_3_3_V_s in_data 0 8 } } }
	in_state_3_0_0_V_s { ap_none {  { in_state_3_0_0_V_s in_data 0 8 } } }
	in_state_3_0_1_V_s { ap_none {  { in_state_3_0_1_V_s in_data 0 8 } } }
	in_state_3_0_2_V_s { ap_none {  { in_state_3_0_2_V_s in_data 0 8 } } }
	in_state_3_0_3_V_s { ap_none {  { in_state_3_0_3_V_s in_data 0 8 } } }
	in_state_3_1_0_V_s { ap_none {  { in_state_3_1_0_V_s in_data 0 8 } } }
	in_state_3_1_1_V_s { ap_none {  { in_state_3_1_1_V_s in_data 0 8 } } }
	in_state_3_1_2_V_s { ap_none {  { in_state_3_1_2_V_s in_data 0 8 } } }
	in_state_3_1_3_V_s { ap_none {  { in_state_3_1_3_V_s in_data 0 8 } } }
	in_state_3_2_0_V_s { ap_none {  { in_state_3_2_0_V_s in_data 0 8 } } }
	in_state_3_2_1_V_s { ap_none {  { in_state_3_2_1_V_s in_data 0 8 } } }
	in_state_3_2_2_V_s { ap_none {  { in_state_3_2_2_V_s in_data 0 8 } } }
	in_state_3_2_3_V_s { ap_none {  { in_state_3_2_3_V_s in_data 0 8 } } }
	in_state_3_3_0_V_s { ap_none {  { in_state_3_3_0_V_s in_data 0 8 } } }
	in_state_3_3_1_V_s { ap_none {  { in_state_3_3_1_V_s in_data 0 8 } } }
	in_state_3_3_2_V_s { ap_none {  { in_state_3_3_2_V_s in_data 0 8 } } }
	in_state_3_3_3_V_s { ap_none {  { in_state_3_3_3_V_s in_data 0 8 } } }
}
