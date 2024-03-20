-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MPCcore_ThreadPE_MPCthread_mulmulmulmulmulmulmulap_fixed_ap_fixed_ap_int_ap_int_ap_fig8j is 
    generic(
             DataWidth     : integer := 7; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 27
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of MPCcore_ThreadPE_MPCthread_mulmulmulmulmulmulmulap_fixed_ap_fixed_ap_int_ap_int_ap_fig8j is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000", 1 => "1101100", 2 => "1011001", 3 => "0010011", 
    4 => "0000000", 5 => "1101100", 6 => "0100110", 7 => "0010011", 
    8 to 9=> "0000000", 10 => "1101100", 11 => "1011001", 12 => "0010011", 
    13 => "0000000", 14 => "1101100", 15 => "0100110", 16 => "0010011", 
    17 to 18=> "0000000", 19 => "1101100", 20 => "1011001", 21 => "0010011", 
    22 => "0000000", 23 => "1101100", 24 => "0100110", 25 => "0010011", 
    26 => "0000000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

