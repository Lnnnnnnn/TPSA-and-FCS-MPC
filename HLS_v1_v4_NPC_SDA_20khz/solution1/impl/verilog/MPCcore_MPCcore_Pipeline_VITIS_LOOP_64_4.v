// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MPCcore_MPCcore_Pipeline_VITIS_LOOP_64_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        Xk_V_address0,
        Xk_V_ce0,
        Xk_V_we0,
        Xk_V_d0,
        xn_currents_V_102,
        xn_currents_V_103,
        xn_currents_V_104,
        xn_currents_V_105,
        xn_currents_V_106,
        xn_currents_V_107
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [2:0] Xk_V_address0;
output   Xk_V_ce0;
output   Xk_V_we0;
output  [15:0] Xk_V_d0;
input  [15:0] xn_currents_V_102;
input  [15:0] xn_currents_V_103;
input  [15:0] xn_currents_V_104;
input  [15:0] xn_currents_V_105;
input  [15:0] xn_currents_V_106;
input  [15:0] xn_currents_V_107;

reg ap_idle;
reg Xk_V_ce0;
reg Xk_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln1073_fu_105_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] i_V_1_cast_fu_117_p1;
reg   [2:0] i_V_fu_44;
wire   [2:0] add_ln886_fu_111_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_V_2;
wire   [15:0] tmp_fu_122_p8;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
reg    ap_condition_114;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

MPCcore_mux_63_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 3 ),
    .dout_WIDTH( 16 ))
mux_63_16_1_1_U8(
    .din0(xn_currents_V_102),
    .din1(xn_currents_V_103),
    .din2(xn_currents_V_104),
    .din3(xn_currents_V_105),
    .din4(xn_currents_V_106),
    .din5(xn_currents_V_107),
    .din6(ap_sig_allocacmp_i_V_2),
    .dout(tmp_fu_122_p8)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if ((~((1'b0 == ap_ce) | (ap_start_int == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_114)) begin
        if ((icmp_ln1073_fu_105_p2 == 1'd0)) begin
            i_V_fu_44 <= add_ln886_fu_111_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_V_fu_44 <= 3'd0;
        end
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        Xk_V_ce0 = 1'b1;
    end else begin
        Xk_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1073_fu_105_p2 == 1'd0) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        Xk_V_we0 = 1'b1;
    end else begin
        Xk_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_ce) | (ap_start_int == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == ap_ce) | (ap_start_int == 1'b0)) & (icmp_ln1073_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == ap_ce) | (ap_start_int == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == ap_ce) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_V_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_V_2 = i_V_fu_44;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Xk_V_address0 = i_V_1_cast_fu_117_p1;

assign Xk_V_d0 = tmp_fu_122_p8;

assign add_ln886_fu_111_p2 = (ap_sig_allocacmp_i_V_2 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

always @ (*) begin
    ap_condition_114 = ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_V_1_cast_fu_117_p1 = ap_sig_allocacmp_i_V_2;

assign icmp_ln1073_fu_105_p2 = ((ap_sig_allocacmp_i_V_2 == 3'd6) ? 1'b1 : 1'b0);

endmodule //MPCcore_MPCcore_Pipeline_VITIS_LOOP_64_4