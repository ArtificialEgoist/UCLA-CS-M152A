--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : OctaveSelector_drc.vhf
-- /___/   /\     Timestamp : 05/31/2014 13:32:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.6\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl OctaveSelector_drc.vhf -w "C:/NathanCT/Homework/Junior Year Q3/EE M116L/Lab 6 (Design Lab)/Tests/PortableKeyboard/OctaveSelector.sch"
--Design Name: OctaveSelector
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

entity OctaveSelector is
   port ( ButtonHigh : in    std_logic; 
          ButtonLow  : in    std_logic; 
          ButtonMid  : in    std_logic; 
          Selector0  : out   std_logic; 
          Selector1  : out   std_logic);
end OctaveSelector;

architecture BEHAVIORAL of OctaveSelector is
   attribute BOX_TYPE   : string ;
   signal XLXN_6     : std_logic;
   signal XLXN_7     : std_logic;
   signal XLXN_21    : std_logic;
   signal XLXN_22    : std_logic;
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDC
      port map (C=>ButtonMid,
                CLR=>XLXN_21,
                D=>XLXN_6,
                Q=>Selector0);
   
   XLXI_2 : FDC
      port map (C=>ButtonHigh,
                CLR=>XLXN_22,
                D=>XLXN_7,
                Q=>Selector1);
   
   XLXI_5 : VCC
      port map (P=>XLXN_6);
   
   XLXI_6 : VCC
      port map (P=>XLXN_7);
   
   XLXI_7 : OR2
      port map (I0=>ButtonHigh,
                I1=>ButtonLow,
                O=>XLXN_21);
   
   XLXI_8 : OR2
      port map (I0=>ButtonLow,
                I1=>ButtonMid,
                O=>XLXN_22);
   
end BEHAVIORAL;


