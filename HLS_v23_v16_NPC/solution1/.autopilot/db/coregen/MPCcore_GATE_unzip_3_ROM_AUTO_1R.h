// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MPCcore_GATE_unzip_3_ROM_AUTO_1R_H__
#define __MPCcore_GATE_unzip_3_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct MPCcore_GATE_unzip_3_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 1;
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


   SC_CTOR(MPCcore_GATE_unzip_3_ROM_AUTO_1R_ram) {
        ram[0] = "0b0";
        ram[1] = "0b0";
        ram[2] = "0b0";
        for (unsigned i = 3; i < 9 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[9] = "0b0";
        ram[10] = "0b0";
        ram[11] = "0b0";
        for (unsigned i = 12; i < 18 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[18] = "0b0";
        ram[19] = "0b0";
        ram[20] = "0b0";
        for (unsigned i = 21; i < 27 ; i = i + 1) {
            ram[i] = "0b1";
        }


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


SC_MODULE(MPCcore_GATE_unzip_3_ROM_AUTO_1R) {


static const unsigned DataWidth = 1;
static const unsigned AddressRange = 27;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


MPCcore_GATE_unzip_3_ROM_AUTO_1R_ram* meminst;


SC_CTOR(MPCcore_GATE_unzip_3_ROM_AUTO_1R) {
meminst = new MPCcore_GATE_unzip_3_ROM_AUTO_1R_ram("MPCcore_GATE_unzip_3_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~MPCcore_GATE_unzip_3_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
