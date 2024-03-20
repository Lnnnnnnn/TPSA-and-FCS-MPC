-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intbkb is 
    generic(
             DataWidth     : integer := 11; 
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


architecture rtl of MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intbkb is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000", 1 => "11101101001", 2 => "11011010011", 
    3 => "11101101001", 4 => "11011010011", 5 => "11000111101", 
    6 => "11011010011", 7 => "11000111101", 8 => "10110100111", 
    9 => "00100101100", 10 => "00010010110", 11 => "00000000000", 
    12 => "00010010110", 13 => "00000000000", 14 => "11101101001", 
    15 => "00000000000", 16 => "11101101001", 17 => "11011010011", 
    18 => "01001011000", 19 => "00111000010", 20 => "00100101100", 
    21 => "00111000010", 22 => "00100101100", 23 => "00010010110", 
    24 => "00100101100", 25 => "00010010110", 26 => "00000000000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

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

