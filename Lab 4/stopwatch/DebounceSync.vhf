--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : DebounceSync.vhf
-- /___/   /\     Timestamp : 05/12/2014 20:26:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/stopwatch/DebounceSync.vhf -w C:/ntung/stopwatch/DebounceSync.sch
--Design Name: DebounceSync
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

entity DebounceSync is
   port ( CLK           : in    std_logic; 
          CLK_2         : in    std_logic; 
          INPUT_FIRST   : in    std_logic; 
          INPUT_FOURTH  : in    std_logic; 
          INPUT_SECOND  : in    std_logic; 
          INPUT_THIRD   : in    std_logic; 
          OUTPUT_FIRST  : out   std_logic; 
          OUTPUT_FOURTH : out   std_logic; 
          OUTPUT_SECOND : out   std_logic; 
          OUTPUT_THIRD  : out   std_logic);
end DebounceSync;

architecture BEHAVIORAL of DebounceSync is
   attribute BOX_TYPE   : string ;
   signal XLXN_8              : std_logic;
   signal XLXN_9              : std_logic;
   signal XLXN_12             : std_logic;
   signal XLXN_43             : std_logic;
   signal XLXN_44             : std_logic;
   signal XLXN_46             : std_logic;
   signal XLXN_49             : std_logic;
   signal XLXN_50             : std_logic;
   signal XLXN_51             : std_logic;
   signal XLXN_54             : std_logic;
   signal XLXN_55             : std_logic;
   signal XLXN_56             : std_logic;
   signal OUTPUT_SECOND_DUMMY : std_logic;
   signal OUTPUT_FIRST_DUMMY  : std_logic;
   signal OUTPUT_THIRD_DUMMY  : std_logic;
   signal OUTPUT_FOURTH_DUMMY : std_logic;
   component debounce
      port ( SIG_IN  : in    std_logic; 
             CLK     : in    std_logic; 
             SIG_OUT : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FDC
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
begin
   OUTPUT_FIRST <= OUTPUT_FIRST_DUMMY;
   OUTPUT_FOURTH <= OUTPUT_FOURTH_DUMMY;
   OUTPUT_SECOND <= OUTPUT_SECOND_DUMMY;
   OUTPUT_THIRD <= OUTPUT_THIRD_DUMMY;
   XLXI_1 : debounce
      port map (CLK=>CLK,
                SIG_IN=>INPUT_FIRST,
                SIG_OUT=>XLXN_49);
   
   XLXI_2 : debounce
      port map (CLK=>CLK,
                SIG_IN=>INPUT_SECOND,
                SIG_OUT=>XLXN_12);
   
   XLXI_3 : debounce
      port map (CLK=>CLK,
                SIG_IN=>INPUT_THIRD,
                SIG_OUT=>XLXN_50);
   
   XLXI_4 : debounce
      port map (CLK=>CLK,
                SIG_IN=>INPUT_FOURTH,
                SIG_OUT=>XLXN_51);
   
   XLXI_11 : FD
      port map (C=>CLK_2,
                D=>XLXN_9,
                Q=>OUTPUT_SECOND_DUMMY);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_12,
                I1=>XLXN_9,
                O=>XLXN_8);
   
   XLXI_13 : FDC
      port map (C=>CLK,
                CLR=>OUTPUT_SECOND_DUMMY,
                D=>XLXN_8,
                Q=>XLXN_9);
   
   XLXI_28 : FDC
      port map (C=>CLK,
                CLR=>OUTPUT_FIRST_DUMMY,
                D=>XLXN_46,
                Q=>XLXN_56);
   
   XLXI_29 : FDC
      port map (C=>CLK,
                CLR=>OUTPUT_THIRD_DUMMY,
                D=>XLXN_43,
                Q=>XLXN_55);
   
   XLXI_30 : FDC
      port map (C=>CLK,
                CLR=>OUTPUT_FOURTH_DUMMY,
                D=>XLXN_44,
                Q=>XLXN_54);
   
   XLXI_32 : FD
      port map (C=>CLK_2,
                D=>XLXN_56,
                Q=>OUTPUT_FIRST_DUMMY);
   
   XLXI_33 : FD
      port map (C=>CLK_2,
                D=>XLXN_55,
                Q=>OUTPUT_THIRD_DUMMY);
   
   XLXI_34 : FD
      port map (C=>CLK_2,
                D=>XLXN_54,
                Q=>OUTPUT_FOURTH_DUMMY);
   
   XLXI_36 : OR2
      port map (I0=>XLXN_50,
                I1=>XLXN_55,
                O=>XLXN_43);
   
   XLXI_37 : OR2
      port map (I0=>XLXN_51,
                I1=>XLXN_54,
                O=>XLXN_44);
   
   XLXI_39 : OR2
      port map (I0=>XLXN_49,
                I1=>XLXN_56,
                O=>XLXN_46);
   
end BEHAVIORAL;


