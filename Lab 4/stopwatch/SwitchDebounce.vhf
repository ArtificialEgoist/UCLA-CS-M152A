--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : SwitchDebounce.vhf
-- /___/   /\     Timestamp : 05/12/2014 23:47:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/stopwatch/SwitchDebounce.vhf -w C:/ntung/stopwatch/SwitchDebounce.sch
--Design Name: SwitchDebounce
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

entity SRLatch_MUSER_SwitchDebounce is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          C    : in    std_logic; 
          NotQ : out   std_logic; 
          Q    : out   std_logic);
end SRLatch_MUSER_SwitchDebounce;

architecture BEHAVIORAL of SRLatch_MUSER_SwitchDebounce is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SwitchDebounce is
   port ( C       : in    std_logic; 
          Switch1 : in    std_logic; 
          Switch2 : in    std_logic; 
          Db1     : out   std_logic; 
          Db2     : out   std_logic);
end SwitchDebounce;

architecture BEHAVIORAL of SwitchDebounce is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
   signal XLXN_12 : std_logic;
   component SRLatch_MUSER_SwitchDebounce
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             C    : in    std_logic; 
             Q    : out   std_logic; 
             NotQ : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_2 : SRLatch_MUSER_SwitchDebounce
      port map (A=>Switch1,
                B=>XLXN_10,
                C=>C,
                NotQ=>open,
                Q=>Db1);
   
   XLXI_3 : SRLatch_MUSER_SwitchDebounce
      port map (A=>Switch2,
                B=>XLXN_12,
                C=>C,
                NotQ=>open,
                Q=>Db2);
   
   XLXI_6 : INV
      port map (I=>Switch1,
                O=>XLXN_10);
   
   XLXI_7 : INV
      port map (I=>Switch2,
                O=>XLXN_12);
   
end BEHAVIORAL;


