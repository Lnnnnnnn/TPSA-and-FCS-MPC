// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MPCcore_ThreadPE_Pipeline_TFLOOP2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        p_read32,
        p_read33,
        p_read34,
        p_read35,
        p_read36,
        p_read37,
        p_read38,
        p_read39,
        p_read40,
        p_read10,
        p_read3,
        conv3_i752,
        select_ln170,
        select_ln170_1,
        select_ln170_2,
        select_ln170_3,
        select_ln170_4,
        select_ln170_5,
        select_ln170_6,
        select_ln170_7,
        select_ln170_8,
        location_0_6_out,
        location_0_6_out_ap_vld,
        location_1_6_out,
        location_1_6_out_ap_vld,
        location_2_6_out,
        location_2_6_out_ap_vld,
        location_3_6_out,
        location_3_6_out_ap_vld,
        location_4_6_out,
        location_4_6_out_ap_vld,
        location_5_6_out,
        location_5_6_out_ap_vld,
        location_6_6_out,
        location_6_6_out_ap_vld,
        location_7_6_out,
        location_7_6_out_ap_vld,
        location_8_6_out,
        location_8_6_out_ap_vld,
        helpedList_0_4_out,
        helpedList_0_4_out_ap_vld,
        helpedList_1_4_out,
        helpedList_1_4_out_ap_vld,
        helpedList_2_4_out,
        helpedList_2_4_out_ap_vld,
        helpedList_3_4_out,
        helpedList_3_4_out_ap_vld,
        helpedList_4_4_out,
        helpedList_4_4_out_ap_vld,
        helpedList_5_4_out,
        helpedList_5_4_out_ap_vld,
        helpedList_6_4_out,
        helpedList_6_4_out_ap_vld,
        helpedList_7_4_out,
        helpedList_7_4_out_ap_vld,
        helpedList_8_4_out,
        helpedList_8_4_out_ap_vld,
        index_3_out,
        index_3_out_ap_vld,
        lhs_V_out,
        lhs_V_out_ap_vld,
        mux_case_03022_out,
        mux_case_03022_out_ap_vld,
        p_out,
        p_out_ap_vld,
        rhs_V_out,
        rhs_V_out_ap_vld,
        trunc_ln7_out,
        trunc_ln7_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [7:0] p_read11;
input  [7:0] p_read12;
input  [7:0] p_read13;
input  [7:0] p_read14;
input  [7:0] p_read15;
input  [7:0] p_read16;
input  [7:0] p_read17;
input  [7:0] p_read18;
input  [7:0] p_read19;
input  [7:0] p_read32;
input  [7:0] p_read33;
input  [7:0] p_read34;
input  [7:0] p_read35;
input  [7:0] p_read36;
input  [7:0] p_read37;
input  [7:0] p_read38;
input  [7:0] p_read39;
input  [7:0] p_read40;
input  [7:0] p_read10;
input  [31:0] p_read3;
input  [7:0] conv3_i752;
input  [31:0] select_ln170;
input  [31:0] select_ln170_1;
input  [31:0] select_ln170_2;
input  [31:0] select_ln170_3;
input  [31:0] select_ln170_4;
input  [31:0] select_ln170_5;
input  [31:0] select_ln170_6;
input  [31:0] select_ln170_7;
input  [31:0] select_ln170_8;
output  [7:0] location_0_6_out;
output   location_0_6_out_ap_vld;
output  [7:0] location_1_6_out;
output   location_1_6_out_ap_vld;
output  [7:0] location_2_6_out;
output   location_2_6_out_ap_vld;
output  [7:0] location_3_6_out;
output   location_3_6_out_ap_vld;
output  [7:0] location_4_6_out;
output   location_4_6_out_ap_vld;
output  [7:0] location_5_6_out;
output   location_5_6_out_ap_vld;
output  [7:0] location_6_6_out;
output   location_6_6_out_ap_vld;
output  [7:0] location_7_6_out;
output   location_7_6_out_ap_vld;
output  [7:0] location_8_6_out;
output   location_8_6_out_ap_vld;
output  [7:0] helpedList_0_4_out;
output   helpedList_0_4_out_ap_vld;
output  [7:0] helpedList_1_4_out;
output   helpedList_1_4_out_ap_vld;
output  [7:0] helpedList_2_4_out;
output   helpedList_2_4_out_ap_vld;
output  [7:0] helpedList_3_4_out;
output   helpedList_3_4_out_ap_vld;
output  [7:0] helpedList_4_4_out;
output   helpedList_4_4_out_ap_vld;
output  [7:0] helpedList_5_4_out;
output   helpedList_5_4_out_ap_vld;
output  [7:0] helpedList_6_4_out;
output   helpedList_6_4_out_ap_vld;
output  [7:0] helpedList_7_4_out;
output   helpedList_7_4_out_ap_vld;
output  [7:0] helpedList_8_4_out;
output   helpedList_8_4_out_ap_vld;
output  [7:0] index_3_out;
output   index_3_out_ap_vld;
output  [7:0] lhs_V_out;
output   lhs_V_out_ap_vld;
output  [7:0] mux_case_03022_out;
output   mux_case_03022_out_ap_vld;
output  [31:0] p_out;
output   p_out_ap_vld;
output  [7:0] rhs_V_out;
output   rhs_V_out_ap_vld;
output  [3:0] trunc_ln7_out;
output   trunc_ln7_out_ap_vld;

reg ap_idle;
reg location_0_6_out_ap_vld;
reg location_1_6_out_ap_vld;
reg location_2_6_out_ap_vld;
reg location_3_6_out_ap_vld;
reg location_4_6_out_ap_vld;
reg location_5_6_out_ap_vld;
reg location_6_6_out_ap_vld;
reg location_7_6_out_ap_vld;
reg location_8_6_out_ap_vld;
reg helpedList_0_4_out_ap_vld;
reg helpedList_1_4_out_ap_vld;
reg helpedList_2_4_out_ap_vld;
reg helpedList_3_4_out_ap_vld;
reg helpedList_4_4_out_ap_vld;
reg helpedList_5_4_out_ap_vld;
reg helpedList_6_4_out_ap_vld;
reg helpedList_7_4_out_ap_vld;
reg helpedList_8_4_out_ap_vld;
reg index_3_out_ap_vld;
reg lhs_V_out_ap_vld;
reg mux_case_03022_out_ap_vld;
reg p_out_ap_vld;
reg rhs_V_out_ap_vld;
reg trunc_ln7_out_ap_vld;

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
wire   [0:0] and_ln159_fu_890_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [31:0] conv3_i752_cast_fu_638_p1;
reg  signed [31:0] conv3_i752_cast_reg_1510;
wire   [7:0] add_ln75_fu_1065_p2;
reg   [7:0] add_ln75_reg_1521;
reg   [31:0] empty_fu_162;
wire   [31:0] sub_ln859_fu_1059_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [31:0] indvars_iv219_fu_166;
wire   [31:0] add_ln75_18_fu_1071_p2;
reg   [7:0] lhs_V_fu_170;
wire   [7:0] tmp_286_fu_1119_p11;
reg   [7:0] ap_sig_allocacmp_lhs_V_1;
reg   [7:0] index_3_fu_174;
reg   [7:0] mux_case_070_fu_178;
wire   [3:0] trunc_ln172_fu_896_p1;
reg   [7:0] mux_case_172_fu_182;
reg   [7:0] mux_case_274_fu_186;
reg   [7:0] mux_case_376_fu_190;
reg   [7:0] mux_case_478_fu_194;
reg   [7:0] mux_case_580_fu_198;
reg   [7:0] mux_case_682_fu_202;
reg   [7:0] mux_case_784_fu_206;
reg   [7:0] mux_case_886_fu_210;
reg   [7:0] mux_case_03022_fu_214;
reg   [7:0] helpedList_8_4_fu_218;
reg   [7:0] helpedList_7_4_fu_222;
reg   [7:0] helpedList_6_4_fu_226;
reg   [7:0] helpedList_5_4_fu_230;
reg   [7:0] helpedList_4_4_fu_234;
reg   [7:0] helpedList_3_4_fu_238;
reg   [7:0] helpedList_2_4_fu_242;
reg   [7:0] helpedList_1_4_fu_246;
reg   [7:0] helpedList_0_4_fu_250;
reg   [7:0] location_8_6_fu_254;
reg   [7:0] location_7_6_fu_258;
reg   [7:0] location_6_6_fu_262;
reg   [7:0] location_5_6_fu_266;
reg   [7:0] location_4_6_fu_270;
reg   [7:0] location_3_6_fu_274;
reg   [7:0] location_2_6_fu_278;
reg   [7:0] location_1_6_fu_282;
reg   [7:0] location_0_6_fu_286;
wire    ap_block_pp0_stage0_01001;
wire  signed [7:0] rhs_V_fu_844_p11;
wire  signed [7:0] sext_ln232_fu_836_p0;
wire   [7:0] trunc_ln232_fu_840_p1;
wire  signed [8:0] sext_ln232_2_fu_869_p1;
wire  signed [8:0] sext_ln232_fu_836_p1;
wire   [8:0] ret_V_fu_873_p2;
wire   [0:0] icmp_ln1077_fu_879_p2;
wire   [0:0] icmp_ln1081_fu_885_p2;
wire   [31:0] tmp_s_fu_1044_p11;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_139;
reg    ap_condition_562;
reg    ap_condition_566;
reg    ap_condition_570;
reg    ap_condition_574;
reg    ap_condition_578;
reg    ap_condition_582;
reg    ap_condition_586;
reg    ap_condition_590;
reg    ap_condition_601;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U1948(
    .din0(mux_case_070_fu_178),
    .din1(mux_case_172_fu_182),
    .din2(mux_case_274_fu_186),
    .din3(mux_case_376_fu_190),
    .din4(mux_case_478_fu_194),
    .din5(mux_case_580_fu_198),
    .din6(mux_case_682_fu_202),
    .din7(mux_case_784_fu_206),
    .din8(mux_case_886_fu_210),
    .din9(trunc_ln232_fu_840_p1),
    .dout(rhs_V_fu_844_p11)
);

MPCcore_mux_98_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
mux_98_32_1_1_U1949(
    .din0(select_ln170),
    .din1(select_ln170_1),
    .din2(select_ln170_2),
    .din3(select_ln170_3),
    .din4(select_ln170_4),
    .din5(select_ln170_5),
    .din6(select_ln170_6),
    .din7(select_ln170_7),
    .din8(select_ln170_8),
    .din9(trunc_ln232_fu_840_p1),
    .dout(tmp_s_fu_1044_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U1950(
    .din0(mux_case_03022_fu_214),
    .din1(location_1_6_fu_282),
    .din2(location_2_6_fu_278),
    .din3(location_3_6_fu_274),
    .din4(location_4_6_fu_270),
    .din5(location_5_6_fu_266),
    .din6(location_6_6_fu_262),
    .din7(location_7_6_fu_258),
    .din8(location_8_6_fu_254),
    .din9(add_ln75_reg_1521),
    .dout(tmp_286_fu_1119_p11)
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
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_162 <= p_read3;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2))) begin
            empty_fu_162 <= sub_ln859_fu_1059_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_0_4_fu_250 <= p_read32;
        end else if ((1'b1 == ap_condition_562)) begin
            helpedList_0_4_fu_250 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_1_4_fu_246 <= p_read33;
        end else if ((1'b1 == ap_condition_566)) begin
            helpedList_1_4_fu_246 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_2_4_fu_242 <= p_read34;
        end else if ((1'b1 == ap_condition_570)) begin
            helpedList_2_4_fu_242 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_3_4_fu_238 <= p_read35;
        end else if ((1'b1 == ap_condition_574)) begin
            helpedList_3_4_fu_238 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_4_4_fu_234 <= p_read36;
        end else if ((1'b1 == ap_condition_578)) begin
            helpedList_4_4_fu_234 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_5_4_fu_230 <= p_read37;
        end else if ((1'b1 == ap_condition_582)) begin
            helpedList_5_4_fu_230 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_6_4_fu_226 <= p_read38;
        end else if ((1'b1 == ap_condition_586)) begin
            helpedList_6_4_fu_226 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_7_4_fu_222 <= p_read39;
        end else if ((1'b1 == ap_condition_590)) begin
            helpedList_7_4_fu_222 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_8_4_fu_218 <= p_read40;
        end else if ((1'b1 == ap_condition_601)) begin
            helpedList_8_4_fu_218 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            index_3_fu_174 <= 8'd8;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2))) begin
            index_3_fu_174 <= add_ln75_fu_1065_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv219_fu_166 <= 32'd8;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2))) begin
            indvars_iv219_fu_166 <= add_ln75_18_fu_1071_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            lhs_V_fu_170 <= p_read10;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            lhs_V_fu_170 <= tmp_286_fu_1119_p11;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_0_6_fu_286 <= p_read11;
        end else if ((1'b1 == ap_condition_562)) begin
            location_0_6_fu_286 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_1_6_fu_282 <= p_read12;
        end else if ((1'b1 == ap_condition_566)) begin
            location_1_6_fu_282 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_2_6_fu_278 <= p_read13;
        end else if ((1'b1 == ap_condition_570)) begin
            location_2_6_fu_278 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_3_6_fu_274 <= p_read14;
        end else if ((1'b1 == ap_condition_574)) begin
            location_3_6_fu_274 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_4_6_fu_270 <= p_read15;
        end else if ((1'b1 == ap_condition_578)) begin
            location_4_6_fu_270 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_5_6_fu_266 <= p_read16;
        end else if ((1'b1 == ap_condition_582)) begin
            location_5_6_fu_266 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_6_6_fu_262 <= p_read17;
        end else if ((1'b1 == ap_condition_586)) begin
            location_6_6_fu_262 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_7_6_fu_258 <= p_read18;
        end else if ((1'b1 == ap_condition_590)) begin
            location_7_6_fu_258 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_8_6_fu_254 <= p_read19;
        end else if ((1'b1 == ap_condition_601)) begin
            location_8_6_fu_254 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_03022_fu_214 <= p_read11;
        end else if ((1'b1 == ap_condition_562)) begin
            mux_case_03022_fu_214 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_070_fu_178 <= p_read32;
        end else if ((1'b1 == ap_condition_562)) begin
            mux_case_070_fu_178 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_172_fu_182 <= p_read33;
        end else if ((1'b1 == ap_condition_566)) begin
            mux_case_172_fu_182 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_274_fu_186 <= p_read34;
        end else if ((1'b1 == ap_condition_570)) begin
            mux_case_274_fu_186 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_376_fu_190 <= p_read35;
        end else if ((1'b1 == ap_condition_574)) begin
            mux_case_376_fu_190 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_478_fu_194 <= p_read36;
        end else if ((1'b1 == ap_condition_578)) begin
            mux_case_478_fu_194 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_580_fu_198 <= p_read37;
        end else if ((1'b1 == ap_condition_582)) begin
            mux_case_580_fu_198 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_682_fu_202 <= p_read38;
        end else if ((1'b1 == ap_condition_586)) begin
            mux_case_682_fu_202 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_784_fu_206 <= p_read39;
        end else if ((1'b1 == ap_condition_590)) begin
            mux_case_784_fu_206 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ap_loop_init == 1'b1)) begin
            mux_case_886_fu_210 <= p_read40;
        end else if ((1'b1 == ap_condition_601)) begin
            mux_case_886_fu_210 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == and_ln159_fu_890_p2))) begin
        add_ln75_reg_1521 <= add_ln75_fu_1065_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_i752_cast_reg_1510 <= conv3_i752_cast_fu_638_p1;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_lhs_V_1 = tmp_286_fu_1119_p11;
    end else begin
        ap_sig_allocacmp_lhs_V_1 = lhs_V_fu_170;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_0_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_0_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_1_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_1_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_2_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_2_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_3_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_3_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_4_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_4_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_5_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_5_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_6_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_6_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_7_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_7_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_8_4_out_ap_vld = 1'b1;
    end else begin
        helpedList_8_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        index_3_out_ap_vld = 1'b1;
    end else begin
        index_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs_V_out_ap_vld = 1'b1;
    end else begin
        lhs_V_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_0_6_out_ap_vld = 1'b1;
    end else begin
        location_0_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_1_6_out_ap_vld = 1'b1;
    end else begin
        location_1_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_2_6_out_ap_vld = 1'b1;
    end else begin
        location_2_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_3_6_out_ap_vld = 1'b1;
    end else begin
        location_3_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_4_6_out_ap_vld = 1'b1;
    end else begin
        location_4_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_5_6_out_ap_vld = 1'b1;
    end else begin
        location_5_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_6_6_out_ap_vld = 1'b1;
    end else begin
        location_6_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_7_6_out_ap_vld = 1'b1;
    end else begin
        location_7_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_8_6_out_ap_vld = 1'b1;
    end else begin
        location_8_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mux_case_03022_out_ap_vld = 1'b1;
    end else begin
        mux_case_03022_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rhs_V_out_ap_vld = 1'b1;
    end else begin
        rhs_V_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln159_fu_890_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln7_out_ap_vld = 1'b1;
    end else begin
        trunc_ln7_out_ap_vld = 1'b0;
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

assign add_ln75_18_fu_1071_p2 = ($signed(indvars_iv219_fu_166) + $signed(32'd4294967295));

assign add_ln75_fu_1065_p2 = ($signed(trunc_ln232_fu_840_p1) + $signed(8'd255));

assign and_ln159_fu_890_p2 = (icmp_ln1081_fu_885_p2 & icmp_ln1077_fu_879_p2);

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
    ap_condition_139 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_562 = ((trunc_ln172_fu_896_p1 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_566 = ((trunc_ln172_fu_896_p1 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_570 = ((trunc_ln172_fu_896_p1 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_574 = ((trunc_ln172_fu_896_p1 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_578 = ((trunc_ln172_fu_896_p1 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_582 = ((trunc_ln172_fu_896_p1 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_586 = ((trunc_ln172_fu_896_p1 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_590 = ((trunc_ln172_fu_896_p1 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

always @ (*) begin
    ap_condition_601 = (~(trunc_ln172_fu_896_p1 == 4'd7) & ~(trunc_ln172_fu_896_p1 == 4'd6) & ~(trunc_ln172_fu_896_p1 == 4'd5) & ~(trunc_ln172_fu_896_p1 == 4'd4) & ~(trunc_ln172_fu_896_p1 == 4'd3) & ~(trunc_ln172_fu_896_p1 == 4'd2) & ~(trunc_ln172_fu_896_p1 == 4'd1) & ~(trunc_ln172_fu_896_p1 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln159_fu_890_p2));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign conv3_i752_cast_fu_638_p1 = $signed(conv3_i752);

assign helpedList_0_4_out = helpedList_0_4_fu_250;

assign helpedList_1_4_out = helpedList_1_4_fu_246;

assign helpedList_2_4_out = helpedList_2_4_fu_242;

assign helpedList_3_4_out = helpedList_3_4_fu_238;

assign helpedList_4_4_out = helpedList_4_4_fu_234;

assign helpedList_5_4_out = helpedList_5_4_fu_230;

assign helpedList_6_4_out = helpedList_6_4_fu_226;

assign helpedList_7_4_out = helpedList_7_4_fu_222;

assign helpedList_8_4_out = helpedList_8_4_fu_218;

assign icmp_ln1077_fu_879_p2 = (($signed(ret_V_fu_873_p2) > $signed(9'd25)) ? 1'b1 : 1'b0);

assign icmp_ln1081_fu_885_p2 = (($signed(indvars_iv219_fu_166) > $signed(conv3_i752_cast_reg_1510)) ? 1'b1 : 1'b0);

assign index_3_out = index_3_fu_174;

assign lhs_V_out = lhs_V_fu_170;

assign location_0_6_out = location_0_6_fu_286;

assign location_1_6_out = location_1_6_fu_282;

assign location_2_6_out = location_2_6_fu_278;

assign location_3_6_out = location_3_6_fu_274;

assign location_4_6_out = location_4_6_fu_270;

assign location_5_6_out = location_5_6_fu_266;

assign location_6_6_out = location_6_6_fu_262;

assign location_7_6_out = location_7_6_fu_258;

assign location_8_6_out = location_8_6_fu_254;

assign mux_case_03022_out = mux_case_03022_fu_214;

assign p_out = empty_fu_162;

assign ret_V_fu_873_p2 = ($signed(sext_ln232_2_fu_869_p1) + $signed(sext_ln232_fu_836_p1));

assign rhs_V_out = rhs_V_fu_844_p11;

assign sext_ln232_2_fu_869_p1 = rhs_V_fu_844_p11;

assign sext_ln232_fu_836_p0 = ap_sig_allocacmp_lhs_V_1;

assign sext_ln232_fu_836_p1 = sext_ln232_fu_836_p0;

assign sub_ln859_fu_1059_p2 = (empty_fu_162 - tmp_s_fu_1044_p11);

assign trunc_ln172_fu_896_p1 = indvars_iv219_fu_166[3:0];

assign trunc_ln232_fu_840_p1 = indvars_iv219_fu_166[7:0];

assign trunc_ln7_out = indvars_iv219_fu_166[3:0];

endmodule //MPCcore_ThreadPE_Pipeline_TFLOOP2
