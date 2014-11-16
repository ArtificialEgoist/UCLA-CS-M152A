--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : WalkRegister.vhf
-- /___/   /\     Timestamp : 05/22/2014 04:22:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/WalkRegister.vhf -w C:/ntung/TrafficLight2/WalkRegister.sch
--Design Name: WalkRegister
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

entity WalkRegister is
   port ( WalkButton : in    std_logic; 
          WalkReset  : in    std_logic; 
          WalkSignal : out   std_logic);
end WalkRegister;

architecture BEHAVIORAL of WalkRegister is
   attribute BOX_TYPE   : string ;
   signal XLXN_6     : std_logic;
   component FDC
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDC
      port map (C=>WalkButton,
                CLR=>WalkReset,
                D=>XLXN_6,
                Q=>WalkSignal);
   
   XLXI_2 : VCC
      port map (P=>XLXN_6);
   
end BEHAVIORAL;


