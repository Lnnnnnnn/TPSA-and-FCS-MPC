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
        location_0_0,
        location_1_0,
        location_2_0,
        location_3_0,
        location_4_0,
        location_5_0,
        location_6_0,
        location_7_0,
        location_8_0,
        branch_0,
        p_read32,
        p_read33,
        p_read34,
        p_read35,
        p_read36,
        p_read37,
        p_read38,
        p_read39,
        p_read40,
        index_0,
        write_flag21_0,
        empty,
        assignmentbegintemp_V,
        p_read23,
        p_read24,
        p_read25,
        p_read26,
        p_read27,
        p_read28,
        p_read29,
        p_read30,
        p_read31,
        location_0_2_out,
        location_0_2_out_ap_vld,
        location_1_2_out,
        location_1_2_out_ap_vld,
        location_2_2_out,
        location_2_2_out_ap_vld,
        location_3_2_out,
        location_3_2_out_ap_vld,
        location_4_2_out,
        location_4_2_out_ap_vld,
        location_5_2_out,
        location_5_2_out_ap_vld,
        location_6_2_out,
        location_6_2_out_ap_vld,
        location_7_2_out,
        location_7_2_out_ap_vld,
        location_8_2_out,
        location_8_2_out_ap_vld,
        lhs_2_out,
        lhs_2_out_ap_vld,
        helpedList_0_0_out,
        helpedList_0_0_out_ap_vld,
        helpedList_1_0_out,
        helpedList_1_0_out_ap_vld,
        helpedList_2_0_out,
        helpedList_2_0_out_ap_vld,
        helpedList_3_0_out,
        helpedList_3_0_out_ap_vld,
        helpedList_4_0_out,
        helpedList_4_0_out_ap_vld,
        helpedList_5_0_out,
        helpedList_5_0_out_ap_vld,
        helpedList_6_0_out,
        helpedList_6_0_out_ap_vld,
        helpedList_7_0_out,
        helpedList_7_0_out_ap_vld,
        helpedList_8_0_out,
        helpedList_8_0_out_ap_vld,
        index_1_out,
        index_1_out_ap_vld,
        write_flag21_1_out,
        write_flag21_1_out_ap_vld,
        J_current_1_out,
        J_current_1_out_ap_vld,
        rhs_1_out,
        rhs_1_out_ap_vld,
        trunc_ln5_out,
        trunc_ln5_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [7:0] location_0_0;
input  [7:0] location_1_0;
input  [7:0] location_2_0;
input  [7:0] location_3_0;
input  [7:0] location_4_0;
input  [7:0] location_5_0;
input  [7:0] location_6_0;
input  [7:0] location_7_0;
input  [7:0] location_8_0;
input  [7:0] branch_0;
input  [7:0] p_read32;
input  [7:0] p_read33;
input  [7:0] p_read34;
input  [7:0] p_read35;
input  [7:0] p_read36;
input  [7:0] p_read37;
input  [7:0] p_read38;
input  [7:0] p_read39;
input  [7:0] p_read40;
input  [7:0] index_0;
input  [0:0] write_flag21_0;
input  [31:0] empty;
input  [7:0] assignmentbegintemp_V;
input  [31:0] p_read23;
input  [31:0] p_read24;
input  [31:0] p_read25;
input  [31:0] p_read26;
input  [31:0] p_read27;
input  [31:0] p_read28;
input  [31:0] p_read29;
input  [31:0] p_read30;
input  [31:0] p_read31;
output  [7:0] location_0_2_out;
output   location_0_2_out_ap_vld;
output  [7:0] location_1_2_out;
output   location_1_2_out_ap_vld;
output  [7:0] location_2_2_out;
output   location_2_2_out_ap_vld;
output  [7:0] location_3_2_out;
output   location_3_2_out_ap_vld;
output  [7:0] location_4_2_out;
output   location_4_2_out_ap_vld;
output  [7:0] location_5_2_out;
output   location_5_2_out_ap_vld;
output  [7:0] location_6_2_out;
output   location_6_2_out_ap_vld;
output  [7:0] location_7_2_out;
output   location_7_2_out_ap_vld;
output  [7:0] location_8_2_out;
output   location_8_2_out_ap_vld;
output  [7:0] lhs_2_out;
output   lhs_2_out_ap_vld;
output  [7:0] helpedList_0_0_out;
output   helpedList_0_0_out_ap_vld;
output  [7:0] helpedList_1_0_out;
output   helpedList_1_0_out_ap_vld;
output  [7:0] helpedList_2_0_out;
output   helpedList_2_0_out_ap_vld;
output  [7:0] helpedList_3_0_out;
output   helpedList_3_0_out_ap_vld;
output  [7:0] helpedList_4_0_out;
output   helpedList_4_0_out_ap_vld;
output  [7:0] helpedList_5_0_out;
output   helpedList_5_0_out_ap_vld;
output  [7:0] helpedList_6_0_out;
output   helpedList_6_0_out_ap_vld;
output  [7:0] helpedList_7_0_out;
output   helpedList_7_0_out_ap_vld;
output  [7:0] helpedList_8_0_out;
output   helpedList_8_0_out_ap_vld;
output  [7:0] index_1_out;
output   index_1_out_ap_vld;
output  [0:0] write_flag21_1_out;
output   write_flag21_1_out_ap_vld;
output  [31:0] J_current_1_out;
output   J_current_1_out_ap_vld;
output  [7:0] rhs_1_out;
output   rhs_1_out_ap_vld;
output  [3:0] trunc_ln5_out;
output   trunc_ln5_out_ap_vld;

reg ap_idle;
reg location_0_2_out_ap_vld;
reg location_1_2_out_ap_vld;
reg location_2_2_out_ap_vld;
reg location_3_2_out_ap_vld;
reg location_4_2_out_ap_vld;
reg location_5_2_out_ap_vld;
reg location_6_2_out_ap_vld;
reg location_7_2_out_ap_vld;
reg location_8_2_out_ap_vld;
reg lhs_2_out_ap_vld;
reg helpedList_0_0_out_ap_vld;
reg helpedList_1_0_out_ap_vld;
reg helpedList_2_0_out_ap_vld;
reg helpedList_3_0_out_ap_vld;
reg helpedList_4_0_out_ap_vld;
reg helpedList_5_0_out_ap_vld;
reg helpedList_6_0_out_ap_vld;
reg helpedList_7_0_out_ap_vld;
reg helpedList_8_0_out_ap_vld;
reg index_1_out_ap_vld;
reg write_flag21_1_out_ap_vld;
reg J_current_1_out_ap_vld;
reg rhs_1_out_ap_vld;
reg trunc_ln5_out_ap_vld;

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
wire   [0:0] and_ln52_fu_823_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] write_flag21_1_reg_612;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] and_ln52_reg_1271;
wire   [7:0] add_ln75_fu_948_p2;
reg   [7:0] add_ln75_reg_1278;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg   [31:0] J_current_1_fu_168;
wire   [31:0] sub_ln859_fu_942_p2;
reg   [7:0] index_1_fu_172;
reg   [7:0] lhs_fu_176;
wire   [7:0] tmp_285_fu_991_p11;
reg   [7:0] ap_sig_allocacmp_lhs_1;
reg   [7:0] helpedList_8_0_fu_180;
wire   [3:0] trunc_ln70_fu_829_p1;
reg   [7:0] helpedList_7_0_fu_184;
reg   [7:0] helpedList_6_0_fu_188;
reg   [7:0] helpedList_5_0_fu_192;
reg   [7:0] helpedList_4_0_fu_196;
reg   [7:0] helpedList_3_0_fu_200;
reg   [7:0] helpedList_2_0_fu_204;
reg   [7:0] helpedList_1_0_fu_208;
reg   [7:0] helpedList_0_0_fu_212;
reg   [7:0] location_8_2_fu_216;
reg   [7:0] location_7_2_fu_220;
reg   [7:0] location_6_2_fu_224;
reg   [7:0] location_5_2_fu_228;
reg   [7:0] location_4_2_fu_232;
reg   [7:0] location_3_2_fu_236;
reg   [7:0] location_2_2_fu_240;
reg   [7:0] location_1_2_fu_244;
reg   [7:0] location_0_2_fu_248;
wire    ap_block_pp0_stage0_01001;
wire  signed [7:0] rhs_fu_777_p11;
wire  signed [7:0] sext_ln232_fu_773_p0;
wire  signed [8:0] sext_ln232_1_fu_802_p1;
wire  signed [8:0] sext_ln232_fu_773_p1;
wire   [8:0] ret_V_fu_806_p2;
wire   [0:0] icmp_ln1077_fu_812_p2;
wire   [0:0] icmp_ln1081_fu_818_p2;
wire   [31:0] tmp_s_fu_927_p11;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_143;
reg    ap_condition_518;
reg    ap_condition_522;
reg    ap_condition_526;
reg    ap_condition_530;
reg    ap_condition_534;
reg    ap_condition_538;
reg    ap_condition_542;
reg    ap_condition_546;
reg    ap_condition_557;
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
mux_98_8_1_1_U1888(
    .din0(helpedList_0_0_fu_212),
    .din1(helpedList_1_0_fu_208),
    .din2(helpedList_2_0_fu_204),
    .din3(helpedList_3_0_fu_200),
    .din4(helpedList_4_0_fu_196),
    .din5(helpedList_5_0_fu_192),
    .din6(helpedList_6_0_fu_188),
    .din7(helpedList_7_0_fu_184),
    .din8(helpedList_8_0_fu_180),
    .din9(index_1_fu_172),
    .dout(rhs_fu_777_p11)
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
mux_98_32_1_1_U1889(
    .din0(p_read23),
    .din1(p_read24),
    .din2(p_read25),
    .din3(p_read26),
    .din4(p_read27),
    .din5(p_read28),
    .din6(p_read29),
    .din7(p_read30),
    .din8(p_read31),
    .din9(index_1_fu_172),
    .dout(tmp_s_fu_927_p11)
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
mux_98_8_1_1_U1890(
    .din0(location_0_2_fu_248),
    .din1(location_1_2_fu_244),
    .din2(location_2_2_fu_240),
    .din3(location_3_2_fu_236),
    .din4(location_4_2_fu_232),
    .din5(location_5_2_fu_228),
    .din6(location_6_2_fu_224),
    .din7(location_7_2_fu_220),
    .din8(location_8_2_fu_216),
    .din9(add_ln75_reg_1278),
    .dout(tmp_285_fu_991_p11)
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
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            J_current_1_fu_168 <= empty;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2))) begin
            J_current_1_fu_168 <= sub_ln859_fu_942_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_0_0_fu_212 <= p_read32;
        end else if ((1'b1 == ap_condition_518)) begin
            helpedList_0_0_fu_212 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_1_0_fu_208 <= p_read33;
        end else if ((1'b1 == ap_condition_522)) begin
            helpedList_1_0_fu_208 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_2_0_fu_204 <= p_read34;
        end else if ((1'b1 == ap_condition_526)) begin
            helpedList_2_0_fu_204 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_3_0_fu_200 <= p_read35;
        end else if ((1'b1 == ap_condition_530)) begin
            helpedList_3_0_fu_200 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_4_0_fu_196 <= p_read36;
        end else if ((1'b1 == ap_condition_534)) begin
            helpedList_4_0_fu_196 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_5_0_fu_192 <= p_read37;
        end else if ((1'b1 == ap_condition_538)) begin
            helpedList_5_0_fu_192 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_6_0_fu_188 <= p_read38;
        end else if ((1'b1 == ap_condition_542)) begin
            helpedList_6_0_fu_188 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_7_0_fu_184 <= p_read39;
        end else if ((1'b1 == ap_condition_546)) begin
            helpedList_7_0_fu_184 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            helpedList_8_0_fu_180 <= p_read40;
        end else if ((1'b1 == ap_condition_557)) begin
            helpedList_8_0_fu_180 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            index_1_fu_172 <= index_0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2))) begin
            index_1_fu_172 <= add_ln75_fu_948_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            lhs_fu_176 <= branch_0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'd1 == and_ln52_reg_1271))) begin
            lhs_fu_176 <= tmp_285_fu_991_p11;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_0_2_fu_248 <= location_0_0;
        end else if ((1'b1 == ap_condition_518)) begin
            location_0_2_fu_248 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_1_2_fu_244 <= location_1_0;
        end else if ((1'b1 == ap_condition_522)) begin
            location_1_2_fu_244 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_2_2_fu_240 <= location_2_0;
        end else if ((1'b1 == ap_condition_526)) begin
            location_2_2_fu_240 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_3_2_fu_236 <= location_3_0;
        end else if ((1'b1 == ap_condition_530)) begin
            location_3_2_fu_236 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_4_2_fu_232 <= location_4_0;
        end else if ((1'b1 == ap_condition_534)) begin
            location_4_2_fu_232 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_5_2_fu_228 <= location_5_0;
        end else if ((1'b1 == ap_condition_538)) begin
            location_5_2_fu_228 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_6_2_fu_224 <= location_6_0;
        end else if ((1'b1 == ap_condition_542)) begin
            location_6_2_fu_224 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_7_2_fu_220 <= location_7_0;
        end else if ((1'b1 == ap_condition_546)) begin
            location_7_2_fu_220 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        if ((ap_loop_init == 1'b1)) begin
            location_8_2_fu_216 <= location_8_0;
        end else if ((1'b1 == ap_condition_557)) begin
            location_8_2_fu_216 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag21_1_reg_612 <= write_flag21_0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce) & (1'd1 == and_ln52_reg_1271))) begin
        write_flag21_1_reg_612 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == and_ln52_fu_823_p2))) begin
        add_ln75_reg_1278 <= add_ln75_fu_948_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln52_reg_1271 <= and_ln52_fu_823_p2;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        J_current_1_out_ap_vld = 1'b1;
    end else begin
        J_current_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'd1 == and_ln52_reg_1271))) begin
        ap_sig_allocacmp_lhs_1 = tmp_285_fu_991_p11;
    end else begin
        ap_sig_allocacmp_lhs_1 = lhs_fu_176;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_0_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_0_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_1_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_1_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_2_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_2_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_3_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_3_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_4_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_4_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_5_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_5_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_6_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_6_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_7_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_7_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        helpedList_8_0_out_ap_vld = 1'b1;
    end else begin
        helpedList_8_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        index_1_out_ap_vld = 1'b1;
    end else begin
        index_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs_2_out_ap_vld = 1'b1;
    end else begin
        lhs_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_0_2_out_ap_vld = 1'b1;
    end else begin
        location_0_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_1_2_out_ap_vld = 1'b1;
    end else begin
        location_1_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_2_2_out_ap_vld = 1'b1;
    end else begin
        location_2_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_3_2_out_ap_vld = 1'b1;
    end else begin
        location_3_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_4_2_out_ap_vld = 1'b1;
    end else begin
        location_4_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_5_2_out_ap_vld = 1'b1;
    end else begin
        location_5_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_6_2_out_ap_vld = 1'b1;
    end else begin
        location_6_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_7_2_out_ap_vld = 1'b1;
    end else begin
        location_7_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        location_8_2_out_ap_vld = 1'b1;
    end else begin
        location_8_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rhs_1_out_ap_vld = 1'b1;
    end else begin
        rhs_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln5_out_ap_vld = 1'b1;
    end else begin
        trunc_ln5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln52_fu_823_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        write_flag21_1_out_ap_vld = 1'b1;
    end else begin
        write_flag21_1_out_ap_vld = 1'b0;
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

assign add_ln75_fu_948_p2 = ($signed(index_1_fu_172) + $signed(8'd255));

assign and_ln52_fu_823_p2 = (icmp_ln1081_fu_818_p2 & icmp_ln1077_fu_812_p2);

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
    ap_condition_143 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_518 = ((trunc_ln70_fu_829_p1 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_522 = ((trunc_ln70_fu_829_p1 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_526 = ((trunc_ln70_fu_829_p1 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_530 = ((trunc_ln70_fu_829_p1 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_534 = ((trunc_ln70_fu_829_p1 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_538 = ((trunc_ln70_fu_829_p1 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_542 = ((trunc_ln70_fu_829_p1 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_546 = ((trunc_ln70_fu_829_p1 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

always @ (*) begin
    ap_condition_557 = (~(trunc_ln70_fu_829_p1 == 4'd7) & ~(trunc_ln70_fu_829_p1 == 4'd6) & ~(trunc_ln70_fu_829_p1 == 4'd5) & ~(trunc_ln70_fu_829_p1 == 4'd4) & ~(trunc_ln70_fu_829_p1 == 4'd3) & ~(trunc_ln70_fu_829_p1 == 4'd2) & ~(trunc_ln70_fu_829_p1 == 4'd1) & ~(trunc_ln70_fu_829_p1 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'd1 == and_ln52_fu_823_p2));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign helpedList_0_0_out = helpedList_0_0_fu_212;

assign helpedList_1_0_out = helpedList_1_0_fu_208;

assign helpedList_2_0_out = helpedList_2_0_fu_204;

assign helpedList_3_0_out = helpedList_3_0_fu_200;

assign helpedList_4_0_out = helpedList_4_0_fu_196;

assign helpedList_5_0_out = helpedList_5_0_fu_192;

assign helpedList_6_0_out = helpedList_6_0_fu_188;

assign helpedList_7_0_out = helpedList_7_0_fu_184;

assign helpedList_8_0_out = helpedList_8_0_fu_180;

assign icmp_ln1077_fu_812_p2 = (($signed(ret_V_fu_806_p2) > $signed(9'd25)) ? 1'b1 : 1'b0);

assign icmp_ln1081_fu_818_p2 = (($signed(index_1_fu_172) > $signed(assignmentbegintemp_V)) ? 1'b1 : 1'b0);

assign index_1_out = index_1_fu_172;

assign lhs_2_out = lhs_fu_176;

assign location_0_2_out = location_0_2_fu_248;

assign location_1_2_out = location_1_2_fu_244;

assign location_2_2_out = location_2_2_fu_240;

assign location_3_2_out = location_3_2_fu_236;

assign location_4_2_out = location_4_2_fu_232;

assign location_5_2_out = location_5_2_fu_228;

assign location_6_2_out = location_6_2_fu_224;

assign location_7_2_out = location_7_2_fu_220;

assign location_8_2_out = location_8_2_fu_216;

assign ret_V_fu_806_p2 = ($signed(sext_ln232_1_fu_802_p1) + $signed(sext_ln232_fu_773_p1));

assign rhs_1_out = rhs_fu_777_p11;

assign sext_ln232_1_fu_802_p1 = rhs_fu_777_p11;

assign sext_ln232_fu_773_p0 = ap_sig_allocacmp_lhs_1;

assign sext_ln232_fu_773_p1 = sext_ln232_fu_773_p0;

assign sub_ln859_fu_942_p2 = (J_current_1_fu_168 - tmp_s_fu_927_p11);

assign trunc_ln5_out = index_1_fu_172[3:0];

assign trunc_ln70_fu_829_p1 = index_1_fu_172[3:0];

assign write_flag21_1_out = write_flag21_1_reg_612;

endmodule //MPCcore_ThreadPE_Pipeline_TFLOOP3
