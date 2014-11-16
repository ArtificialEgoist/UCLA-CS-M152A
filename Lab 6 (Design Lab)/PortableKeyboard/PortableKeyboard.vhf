--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : PortableKeyboard.vhf
-- /___/   /\     Timestamp : 05/29/2014 15:37:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/PortableKeyboard/PortableKeyboard.vhf -w C:/ntung/PortableKeyboard/PortableKeyboard.sch
--Design Name: PortableKeyboard
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_PortableKeyboard -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_PortableKeyboard is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_PortableKeyboard;

architecture M8_1E_HXILINX_PortableKeyboard_V of M8_1E_HXILINX_PortableKeyboard is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_PortableKeyboard_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PortableKeyboard is
   port ( CLK         : in    std_logic; 
          SwitchA     : in    std_logic; 
          SwitchB     : in    std_logic; 
          SwitchC     : in    std_logic; 
          SwitchD     : in    std_logic; 
          SwitchE     : in    std_logic; 
          SwitchF     : in    std_logic; 
          SwitchG     : in    std_logic; 
          SwitchHighC : in    std_logic; 
          Note        : out   std_logic);
   attribute LOC : string ;
   attribute LOC of CLK : signal is "V10";
   attribute LOC of SwitchA : signal is "V9";
   attribute LOC of SwitchB : signal is "T9";
   attribute LOC of SwitchC : signal is "T5";
   attribute LOC of SwitchD : signal is "V8";
   attribute LOC of SwitchE : signal is "U8";
   attribute LOC of SwitchF : signal is "N8";
   attribute LOC of SwitchG : signal is "M8";
   attribute LOC of SwitchHighC : signal is "T10";
   attribute LOC of Note : signal is "T12";
end PortableKeyboard;

architecture BEHAVIORAL of PortableKeyboard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_5                   : std_logic;
   signal XLXN_7                   : std_logic;
   signal XLXN_12                  : std_logic;
   signal XLXN_13                  : std_logic;
   signal XLXN_14                  : std_logic;
   signal XLXN_16                  : std_logic;
   signal XLXN_19                  : std_logic;
   signal XLXN_25                  : std_logic;
   signal XLXN_87                  : std_logic;
   signal XLXN_88                  : std_logic;
   signal XLXN_89                  : std_logic;
   signal XLXN_90                  : std_logic;
   signal XLXN_91                  : std_logic;
   signal XLXI_5_reset_openSignal  : std_logic;
   signal XLXI_7_reset_openSignal  : std_logic;
   signal XLXI_9_reset_openSignal  : std_logic;
   signal XLXI_10_reset_openSignal : std_logic;
   signal XLXI_11_reset_openSignal : std_logic;
   signal XLXI_12_reset_openSignal : std_logic;
   signal XLXI_14_reset_openSignal : std_logic;
   signal XLXI_17_reset_openSignal : std_logic;
   component M8_1E_HXILINX_PortableKeyboard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component HighC
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component B5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component A5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component G5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component F5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component E5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component D5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component C5
      port ( CLK   : in    std_logic; 
             reset : in    std_logic; 
             NCLK  : out   std_logic);
   end component;
   
   component KeyEncoder
      port ( Switch0   : in    std_logic; 
             Switch1   : in    std_logic; 
             Switch2   : in    std_logic; 
             Switch3   : in    std_logic; 
             Switch4   : in    std_logic; 
             Switch5   : in    std_logic; 
             Switch6   : in    std_logic; 
             Switch7   : in    std_logic; 
             Encoding0 : out   std_logic; 
             Encoding1 : out   std_logic; 
             Encoding2 : out   std_logic; 
             Encoding3 : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_0";
begin
   XLXI_4 : M8_1E_HXILINX_PortableKeyboard
      port map (D0=>XLXN_25,
                D1=>XLXN_19,
                D2=>XLXN_16,
                D3=>XLXN_14,
                D4=>XLXN_13,
                D5=>XLXN_12,
                D6=>XLXN_7,
                D7=>XLXN_5,
                E=>XLXN_91,
                S0=>XLXN_87,
                S1=>XLXN_88,
                S2=>XLXN_89,
                O=>Note);
   
   XLXI_5 : HighC
      port map (CLK=>CLK,
                reset=>XLXI_5_reset_openSignal,
                NCLK=>XLXN_5);
   
   XLXI_7 : B5
      port map (CLK=>CLK,
                reset=>XLXI_7_reset_openSignal,
                NCLK=>XLXN_7);
   
   XLXI_9 : A5
      port map (CLK=>CLK,
                reset=>XLXI_9_reset_openSignal,
                NCLK=>XLXN_12);
   
   XLXI_10 : G5
      port map (CLK=>CLK,
                reset=>XLXI_10_reset_openSignal,
                NCLK=>XLXN_13);
   
   XLXI_11 : F5
      port map (CLK=>CLK,
                reset=>XLXI_11_reset_openSignal,
                NCLK=>XLXN_14);
   
   XLXI_12 : E5
      port map (CLK=>CLK,
                reset=>XLXI_12_reset_openSignal,
                NCLK=>XLXN_16);
   
   XLXI_14 : D5
      port map (CLK=>CLK,
                reset=>XLXI_14_reset_openSignal,
                NCLK=>XLXN_19);
   
   XLXI_17 : C5
      port map (CLK=>CLK,
                reset=>XLXI_17_reset_openSignal,
                NCLK=>XLXN_25);
   
   XLXI_52 : KeyEncoder
      port map (Switch0=>SwitchC,
                Switch1=>SwitchD,
                Switch2=>SwitchE,
                Switch3=>SwitchF,
                Switch4=>SwitchG,
                Switch5=>SwitchA,
                Switch6=>SwitchB,
                Switch7=>SwitchHighC,
                Encoding0=>XLXN_87,
                Encoding1=>XLXN_88,
                Encoding2=>XLXN_89,
                Encoding3=>XLXN_90);
   
   XLXI_53 : INV
      port map (I=>XLXN_90,
                O=>XLXN_91);
   
end BEHAVIORAL;


