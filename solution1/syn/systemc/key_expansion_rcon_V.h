// ==============================================================
// File generated on Tue Apr 23 18:05:14 EDT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __key_expansion_rcon_V_H__
#define __key_expansion_rcon_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct key_expansion_rcon_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 11;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(key_expansion_rcon_V_ram) {
        ram[0] = "0b10001101";
        ram[1] = "0b00000001";
        ram[2] = "0b00000010";
        ram[3] = "0b00000100";
        ram[4] = "0b00001000";
        ram[5] = "0b00010000";
        ram[6] = "0b00100000";
        ram[7] = "0b01000000";
        ram[8] = "0b10000000";
        ram[9] = "0b00011011";
        ram[10] = "0b00110110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(key_expansion_rcon_V) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 11;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


key_expansion_rcon_V_ram* meminst;


SC_CTOR(key_expansion_rcon_V) {
meminst = new key_expansion_rcon_V_ram("key_expansion_rcon_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~key_expansion_rcon_V() {
    delete meminst;
}


};//endmodule
#endif
