// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_H__
#define __MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 27;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_ram) {
        ram[0] = "0b0000000";
        ram[1] = "0b1110101";
        ram[2] = "0b1101010";
        ram[3] = "0b1110101";
        ram[4] = "0b1101010";
        ram[5] = "0b1011110";
        ram[6] = "0b1101010";
        ram[7] = "0b1011110";
        ram[8] = "0b1010011";
        ram[9] = "0b0010101";
        ram[10] = "0b0001010";
        ram[11] = "0b0000000";
        ram[12] = "0b0001010";
        ram[13] = "0b0000000";
        ram[14] = "0b1110101";
        ram[15] = "0b0000000";
        ram[16] = "0b1110101";
        ram[17] = "0b1101010";
        ram[18] = "0b0101100";
        ram[19] = "0b0100001";
        ram[20] = "0b0010101";
        ram[21] = "0b0100001";
        ram[22] = "0b0010101";
        ram[23] = "0b0001010";
        ram[24] = "0b0010101";
        ram[25] = "0b0001010";
        ram[26] = "0b0000000";


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


SC_MODULE(MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 27;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_ram* meminst;


SC_CTOR(MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe) {
meminst = new MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_ram("MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe() {
    delete meminst;
}


};//endmodule
#endif
