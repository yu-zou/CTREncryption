// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shift_row_block_HH_
#define _shift_row_block_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct shift_row_block : public sc_module {
    // Port declarations 129
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > in_state_0_0_0_V_read;
    sc_in< sc_lv<8> > in_state_0_0_1_V_read;
    sc_in< sc_lv<8> > in_state_0_0_2_V_read;
    sc_in< sc_lv<8> > in_state_0_0_3_V_read;
    sc_in< sc_lv<8> > in_state_0_1_0_V_read;
    sc_in< sc_lv<8> > in_state_0_1_1_V_read;
    sc_in< sc_lv<8> > in_state_0_1_2_V_read;
    sc_in< sc_lv<8> > in_state_0_1_3_V_read;
    sc_in< sc_lv<8> > in_state_0_2_0_V_read;
    sc_in< sc_lv<8> > in_state_0_2_1_V_read;
    sc_in< sc_lv<8> > in_state_0_2_2_V_read;
    sc_in< sc_lv<8> > in_state_0_2_3_V_read;
    sc_in< sc_lv<8> > in_state_0_3_0_V_read;
    sc_in< sc_lv<8> > in_state_0_3_1_V_read;
    sc_in< sc_lv<8> > in_state_0_3_2_V_read;
    sc_in< sc_lv<8> > in_state_0_3_3_V_read;
    sc_in< sc_lv<8> > in_state_1_0_0_V_read;
    sc_in< sc_lv<8> > in_state_1_0_1_V_read;
    sc_in< sc_lv<8> > in_state_1_0_2_V_read;
    sc_in< sc_lv<8> > in_state_1_0_3_V_read;
    sc_in< sc_lv<8> > in_state_1_1_0_V_read;
    sc_in< sc_lv<8> > in_state_1_1_1_V_read;
    sc_in< sc_lv<8> > in_state_1_1_2_V_read;
    sc_in< sc_lv<8> > in_state_1_1_3_V_read;
    sc_in< sc_lv<8> > in_state_1_2_0_V_read;
    sc_in< sc_lv<8> > in_state_1_2_1_V_read;
    sc_in< sc_lv<8> > in_state_1_2_2_V_read;
    sc_in< sc_lv<8> > in_state_1_2_3_V_read;
    sc_in< sc_lv<8> > in_state_1_3_0_V_read;
    sc_in< sc_lv<8> > in_state_1_3_1_V_read;
    sc_in< sc_lv<8> > in_state_1_3_2_V_read;
    sc_in< sc_lv<8> > in_state_1_3_3_V_read;
    sc_in< sc_lv<8> > in_state_2_0_0_V_read;
    sc_in< sc_lv<8> > in_state_2_0_1_V_read;
    sc_in< sc_lv<8> > in_state_2_0_2_V_read;
    sc_in< sc_lv<8> > in_state_2_0_3_V_read;
    sc_in< sc_lv<8> > in_state_2_1_0_V_read;
    sc_in< sc_lv<8> > in_state_2_1_1_V_read;
    sc_in< sc_lv<8> > in_state_2_1_2_V_read;
    sc_in< sc_lv<8> > in_state_2_1_3_V_read;
    sc_in< sc_lv<8> > in_state_2_2_0_V_read;
    sc_in< sc_lv<8> > in_state_2_2_1_V_read;
    sc_in< sc_lv<8> > in_state_2_2_2_V_read;
    sc_in< sc_lv<8> > in_state_2_2_3_V_read;
    sc_in< sc_lv<8> > in_state_2_3_0_V_read;
    sc_in< sc_lv<8> > in_state_2_3_1_V_read;
    sc_in< sc_lv<8> > in_state_2_3_2_V_read;
    sc_in< sc_lv<8> > in_state_2_3_3_V_read;
    sc_in< sc_lv<8> > in_state_3_0_0_V_read;
    sc_in< sc_lv<8> > in_state_3_0_1_V_read;
    sc_in< sc_lv<8> > in_state_3_0_2_V_read;
    sc_in< sc_lv<8> > in_state_3_0_3_V_read;
    sc_in< sc_lv<8> > in_state_3_1_0_V_read;
    sc_in< sc_lv<8> > in_state_3_1_1_V_read;
    sc_in< sc_lv<8> > in_state_3_1_2_V_read;
    sc_in< sc_lv<8> > in_state_3_1_3_V_read;
    sc_in< sc_lv<8> > in_state_3_2_0_V_read;
    sc_in< sc_lv<8> > in_state_3_2_1_V_read;
    sc_in< sc_lv<8> > in_state_3_2_2_V_read;
    sc_in< sc_lv<8> > in_state_3_2_3_V_read;
    sc_in< sc_lv<8> > in_state_3_3_0_V_read;
    sc_in< sc_lv<8> > in_state_3_3_1_V_read;
    sc_in< sc_lv<8> > in_state_3_3_2_V_read;
    sc_in< sc_lv<8> > in_state_3_3_3_V_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_out< sc_lv<8> > ap_return_4;
    sc_out< sc_lv<8> > ap_return_5;
    sc_out< sc_lv<8> > ap_return_6;
    sc_out< sc_lv<8> > ap_return_7;
    sc_out< sc_lv<8> > ap_return_8;
    sc_out< sc_lv<8> > ap_return_9;
    sc_out< sc_lv<8> > ap_return_10;
    sc_out< sc_lv<8> > ap_return_11;
    sc_out< sc_lv<8> > ap_return_12;
    sc_out< sc_lv<8> > ap_return_13;
    sc_out< sc_lv<8> > ap_return_14;
    sc_out< sc_lv<8> > ap_return_15;
    sc_out< sc_lv<8> > ap_return_16;
    sc_out< sc_lv<8> > ap_return_17;
    sc_out< sc_lv<8> > ap_return_18;
    sc_out< sc_lv<8> > ap_return_19;
    sc_out< sc_lv<8> > ap_return_20;
    sc_out< sc_lv<8> > ap_return_21;
    sc_out< sc_lv<8> > ap_return_22;
    sc_out< sc_lv<8> > ap_return_23;
    sc_out< sc_lv<8> > ap_return_24;
    sc_out< sc_lv<8> > ap_return_25;
    sc_out< sc_lv<8> > ap_return_26;
    sc_out< sc_lv<8> > ap_return_27;
    sc_out< sc_lv<8> > ap_return_28;
    sc_out< sc_lv<8> > ap_return_29;
    sc_out< sc_lv<8> > ap_return_30;
    sc_out< sc_lv<8> > ap_return_31;
    sc_out< sc_lv<8> > ap_return_32;
    sc_out< sc_lv<8> > ap_return_33;
    sc_out< sc_lv<8> > ap_return_34;
    sc_out< sc_lv<8> > ap_return_35;
    sc_out< sc_lv<8> > ap_return_36;
    sc_out< sc_lv<8> > ap_return_37;
    sc_out< sc_lv<8> > ap_return_38;
    sc_out< sc_lv<8> > ap_return_39;
    sc_out< sc_lv<8> > ap_return_40;
    sc_out< sc_lv<8> > ap_return_41;
    sc_out< sc_lv<8> > ap_return_42;
    sc_out< sc_lv<8> > ap_return_43;
    sc_out< sc_lv<8> > ap_return_44;
    sc_out< sc_lv<8> > ap_return_45;
    sc_out< sc_lv<8> > ap_return_46;
    sc_out< sc_lv<8> > ap_return_47;
    sc_out< sc_lv<8> > ap_return_48;
    sc_out< sc_lv<8> > ap_return_49;
    sc_out< sc_lv<8> > ap_return_50;
    sc_out< sc_lv<8> > ap_return_51;
    sc_out< sc_lv<8> > ap_return_52;
    sc_out< sc_lv<8> > ap_return_53;
    sc_out< sc_lv<8> > ap_return_54;
    sc_out< sc_lv<8> > ap_return_55;
    sc_out< sc_lv<8> > ap_return_56;
    sc_out< sc_lv<8> > ap_return_57;
    sc_out< sc_lv<8> > ap_return_58;
    sc_out< sc_lv<8> > ap_return_59;
    sc_out< sc_lv<8> > ap_return_60;
    sc_out< sc_lv<8> > ap_return_61;
    sc_out< sc_lv<8> > ap_return_62;
    sc_out< sc_lv<8> > ap_return_63;


    // Module declarations
    shift_row_block(sc_module_name name);
    SC_HAS_PROCESS(shift_row_block);

    ~shift_row_block();

    sc_trace_file* mVcdFile;

    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_16();
    void thread_ap_return_17();
    void thread_ap_return_18();
    void thread_ap_return_19();
    void thread_ap_return_2();
    void thread_ap_return_20();
    void thread_ap_return_21();
    void thread_ap_return_22();
    void thread_ap_return_23();
    void thread_ap_return_24();
    void thread_ap_return_25();
    void thread_ap_return_26();
    void thread_ap_return_27();
    void thread_ap_return_28();
    void thread_ap_return_29();
    void thread_ap_return_3();
    void thread_ap_return_30();
    void thread_ap_return_31();
    void thread_ap_return_32();
    void thread_ap_return_33();
    void thread_ap_return_34();
    void thread_ap_return_35();
    void thread_ap_return_36();
    void thread_ap_return_37();
    void thread_ap_return_38();
    void thread_ap_return_39();
    void thread_ap_return_4();
    void thread_ap_return_40();
    void thread_ap_return_41();
    void thread_ap_return_42();
    void thread_ap_return_43();
    void thread_ap_return_44();
    void thread_ap_return_45();
    void thread_ap_return_46();
    void thread_ap_return_47();
    void thread_ap_return_48();
    void thread_ap_return_49();
    void thread_ap_return_5();
    void thread_ap_return_50();
    void thread_ap_return_51();
    void thread_ap_return_52();
    void thread_ap_return_53();
    void thread_ap_return_54();
    void thread_ap_return_55();
    void thread_ap_return_56();
    void thread_ap_return_57();
    void thread_ap_return_58();
    void thread_ap_return_59();
    void thread_ap_return_6();
    void thread_ap_return_60();
    void thread_ap_return_61();
    void thread_ap_return_62();
    void thread_ap_return_63();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
};

}

using namespace ap_rtl;

#endif
