--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : ParameterToValue.vhf
-- /___/   /\     Timestamp : 05/22/2014 04:22:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/ParameterToValue.vhf -w C:/ntung/TrafficLight2/ParameterToValue.sch
--Design Name: ParameterToValue
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ParameterToValue is
   port ( I : in    std_logic_vector (1 downto 0); 
          O : out   std_logic_vector (3 downto 0));
end ParameterToValue;

architecture BEHAVIORAL of ParameterToValue is
   attribute BOX_TYPE   : string ;
   signal XLXN_34 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : VCC
      port map (P=>O(1));
   
   XLXI_2 : GND
      port map (G=>O(3));
   
   XLXI_3 : NOR2
      port map (I0=>I(0),
                I1=>I(1),
                O=>O(2));
   
   XLXI_8 : INV
      port map (I=>I(0),
                O=>XLXN_34);
   
   XLXI_10 : INV
      port map (I=>XLXN_34,
                O=>O(0));
   
end BEHAVIORAL;


