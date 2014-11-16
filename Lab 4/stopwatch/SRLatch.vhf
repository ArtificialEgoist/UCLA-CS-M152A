--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : SRLatch.vhf
-- /___/   /\     Timestamp : 05/12/2014 20:26:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/stopwatch/SRLatch.vhf -w C:/ntung/stopwatch/SRLatch.sch
--Design Name: SRLatch
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

entity SRLatch is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          C    : in    std_logic; 
          NotQ : out   std_logic; 
          Q    : out   std_logic);
end SRLatch;

architecture BEHAVIORAL of SRLatch is
   attribute BOX_TYPE   : string ;
   signal XLXN_6     : std_logic;
   signal XLXN_7     : std_logic;
   signal NotQ_DUMMY : std_logic;
   signal Q_DUMMY    : std_logic;
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   NotQ <= NotQ_DUMMY;
   Q <= Q_DUMMY;
   XLXI_6 : NAND2
      port map (I0=>NotQ_DUMMY,
                I1=>XLXN_6,
                O=>Q_DUMMY);
   
   XLXI_7 : NAND2
      port map (I0=>XLXN_7,
                I1=>Q_DUMMY,
                O=>NotQ_DUMMY);
   
   XLXI_9 : NAND2
      port map (I0=>C,
                I1=>A,
                O=>XLXN_6);
   
   XLXI_10 : NAND2
      port map (I0=>B,
                I1=>C,
                O=>XLXN_7);
   
end BEHAVIORAL;


