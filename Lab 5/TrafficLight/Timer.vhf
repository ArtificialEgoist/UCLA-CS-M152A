--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : Timer.vhf
-- /___/   /\     Timestamp : 05/22/2014 04:22:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/Timer.vhf -w C:/ntung/TrafficLight2/Timer.sch
--Design Name: Timer
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CD4CLE_HXILINX_Timer -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CLE_HXILINX_Timer is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC;
    D0   : in STD_LOGIC;
    D1   : in STD_LOGIC;
    D2   : in STD_LOGIC;
    D3   : in STD_LOGIC;
    L    : in STD_LOGIC
    );
end CD4CLE_HXILINX_Timer;

architecture Behavioral of CD4CLE_HXILINX_Timer is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (L ='1') then
      COUNT <= D3&D2&D1&D0; 
    elsif (CE='1') then 

      if (COUNT = "1001") then
        COUNT <= "0000";
      elsif (COUNT = "1011") then
        COUNT <= "0110";
      elsif (COUNT = "1101") then
        COUNT <= "0100";
      elsif (COUNT = "1111") then
        COUNT <= "0010";
      else
        COUNT <= COUNT+1;
      end if;

    end if;
  end if;
end process;

TC   <= '0' when (CLR='1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Timer is
   port ( CLK     : in    std_logic; 
          I       : in    std_logic_vector (3 downto 0); 
          Timeout : out   std_logic);
end Timer;

architecture BEHAVIORAL of Timer is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3               : std_logic;
   signal XLXN_15              : std_logic;
   signal XLXN_26              : std_logic;
   signal XLXN_27              : std_logic;
   signal XLXN_31              : std_logic;
   signal XLXN_32              : std_logic;
   signal XLXN_33              : std_logic;
   signal XLXN_34              : std_logic;
   signal XLXN_35              : std_logic;
   signal Timeout_DUMMY        : std_logic;
   signal XLXI_1_D0_openSignal : std_logic;
   signal XLXI_1_D1_openSignal : std_logic;
   signal XLXI_1_D2_openSignal : std_logic;
   signal XLXI_1_D3_openSignal : std_logic;
   signal XLXI_1_L_openSignal  : std_logic;
   component CD4CLE_HXILINX_Timer
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_17";
begin
   Timeout <= Timeout_DUMMY;
   XLXI_1 : CD4CLE_HXILINX_Timer
      port map (C=>CLK,
                CE=>XLXN_3,
                CLR=>Timeout_DUMMY,
                D0=>XLXI_1_D0_openSignal,
                D1=>XLXI_1_D1_openSignal,
                D2=>XLXI_1_D2_openSignal,
                D3=>XLXI_1_D3_openSignal,
                L=>XLXI_1_L_openSignal,
                CEO=>open,
                Q0=>XLXN_31,
                Q1=>XLXN_27,
                Q2=>XLXN_26,
                Q3=>XLXN_15,
                TC=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_3);
   
   XLXI_5 : XNOR2
      port map (I0=>XLXN_15,
                I1=>I(3),
                O=>XLXN_32);
   
   XLXI_6 : XNOR2
      port map (I0=>XLXN_26,
                I1=>I(2),
                O=>XLXN_33);
   
   XLXI_7 : XNOR2
      port map (I0=>XLXN_27,
                I1=>I(1),
                O=>XLXN_34);
   
   XLXI_8 : XNOR2
      port map (I0=>XLXN_31,
                I1=>I(0),
                O=>XLXN_35);
   
   XLXI_9 : AND4
      port map (I0=>XLXN_35,
                I1=>XLXN_34,
                I2=>XLXN_33,
                I3=>XLXN_32,
                O=>Timeout_DUMMY);
   
end BEHAVIORAL;


