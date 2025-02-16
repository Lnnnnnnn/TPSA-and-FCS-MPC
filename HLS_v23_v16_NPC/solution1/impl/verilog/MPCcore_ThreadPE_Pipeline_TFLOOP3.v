// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MPCcore_ThreadPE_Pipeline_TFLOOP3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        write_flag84_0,
        empty,
        branch_0,
        index_0,
        helpedList_0_i,
        helpedList_0_o,
        helpedList_0_o_ap_vld,
        helpedList_1_i,
        helpedList_1_o,
        helpedList_1_o_ap_vld,
        helpedList_2_i,
        helpedList_2_o,
        helpedList_2_o_ap_vld,
        helpedList_3_i,
        helpedList_3_o,
        helpedList_3_o_ap_vld,
        assignmentbegintemp_V,
        p_read29,
        p_read30,
        p_read32,
        p_read33,
        location_0_i,
        location_0_o,
        location_0_o_ap_vld,
        location_1_i,
        location_1_o,
        location_1_o_ap_vld,
        location_2_i,
        location_2_o,
        location_2_o_ap_vld,
        location_3_i,
        location_3_o,
        location_3_o_ap_vld,
        p_read3,
        p_read10,
        p_read16,
        p_read22,
        xn_current_0,
        xn_current_0_ap_vld,
        p_read5,
        p_read11,
        p_read17,
        p_read23,
        xn_current_1,
        xn_current_1_ap_vld,
        p_read6,
        p_read12,
        p_read18,
        p_read24,
        xn_current_2,
        xn_current_2_ap_vld,
        p_read7,
        p_read13,
        p_read19,
        p_read25,
        xn_current_3,
        xn_current_3_ap_vld,
        p_read8,
        p_read14,
        p_read20,
        p_read26,
        xn_current_4,
        xn_current_4_ap_vld,
        p_read9,
        p_read15,
        p_read21,
        p_read27,
        xn_current_5,
        xn_current_5_ap_vld,
        write_flag84_1_out,
        write_flag84_1_out_ap_vld,
        J_current_1_out,
        J_current_1_out_ap_vld,
        lhs_out,
        lhs_out_ap_vld,
        index_1_out,
        index_1_out_ap_vld,
        rhs_out,
        rhs_out_ap_vld,
        trunc_ln6_out,
        trunc_ln6_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [0:0] write_flag84_0;
input  [31:0] empty;
input  [7:0] branch_0;
input  [7:0] index_0;
input  [7:0] helpedList_0_i;
output  [7:0] helpedList_0_o;
output   helpedList_0_o_ap_vld;
input  [7:0] helpedList_1_i;
output  [7:0] helpedList_1_o;
output   helpedList_1_o_ap_vld;
input  [7:0] helpedList_2_i;
output  [7:0] helpedList_2_o;
output   helpedList_2_o_ap_vld;
input  [7:0] helpedList_3_i;
output  [7:0] helpedList_3_o;
output   helpedList_3_o_ap_vld;
input  [7:0] assignmentbegintemp_V;
input  [31:0] p_read29;
input  [31:0] p_read30;
input  [31:0] p_read32;
input  [31:0] p_read33;
input  [7:0] location_0_i;
output  [7:0] location_0_o;
output   location_0_o_ap_vld;
input  [7:0] location_1_i;
output  [7:0] location_1_o;
output   location_1_o_ap_vld;
input  [7:0] location_2_i;
output  [7:0] location_2_o;
output   location_2_o_ap_vld;
input  [7:0] location_3_i;
output  [7:0] location_3_o;
output   location_3_o_ap_vld;
input  [15:0] p_read3;
input  [15:0] p_read10;
input  [15:0] p_read16;
input  [15:0] p_read22;
output  [15:0] xn_current_0;
output   xn_current_0_ap_vld;
input  [15:0] p_read5;
input  [15:0] p_read11;
input  [15:0] p_read17;
input  [15:0] p_read23;
output  [15:0] xn_current_1;
output   xn_current_1_ap_vld;
input  [15:0] p_read6;
input  [15:0] p_read12;
input  [15:0] p_read18;
input  [15:0] p_read24;
output  [15:0] xn_current_2;
output   xn_current_2_ap_vld;
input  [15:0] p_read7;
input  [15:0] p_read13;
input  [15:0] p_read19;
input  [15:0] p_read25;
output  [15:0] xn_current_3;
output   xn_current_3_ap_vld;
input  [15:0] p_read8;
input  [15:0] p_read14;
input  [15:0] p_read20;
input  [15:0] p_read26;
output  [15:0] xn_current_4;
output   xn_current_4_ap_vld;
input  [15:0] p_read9;
input  [15:0] p_read15;
input  [15:0] p_read21;
input  [15:0] p_read27;
output  [15:0] xn_current_5;
output   xn_current_5_ap_vld;
output  [0:0] write_flag84_1_out;
output   write_flag84_1_out_ap_vld;
output  [31:0] J_current_1_out;
output   J_current_1_out_ap_vld;
output  [7:0] lhs_out;
output   lhs_out_ap_vld;
output  [7:0] index_1_out;
output   index_1_out_ap_vld;
output  [7:0] rhs_out;
output   rhs_out_ap_vld;
output  [1:0] trunc_ln6_out;
output   trunc_ln6_out_ap_vld;

reg ap_idle;
reg[7:0] helpedList_0_o;
reg helpedList_0_o_ap_vld;
reg[7:0] helpedList_1_o;
reg helpedList_1_o_ap_vld;
reg[7:0] helpedList_2_o;
reg helpedList_2_o_ap_vld;
reg[7:0] helpedList_3_o;
reg helpedList_3_o_ap_vld;
reg[7:0] location_0_o;
reg location_0_o_ap_vld;
reg[7:0] location_1_o;
reg location_1_o_ap_vld;
reg[7:0] location_2_o;
reg location_2_o_ap_vld;
reg[7:0] location_3_o;
reg location_3_o_ap_vld;
reg xn_current_0_ap_vld;
reg xn_current_1_ap_vld;
reg xn_current_2_ap_vld;
reg xn_current_3_ap_vld;
reg xn_current_4_ap_vld;
reg xn_current_5_ap_vld;
reg write_flag84_1_out_ap_vld;
reg J_current_1_out_ap_vld;
reg lhs_out_ap_vld;
reg index_1_out_ap_vld;
reg rhs_out_ap_vld;
reg trunc_ln6_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] and_ln51_fu_641_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] write_flag84_1_reg_566;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] and_ln51_reg_947;
wire   [7:0] add_ln75_fu_671_p2;
reg   [7:0] add_ln75_reg_954;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg   [7:0] index_1_fu_160;
reg   [7:0] lhs_fu_164;
wire   [7:0] tmp_169_fu_753_p6;
reg   [7:0] ap_sig_allocacmp_lhs_1;
reg   [31:0] J_current_1_fu_168;
wire   [31:0] sub_ln859_fu_665_p2;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] trunc_ln69_fu_647_p1;
wire   [15:0] tmp_170_fu_677_p6;
wire   [15:0] tmp_171_fu_688_p6;
wire   [15:0] tmp_172_fu_699_p6;
wire   [15:0] tmp_173_fu_710_p6;
wire   [15:0] tmp_174_fu_721_p6;
wire   [15:0] tmp_175_fu_732_p6;
wire  signed [7:0] rhs_fu_605_p6;
wire  signed [7:0] sext_ln232_fu_601_p0;
wire  signed [8:0] sext_ln232_1_fu_620_p1;
wire  signed [8:0] sext_ln232_fu_601_p1;
wire   [8:0] ret_V_fu_624_p2;
wire   [0:0] icmp_ln1077_fu_630_p2;
wire   [0:0] icmp_ln1081_fu_636_p2;
wire   [31:0] tmp_s_fu_655_p6;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_144;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

MPCcore_mux_48_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_48_8_1_1_U1061(
    .din0(helpedList_0_i),
    .din1(helpedList_1_i),
    .din2(helpedList_2_i),
    .din3(helpedList_3_i),
    .din4(index_1_fu_160),
    .dout(rhs_fu_605_p6)
);

MPCcore_mux_48_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
mux_48_32_1_1_U1062(
    .din0(p_read29),
    .din1(p_read30),
    .din2(p_read32),
    .din3(p_read33),
    .din4(index_1_fu_160),
    .dout(tmp_s_fu_655_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1063(
    .din0(p_read3),
    .din1(p_read10),
    .din2(p_read16),
    .din3(p_read22),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_170_fu_677_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1064(
    .din0(p_read5),
    .din1(p_read11),
    .din2(p_read17),
    .din3(p_read23),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_171_fu_688_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1065(
    .din0(p_read6),
    .din1(p_read12),
    .din2(p_read18),
    .din3(p_read24),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_172_fu_699_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1066(
    .din0(p_read7),
    .din1(p_read13),
    .din2(p_read19),
    .din3(p_read25),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_173_fu_710_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1067(
    .din0(p_read8),
    .din1(p_read14),
    .din2(p_read20),
    .din3(p_read26),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_174_fu_721_p6)
);

MPCcore_mux_48_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mux_48_16_1_1_U1068(
    .din0(p_read9),
    .din1(p_read15),
    .din2(p_read21),
    .din3(p_read27),
    .din4(add_ln75_fu_671_p2),
    .dout(tmp_175_fu_732_p6)
);

MPCcore_mux_48_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_48_8_1_1_U1069(
    .din0(location_0_i),
    .din1(location_1_i),
    .din2(location_2_i),
    .din3(location_3_i),
    .din4(add_ln75_reg_954),
    .dout(tmp_169_fu_753_p6)
);

MPCcore_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        if ((1'b1 == ap_ce)) begin
            ap_CS_fsm <= ap_NS_fsm;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_144)) begin
        if ((ap_loop_init == 1'b1)) begin
            J_current_1_fu_168 <= empty;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2))) begin
            J_current_1_fu_168 <= sub_ln859_fu_665_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_144)) begin
        if ((ap_loop_init == 1'b1)) begin
            index_1_fu_160 <= index_0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2))) begin
            index_1_fu_160 <= add_ln75_fu_671_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            lhs_fu_164 <= branch_0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'd1 == and_ln51_reg_947))) begin
            lhs_fu_164 <= tmp_169_fu_753_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag84_1_reg_566 <= write_flag84_0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'd1 == and_ln51_reg_947) & (1'b1 == ap_ce))) begin
        write_flag84_1_reg_566 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln75_reg_954 <= add_ln75_fu_671_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln51_reg_947 <= and_ln51_fu_641_p2;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        J_current_1_out_ap_vld = 1'b1;
    end else begin
        J_current_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'd1 == and_ln51_reg_947))) begin
        ap_sig_allocacmp_lhs_1 = tmp_169_fu_753_p6;
    end else begin
        ap_sig_allocacmp_lhs_1 = lhs_fu_164;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_0_o = 8'd0;
    end else begin
        helpedList_0_o = helpedList_0_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_0_o_ap_vld = 1'b1;
    end else begin
        helpedList_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_1_o = 8'd0;
    end else begin
        helpedList_1_o = helpedList_1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_1_o_ap_vld = 1'b1;
    end else begin
        helpedList_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_2_o = 8'd0;
    end else begin
        helpedList_2_o = helpedList_2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_2_o_ap_vld = 1'b1;
    end else begin
        helpedList_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_3_o = 8'd0;
    end else begin
        helpedList_3_o = helpedList_3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_3_o_ap_vld = 1'b1;
    end else begin
        helpedList_3_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        index_1_out_ap_vld = 1'b1;
    end else begin
        index_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs_out_ap_vld = 1'b1;
    end else begin
        lhs_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_0_o = 8'd0;
    end else begin
        location_0_o = location_0_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_0_o_ap_vld = 1'b1;
    end else begin
        location_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_1_o = 8'd0;
    end else begin
        location_1_o = location_1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_1_o_ap_vld = 1'b1;
    end else begin
        location_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_2_o = 8'd0;
    end else begin
        location_2_o = location_2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_2_o_ap_vld = 1'b1;
    end else begin
        location_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (trunc_ln69_fu_647_p1 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_3_o = 8'd0;
    end else begin
        location_3_o = location_3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln69_fu_647_p1 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_3_o_ap_vld = 1'b1;
    end else begin
        location_3_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rhs_out_ap_vld = 1'b1;
    end else begin
        rhs_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln6_out_ap_vld = 1'b1;
    end else begin
        trunc_ln6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln51_fu_641_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag84_1_out_ap_vld = 1'b1;
    end else begin
        write_flag84_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_0_ap_vld = 1'b1;
    end else begin
        xn_current_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_1_ap_vld = 1'b1;
    end else begin
        xn_current_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_2_ap_vld = 1'b1;
    end else begin
        xn_current_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_3_ap_vld = 1'b1;
    end else begin
        xn_current_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_4_ap_vld = 1'b1;
    end else begin
        xn_current_4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln51_fu_641_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xn_current_5_ap_vld = 1'b1;
    end else begin
        xn_current_5_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign J_current_1_out = J_current_1_fu_168;

assign add_ln75_fu_671_p2 = ($signed(index_1_fu_160) + $signed(8'd255));

assign and_ln51_fu_641_p2 = (icmp_ln1081_fu_636_p2 & icmp_ln1077_fu_630_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_144 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln1077_fu_630_p2 = (($signed(ret_V_fu_624_p2) > $signed(9'd25)) ? 1'b1 : 1'b0);

assign icmp_ln1081_fu_636_p2 = (($signed(index_1_fu_160) > $signed(assignmentbegintemp_V)) ? 1'b1 : 1'b0);

assign index_1_out = index_1_fu_160;

assign lhs_out = lhs_fu_164;

assign ret_V_fu_624_p2 = ($signed(sext_ln232_1_fu_620_p1) + $signed(sext_ln232_fu_601_p1));

assign rhs_out = rhs_fu_605_p6;

assign sext_ln232_1_fu_620_p1 = rhs_fu_605_p6;

assign sext_ln232_fu_601_p0 = ap_sig_allocacmp_lhs_1;

assign sext_ln232_fu_601_p1 = sext_ln232_fu_601_p0;

assign sub_ln859_fu_665_p2 = (J_current_1_fu_168 - tmp_s_fu_655_p6);

assign trunc_ln69_fu_647_p1 = index_1_fu_160[1:0];

assign trunc_ln6_out = index_1_fu_160[1:0];

assign write_flag84_1_out = write_flag84_1_reg_566;

assign xn_current_0 = tmp_170_fu_677_p6;

assign xn_current_1 = tmp_171_fu_688_p6;

assign xn_current_2 = tmp_172_fu_699_p6;

assign xn_current_3 = tmp_173_fu_710_p6;

assign xn_current_4 = tmp_174_fu_721_p6;

assign xn_current_5 = tmp_175_fu_732_p6;

endmodule //MPCcore_ThreadPE_Pipeline_TFLOOP3
