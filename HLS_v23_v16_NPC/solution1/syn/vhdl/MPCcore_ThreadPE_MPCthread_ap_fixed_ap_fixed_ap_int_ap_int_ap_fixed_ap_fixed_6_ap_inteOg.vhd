-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_inteOg is 
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


architecture rtl of MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_inteOg is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000", 1 => "11011111011", 2 => "10111110111", 
    3 => "00100000100", 4 => "00000000000", 5 => "11011111011", 
    6 => "01000001000", 7 => "00100000100", 8 to 9=> "00000000000", 
    10 => "11011111011", 11 => "10111110111", 12 => "00100000100", 
    13 => "00000000000", 14 => "11011111011", 15 => "01000001000", 
    16 => "00100000100", 17 to 18=> "00000000000", 19 => "11011111011", 
    20 => "10111110111", 21 => "00100000100", 22 => "00000000000", 
    23 => "11011111011", 24 => "01000001000", 25 => "00100000100", 
    26 => "00000000000" );


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

