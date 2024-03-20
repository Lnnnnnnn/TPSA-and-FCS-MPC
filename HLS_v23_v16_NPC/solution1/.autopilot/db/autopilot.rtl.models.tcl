set SynModuleInfo {
  {SRCNAME MPCallocate_0627 MODELNAME MPCallocate_0627 RTLNAME MPCcore_MPCallocate_0627
    SUBMODULES {
      {MODELNAME MPCcore_mux_48_8_1_1 RTLNAME MPCcore_mux_48_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matchFunction_0627 MODELNAME matchFunction_0627 RTLNAME MPCcore_matchFunction_0627
    SUBMODULES {
      {MODELNAME MPCcore_mux_168_32_1_1 RTLNAME MPCcore_mux_168_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_168_8_1_1 RTLNAME MPCcore_mux_168_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_165_8_1_1 RTLNAME MPCcore_mux_165_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_168_16_1_1 RTLNAME MPCcore_mux_168_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ThreadPE_Pipeline_TFLOOP3 MODELNAME ThreadPE_Pipeline_TFLOOP3 RTLNAME MPCcore_ThreadPE_Pipeline_TFLOOP3
    SUBMODULES {
      {MODELNAME MPCcore_mux_48_32_1_1 RTLNAME MPCcore_mux_48_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_48_16_1_1 RTLNAME MPCcore_mux_48_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_flow_control_loop_pipe_sequential_init RTLNAME MPCcore_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MPCcore_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ThreadPE_Pipeline_TFLOOP1 MODELNAME ThreadPE_Pipeline_TFLOOP1 RTLNAME MPCcore_ThreadPE_Pipeline_TFLOOP1}
  {SRCNAME ThreadPE_Pipeline_TFLOOP2 MODELNAME ThreadPE_Pipeline_TFLOOP2 RTLNAME MPCcore_ThreadPE_Pipeline_TFLOOP2}
  {SRCNAME ThreadPE MODELNAME ThreadPE RTLNAME MPCcore_ThreadPE
    SUBMODULES {
      {MODELNAME MPCcore_mux_42_8_1_1 RTLNAME MPCcore_mux_42_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_32_3_1_1 RTLNAME MPCcore_mux_32_3_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mux_32_16_1_1 RTLNAME MPCcore_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_16s_14ns_30_4_1 RTLNAME MPCcore_mul_mul_16s_14ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_16s_13s_29_4_1 RTLNAME MPCcore_mul_mul_16s_13s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_9ns_30s_30_4_1 RTLNAME MPCcore_mac_muladd_16s_9ns_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_12ns_29s_29_4_1 RTLNAME MPCcore_mac_muladd_16s_12ns_29s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_10s_30s_30_4_1 RTLNAME MPCcore_mac_muladd_16s_10s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_14ns_29s_30_4_1 RTLNAME MPCcore_mac_muladd_16s_14ns_29s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_16s_14s_30_4_1 RTLNAME MPCcore_mul_mul_16s_14s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_14ns_30ns_30_4_1 RTLNAME MPCcore_mac_muladd_16s_14ns_30ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mac_muladd_16s_15s_30ns_30_4_1 RTLNAME MPCcore_mac_muladd_16s_15s_30ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_19s_19s_38_4_1 RTLNAME MPCcore_mul_mul_19s_19s_38_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intbkb RTLNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intbkb BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intcud RTLNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intcud BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe RTLNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_inteOg RTLNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_inteOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intfYi RTLNAME MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_MPCthread_mulmulmulmulmulmulmulap_fixed_ap_fixed_ap_int_ap_int_ap_fig8j RTLNAME MPCcore_ThreadPE_MPCthread_mulmulmulmulmulmulmulap_fixed_ap_fixed_ap_int_ap_int_ap_fig8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_GATE_0_RAM_1P_BRAM_1R1W RTLNAME MPCcore_ThreadPE_GATE_0_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_GATE_1_RAM_1P_BRAM_1R1W RTLNAME MPCcore_ThreadPE_GATE_1_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_ThreadPE_GATE_2_RAM_1P_BRAM_1R1W RTLNAME MPCcore_ThreadPE_GATE_2_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MPCthread MODELNAME MPCthread RTLNAME MPCcore_MPCthread}
  {SRCNAME MPCcore MODELNAME MPCcore RTLNAME MPCcore IS_TOP 1
    SUBMODULES {
      {MODELNAME MPCcore_mux_165_32_1_1 RTLNAME MPCcore_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_16s_10s_26_4_1 RTLNAME MPCcore_mul_mul_16s_10s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_mul_mul_16s_5ns_22_4_1 RTLNAME MPCcore_mul_mul_16s_5ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_1_0_ROM_AUTO_1R RTLNAME MPCcore_GATE_1_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_1_1_ROM_AUTO_1R RTLNAME MPCcore_GATE_1_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_1_2_ROM_AUTO_1R RTLNAME MPCcore_GATE_1_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_0_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_1_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_2_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_3_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_4_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MPCcore_GATE_unzip_5_ROM_AUTO_1R RTLNAME MPCcore_GATE_unzip_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
