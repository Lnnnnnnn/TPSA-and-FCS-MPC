// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MPCcore_ThreadPE_Pipeline_TFLOOP1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        p_read80,
        location_3_load,
        location_2_load,
        location_1_load,
        location_0_load,
        helpedList_3_load,
        helpedList_2_load_1,
        helpedList_1_load_1,
        helpedList_0_load_1,
        p_read82,
        p_read28,
        xn_current_5,
        xn_current_5_ap_vld,
        xn_current_4,
        xn_current_4_ap_vld,
        xn_current_3,
        xn_current_3_ap_vld,
        xn_current_2,
        xn_current_2_ap_vld,
        xn_current_1,
        xn_current_1_ap_vld,
        xn_current_0,
        xn_current_0_ap_vld,
        location_3,
        location_3_ap_vld,
        location_2,
        location_2_ap_vld,
        location_1,
        location_1_ap_vld,
        location_0,
        location_0_ap_vld,
        helpedList_3,
        helpedList_3_ap_vld,
        helpedList_2,
        helpedList_2_ap_vld,
        helpedList_1,
        helpedList_1_ap_vld,
        helpedList_0,
        helpedList_0_ap_vld,
        assignmentbegintemp_V,
        p_read29,
        p_read30,
        p_read32,
        p_read33,
        p_read3,
        p_read10,
        p_read16,
        p_read22,
        p_read5,
        p_read11,
        p_read17,
        p_read23,
        p_read6,
        p_read12,
        p_read18,
        p_read24,
        p_read7,
        p_read13,
        p_read19,
        p_read25,
        p_read8,
        p_read14,
        p_read20,
        p_read26,
        p_read9,
        p_read15,
        p_read21,
        p_read27,
        index_5_out,
        index_5_out_ap_vld,
        mux_case_33616_out,
        mux_case_33616_out_ap_vld,
        mux_case_23514_out,
        mux_case_23514_out_ap_vld,
        mux_case_13412_out,
        mux_case_13412_out_ap_vld,
        mux_case_03310_out,
        mux_case_03310_out_ap_vld,
        lhs_V_1_out,
        lhs_V_1_out_ap_vld,
        p_out,
        p_out_ap_vld,
        rhs_V_3_out,
        rhs_V_3_out_ap_vld,
        trunc_ln8_out,
        trunc_ln8_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [7:0] p_read80;
input  [7:0] location_3_load;
input  [7:0] location_2_load;
input  [7:0] location_1_load;
input  [7:0] location_0_load;
input  [7:0] helpedList_3_load;
input  [7:0] helpedList_2_load_1;
input  [7:0] helpedList_1_load_1;
input  [7:0] helpedList_0_load_1;
input  [7:0] p_read82;
input  [31:0] p_read28;
output  [15:0] xn_current_5;
output   xn_current_5_ap_vld;
output  [15:0] xn_current_4;
output   xn_current_4_ap_vld;
output  [15:0] xn_current_3;
output   xn_current_3_ap_vld;
output  [15:0] xn_current_2;
output   xn_current_2_ap_vld;
output  [15:0] xn_current_1;
output   xn_current_1_ap_vld;
output  [15:0] xn_current_0;
output   xn_current_0_ap_vld;
output  [7:0] location_3;
output   location_3_ap_vld;
output  [7:0] location_2;
output   location_2_ap_vld;
output  [7:0] location_1;
output   location_1_ap_vld;
output  [7:0] location_0;
output   location_0_ap_vld;
output  [7:0] helpedList_3;
output   helpedList_3_ap_vld;
output  [7:0] helpedList_2;
output   helpedList_2_ap_vld;
output  [7:0] helpedList_1;
output   helpedList_1_ap_vld;
output  [7:0] helpedList_0;
output   helpedList_0_ap_vld;
input  [7:0] assignmentbegintemp_V;
input  [31:0] p_read29;
input  [31:0] p_read30;
input  [31:0] p_read32;
input  [31:0] p_read33;
input  [15:0] p_read3;
input  [15:0] p_read10;
input  [15:0] p_read16;
input  [15:0] p_read22;
input  [15:0] p_read5;
input  [15:0] p_read11;
input  [15:0] p_read17;
input  [15:0] p_read23;
input  [15:0] p_read6;
input  [15:0] p_read12;
input  [15:0] p_read18;
input  [15:0] p_read24;
input  [15:0] p_read7;
input  [15:0] p_read13;
input  [15:0] p_read19;
input  [15:0] p_read25;
input  [15:0] p_read8;
input  [15:0] p_read14;
input  [15:0] p_read20;
input  [15:0] p_read26;
input  [15:0] p_read9;
input  [15:0] p_read15;
input  [15:0] p_read21;
input  [15:0] p_read27;
output  [7:0] index_5_out;
output   index_5_out_ap_vld;
output  [7:0] mux_case_33616_out;
output   mux_case_33616_out_ap_vld;
output  [7:0] mux_case_23514_out;
output   mux_case_23514_out_ap_vld;
output  [7:0] mux_case_13412_out;
output   mux_case_13412_out_ap_vld;
output  [7:0] mux_case_03310_out;
output   mux_case_03310_out_ap_vld;
output  [7:0] lhs_V_1_out;
output   lhs_V_1_out_ap_vld;
output  [31:0] p_out;
output   p_out_ap_vld;
output  [7:0] rhs_V_3_out;
output   rhs_V_3_out_ap_vld;
output  [1:0] trunc_ln8_out;
output   trunc_ln8_out_ap_vld;

reg ap_idle;
reg xn_current_5_ap_vld;
reg xn_current_4_ap_vld;
reg xn_current_3_ap_vld;
reg xn_current_2_ap_vld;
reg xn_current_1_ap_vld;
reg xn_current_0_ap_vld;
reg location_3_ap_vld;
reg location_2_ap_vld;
reg location_1_ap_vld;
reg location_0_ap_vld;
reg helpedList_3_ap_vld;
reg helpedList_2_ap_vld;
reg helpedList_1_ap_vld;
reg helpedList_0_ap_vld;
reg index_5_out_ap_vld;
reg mux_case_33616_out_ap_vld;
reg mux_case_23514_out_ap_vld;
reg mux_case_13412_out_ap_vld;
reg mux_case_03310_out_ap_vld;
reg lhs_V_1_out_ap_vld;
reg p_out_ap_vld;
reg rhs_V_3_out_ap_vld;
reg trunc_ln8_out_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_subdone;
wire   [0:0] and_ln211_fu_740_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] add_ln75_fu_810_p2;
reg   [7:0] add_ln75_reg_1175;
wire    ap_block_pp0_stage1_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [31:0] empty_fu_172;
wire   [31:0] sub_ln859_fu_804_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [7:0] lhs_V_1_fu_176;
wire   [7:0] tmp_183_fu_904_p6;
reg   [7:0] index_5_fu_180;
reg   [7:0] mux_case_025_fu_184;
wire   [1:0] trunc_ln226_fu_746_p1;
reg   [7:0] mux_case_126_fu_188;
reg   [7:0] mux_case_227_fu_192;
reg   [7:0] mux_case_328_fu_196;
reg   [7:0] mux_case_03310_fu_200;
wire    ap_block_pp0_stage0;
reg   [7:0] mux_case_13412_fu_204;
reg   [7:0] mux_case_23514_fu_208;
reg   [7:0] mux_case_33616_fu_212;
wire    ap_block_pp0_stage1_01001;
wire   [15:0] tmp_184_fu_816_p6;
wire   [15:0] tmp_185_fu_827_p6;
wire   [15:0] tmp_186_fu_838_p6;
wire   [15:0] tmp_187_fu_849_p6;
wire   [15:0] tmp_188_fu_860_p6;
wire   [15:0] tmp_189_fu_871_p6;
wire  signed [7:0] rhs_V_fu_704_p6;
wire  signed [7:0] sext_ln232_fu_700_p0;
wire  signed [8:0] sext_ln232_3_fu_719_p1;
wire  signed [8:0] sext_ln232_fu_700_p1;
wire   [8:0] ret_V_fu_723_p2;
wire   [0:0] icmp_ln1077_fu_729_p2;
wire   [0:0] icmp_ln1081_fu_735_p2;
wire   [31:0] tmp_s_fu_794_p6;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_479;
reg    ap_condition_483;
reg    ap_condition_147;
reg    ap_condition_492;
reg    ap_condition_498;
reg    ap_condition_504;
reg    ap_condition_510;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
mux_48_8_1_1_U1125(
    .din0(mux_case_025_fu_184),
    .din1(mux_case_126_fu_188),
    .din2(mux_case_227_fu_192),
    .din3(mux_case_328_fu_196),
    .din4(index_5_fu_180),
    .dout(rhs_V_fu_704_p6)
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
mux_48_32_1_1_U1126(
    .din0(p_read29),
    .din1(p_read30),
    .din2(p_read32),
    .din3(p_read33),
    .din4(index_5_fu_180),
    .dout(tmp_s_fu_794_p6)
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
mux_48_16_1_1_U1127(
    .din0(p_read3),
    .din1(p_read10),
    .din2(p_read16),
    .din3(p_read22),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_184_fu_816_p6)
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
mux_48_16_1_1_U1128(
    .din0(p_read5),
    .din1(p_read11),
    .din2(p_read17),
    .din3(p_read23),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_185_fu_827_p6)
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
mux_48_16_1_1_U1129(
    .din0(p_read6),
    .din1(p_read12),
    .din2(p_read18),
    .din3(p_read24),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_186_fu_838_p6)
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
mux_48_16_1_1_U1130(
    .din0(p_read7),
    .din1(p_read13),
    .din2(p_read19),
    .din3(p_read25),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_187_fu_849_p6)
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
mux_48_16_1_1_U1131(
    .din0(p_read8),
    .din1(p_read14),
    .din2(p_read20),
    .din3(p_read26),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_188_fu_860_p6)
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
mux_48_16_1_1_U1132(
    .din0(p_read9),
    .din1(p_read15),
    .din2(p_read21),
    .din3(p_read27),
    .din4(add_ln75_fu_810_p2),
    .dout(tmp_189_fu_871_p6)
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
mux_48_8_1_1_U1133(
    .din0(mux_case_03310_fu_200),
    .din1(mux_case_13412_fu_204),
    .din2(mux_case_23514_fu_208),
    .din3(mux_case_33616_fu_212),
    .din4(add_ln75_reg_1175),
    .dout(tmp_183_fu_904_p6)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            empty_fu_172 <= p_read28;
        end else if ((1'b1 == ap_condition_479)) begin
            empty_fu_172 <= sub_ln859_fu_804_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            index_5_fu_180 <= p_read80;
        end else if ((1'b1 == ap_condition_479)) begin
            index_5_fu_180 <= add_ln75_fu_810_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_147)) begin
        if ((ap_loop_init == 1'b1)) begin
            lhs_V_1_fu_176 <= p_read82;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            lhs_V_1_fu_176 <= tmp_183_fu_904_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_025_fu_184 <= helpedList_0_load_1;
        end else if ((1'b1 == ap_condition_492)) begin
            mux_case_025_fu_184 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_03310_fu_200 <= location_0_load;
        end else if ((1'b1 == ap_condition_492)) begin
            mux_case_03310_fu_200 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_126_fu_188 <= helpedList_1_load_1;
        end else if ((1'b1 == ap_condition_498)) begin
            mux_case_126_fu_188 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_13412_fu_204 <= location_1_load;
        end else if ((1'b1 == ap_condition_498)) begin
            mux_case_13412_fu_204 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_227_fu_192 <= helpedList_2_load_1;
        end else if ((1'b1 == ap_condition_504)) begin
            mux_case_227_fu_192 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_23514_fu_208 <= location_2_load;
        end else if ((1'b1 == ap_condition_504)) begin
            mux_case_23514_fu_208 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_328_fu_196 <= helpedList_3_load;
        end else if ((1'b1 == ap_condition_510)) begin
            mux_case_328_fu_196 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_483)) begin
            mux_case_33616_fu_212 <= location_3_load;
        end else if ((1'b1 == ap_condition_510)) begin
            mux_case_33616_fu_212 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln75_reg_1175 <= add_ln75_fu_810_p2;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        helpedList_0_ap_vld = 1'b1;
    end else begin
        helpedList_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        helpedList_1_ap_vld = 1'b1;
    end else begin
        helpedList_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        helpedList_2_ap_vld = 1'b1;
    end else begin
        helpedList_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        helpedList_3_ap_vld = 1'b1;
    end else begin
        helpedList_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        index_5_out_ap_vld = 1'b1;
    end else begin
        index_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lhs_V_1_out_ap_vld = 1'b1;
    end else begin
        lhs_V_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        location_0_ap_vld = 1'b1;
    end else begin
        location_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        location_1_ap_vld = 1'b1;
    end else begin
        location_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        location_2_ap_vld = 1'b1;
    end else begin
        location_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        location_3_ap_vld = 1'b1;
    end else begin
        location_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mux_case_03310_out_ap_vld = 1'b1;
    end else begin
        mux_case_03310_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mux_case_13412_out_ap_vld = 1'b1;
    end else begin
        mux_case_13412_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mux_case_23514_out_ap_vld = 1'b1;
    end else begin
        mux_case_23514_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mux_case_33616_out_ap_vld = 1'b1;
    end else begin
        mux_case_33616_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        rhs_V_3_out_ap_vld = 1'b1;
    end else begin
        rhs_V_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln211_fu_740_p2) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln8_out_ap_vld = 1'b1;
    end else begin
        trunc_ln8_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_0_ap_vld = 1'b1;
    end else begin
        xn_current_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_1_ap_vld = 1'b1;
    end else begin
        xn_current_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_2_ap_vld = 1'b1;
    end else begin
        xn_current_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_3_ap_vld = 1'b1;
    end else begin
        xn_current_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_4_ap_vld = 1'b1;
    end else begin
        xn_current_4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xn_current_5_ap_vld = 1'b1;
    end else begin
        xn_current_5_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln75_fu_810_p2 = ($signed(index_5_fu_180) + $signed(8'd255));

assign and_ln211_fu_740_p2 = (icmp_ln1081_fu_735_p2 & icmp_ln1077_fu_729_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_147 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_479 = ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_condition_483 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_492 = ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_condition_498 = ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_condition_504 = ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_condition_510 = ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln226_fu_746_p1 == 2'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'd1 == and_ln211_fu_740_p2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign helpedList_0 = 8'd0;

assign helpedList_1 = 8'd0;

assign helpedList_2 = 8'd0;

assign helpedList_3 = 8'd0;

assign icmp_ln1077_fu_729_p2 = (($signed(ret_V_fu_723_p2) > $signed(9'd25)) ? 1'b1 : 1'b0);

assign icmp_ln1081_fu_735_p2 = (($signed(index_5_fu_180) > $signed(assignmentbegintemp_V)) ? 1'b1 : 1'b0);

assign index_5_out = index_5_fu_180;

assign lhs_V_1_out = lhs_V_1_fu_176;

assign location_0 = 8'd0;

assign location_1 = 8'd0;

assign location_2 = 8'd0;

assign location_3 = 8'd0;

assign mux_case_03310_out = mux_case_03310_fu_200;

assign mux_case_13412_out = mux_case_13412_fu_204;

assign mux_case_23514_out = mux_case_23514_fu_208;

assign mux_case_33616_out = mux_case_33616_fu_212;

assign p_out = empty_fu_172;

assign ret_V_fu_723_p2 = ($signed(sext_ln232_3_fu_719_p1) + $signed(sext_ln232_fu_700_p1));

assign rhs_V_3_out = rhs_V_fu_704_p6;

assign sext_ln232_3_fu_719_p1 = rhs_V_fu_704_p6;

assign sext_ln232_fu_700_p0 = lhs_V_1_fu_176;

assign sext_ln232_fu_700_p1 = sext_ln232_fu_700_p0;

assign sub_ln859_fu_804_p2 = (empty_fu_172 - tmp_s_fu_794_p6);

assign trunc_ln226_fu_746_p1 = index_5_fu_180[1:0];

assign trunc_ln8_out = index_5_fu_180[1:0];

assign xn_current_0 = tmp_184_fu_816_p6;

assign xn_current_1 = tmp_185_fu_827_p6;

assign xn_current_2 = tmp_186_fu_838_p6;

assign xn_current_3 = tmp_187_fu_849_p6;

assign xn_current_4 = tmp_188_fu_860_p6;

assign xn_current_5 = tmp_189_fu_871_p6;

endmodule //MPCcore_ThreadPE_Pipeline_TFLOOP1
