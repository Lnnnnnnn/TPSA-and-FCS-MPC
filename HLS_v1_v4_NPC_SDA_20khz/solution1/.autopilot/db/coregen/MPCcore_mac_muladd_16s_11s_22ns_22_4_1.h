// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MPCcore_mac_muladd_16s_11s_22ns_22_4_1__HH__
#define __MPCcore_mac_muladd_16s_11s_22ns_22_4_1__HH__
#include "MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(MPCcore_mac_muladd_16s_11s_22ns_22_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9 MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U;

    SC_CTOR(MPCcore_mac_muladd_16s_11s_22ns_22_4_1):  MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U ("MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U") {
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.clk(clk);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.rst(reset);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.ce(ce);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.in0(din0);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.in1(din1);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.in2(din2);
        MPCcore_mac_muladd_16s_11s_22ns_22_4_1_DSP48_9_U.dout(dout);

    }

};

#endif //
