-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MPCcore_MPCcore_Pipeline_VITIS_LOOP_64_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    Xk_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    Xk_V_ce0 : OUT STD_LOGIC;
    Xk_V_we0 : OUT STD_LOGIC;
    Xk_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_102 : IN STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_103 : IN STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_104 : IN STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_105 : IN STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_106 : IN STD_LOGIC_VECTOR (15 downto 0);
    xn_currents_V_107 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of MPCcore_MPCcore_Pipeline_VITIS_LOOP_64_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln1073_fu_105_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_V_1_cast_fu_117_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_V_fu_44 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln886_fu_111_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V_2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_122_p8 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_114 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component MPCcore_mux_63_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        din3 : IN STD_LOGIC_VECTOR (15 downto 0);
        din4 : IN STD_LOGIC_VECTOR (15 downto 0);
        din5 : IN STD_LOGIC_VECTOR (15 downto 0);
        din6 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component MPCcore_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_63_16_1_1_U8 : component MPCcore_mux_63_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 16,
        din5_WIDTH => 16,
        din6_WIDTH => 3,
        dout_WIDTH => 16)
    port map (
        din0 => xn_currents_V_102,
        din1 => xn_currents_V_103,
        din2 => xn_currents_V_104,
        din3 => xn_currents_V_105,
        din4 => xn_currents_V_106,
        din5 => xn_currents_V_107,
        din6 => ap_sig_allocacmp_i_V_2,
        dout => tmp_fu_122_p8);

    flow_control_loop_pipe_sequential_init_U : component MPCcore_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                if ((ap_const_logic_1 = ap_ce)) then 
                    ap_CS_fsm <= ap_NS_fsm;
                end if; 
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_const_logic_0 = ap_ce) or (ap_start_int = ap_const_logic_0))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_114)) then
                if ((icmp_ln1073_fu_105_p2 = ap_const_lv1_0)) then 
                    i_V_fu_44 <= add_ln886_fu_111_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_44 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_ce, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    Xk_V_address0 <= i_V_1_cast_fu_117_p1(3 - 1 downto 0);

    Xk_V_ce0_assign_proc : process(ap_CS_fsm_state1, ap_ce, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            Xk_V_ce0 <= ap_const_logic_1;
        else 
            Xk_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Xk_V_d0 <= tmp_fu_122_p8;

    Xk_V_we0_assign_proc : process(ap_CS_fsm_state1, ap_ce, icmp_ln1073_fu_105_p2, ap_start_int)
    begin
        if (((icmp_ln1073_fu_105_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            Xk_V_we0 <= ap_const_logic_1;
        else 
            Xk_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln886_fu_111_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_2) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_ce, ap_start_int)
    begin
        if (((ap_const_logic_0 = ap_ce) or (ap_start_int = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_114_assign_proc : process(ap_CS_fsm_state1, ap_ce, ap_start_int)
    begin
                ap_condition_114 <= ((ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, ap_ce, icmp_ln1073_fu_105_p2, ap_start_int)
    begin
        if ((not(((ap_const_logic_0 = ap_ce) or (ap_start_int = ap_const_logic_0))) and (icmp_ln1073_fu_105_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_ce, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if ((not(((ap_const_logic_0 = ap_ce) or (ap_start_int = ap_const_logic_0))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_ce, ap_start_int)
    begin
        if ((not(((ap_const_logic_0 = ap_ce) or (ap_start_int = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_2_assign_proc : process(ap_CS_fsm_state1, i_V_fu_44, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_V_2 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_V_2 <= i_V_fu_44;
        end if; 
    end process;

    i_V_1_cast_fu_117_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_V_2),64));
    icmp_ln1073_fu_105_p2 <= "1" when (ap_sig_allocacmp_i_V_2 = ap_const_lv3_6) else "0";
end behav;