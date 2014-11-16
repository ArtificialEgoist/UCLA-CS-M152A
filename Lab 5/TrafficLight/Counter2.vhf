--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : Counter2.vhf
-- /___/   /\     Timestamp : 05/22/2014 04:22:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/Counter2.vhf -w C:/ntung/TrafficLight2/Counter2.sch
--Design Name: Counter2
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTCE_HXILINX_Counter2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTCE_HXILINX_Counter2 is
 generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTCE_HXILINX_Counter2;

architecture Behavioral of FTCE_HXILINX_Counter2 is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(CE='1') then
      if(T='1') then
        q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter2 is
   port ( C    : in    std_logic; 
          DIV2 : out   std_logic);
end Counter2;

architecture BEHAVIORAL of Counter2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                : std_logic;
   signal XLXI_1_CLR_openSignal : std_logic;
   component FTCE_HXILINX_Counter2
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_11";
begin
   XLXI_1 : FTCE_HXILINX_Counter2
      port map (C=>C,
                CE=>XLXN_1,
                CLR=>XLXI_1_CLR_openSignal,
                T=>XLXN_1,
                Q=>DIV2);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
end BEHAVIORAL;


