// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __MPCcore_mul_mul_16s_14ns_30_4_1__HH__
#define __MPCcore_mul_mul_16s_14ns_30_4_1__HH__
#include "MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(MPCcore_mul_mul_16s_14ns_30_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0 MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U;

    SC_CTOR(MPCcore_mul_mul_16s_14ns_30_4_1):  MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U ("MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U") {
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.clk(clk);
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.rst(reset);
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.ce(ce);
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.a(din0);
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.b(din1);
        MPCcore_mul_mul_16s_14ns_30_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
