-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intfYi is 
    generic(
             DataWidth     : integer := 4; 
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


architecture rtl of MPCcore_ThreadPE_MPCthread_ap_fixed_ap_fixed_ap_int_ap_int_ap_fixed_ap_fixed_6_ap_intfYi is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000", 1 => "1100", 2 => "1000", 3 => "0011", 4 => "0000", 
    5 => "1100", 6 => "0111", 7 => "0011", 8 to 9=> "0000", 10 => "1100", 
    11 => "1000", 12 => "0011", 13 => "0000", 14 => "1100", 15 => "0111", 
    16 => "0011", 17 to 18=> "0000", 19 => "1100", 20 => "1000", 21 => "0011", 
    22 => "0000", 23 => "1100", 24 => "0111", 25 => "0011", 26 => "0000" );


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

