--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : Counter5.vhf
-- /___/   /\     Timestamp : 05/22/2014 04:22:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/Counter5.vhf -w C:/ntung/TrafficLight2/Counter5.sch
--Design Name: Counter5
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTCE_HXILINX_Counter5 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTCE_HXILINX_Counter5 is
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
end FTCE_HXILINX_Counter5;

architecture Behavioral of FTCE_HXILINX_Counter5 is
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

----- CELL CD4CLE_HXILINX_Counter5 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CLE_HXILINX_Counter5 is
  
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
end CD4CLE_HXILINX_Counter5;

architecture Behavioral of CD4CLE_HXILINX_Counter5 is

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

entity Counter5 is
   port ( C    : in    std_logic; 
          DIV5 : out   std_logic);
end Counter5;

architecture BEHAVIORAL of Counter5 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                : std_logic;
   signal XLXN_4                : std_logic;
   signal XLXN_5                : std_logic;
   signal XLXN_6                : std_logic;
   signal XLXN_7                : std_logic;
   signal XLXN_8                : std_logic;
   signal XLXN_11               : std_logic;
   signal XLXN_12               : std_logic;
   signal XLXN_13               : std_logic;
   signal XLXN_14               : std_logic;
   signal XLXN_15               : std_logic;
   signal XLXN_19               : std_logic;
   signal XLXN_20               : std_logic;
   signal XLXN_29               : std_logic;
   signal XLXN_30               : std_logic;
   signal XLXN_43               : std_logic;
   signal XLXN_56               : std_logic;
   signal XLXN_57               : std_logic;
   signal XLXN_58               : std_logic;
   signal XLXI_1_D0_openSignal  : std_logic;
   signal XLXI_1_D1_openSignal  : std_logic;
   signal XLXI_1_D2_openSignal  : std_logic;
   signal XLXI_1_D3_openSignal  : std_logic;
   signal XLXI_1_L_openSignal   : std_logic;
   signal XLXI_6_CLR_openSignal : std_logic;
   signal XLXI_7_CLR_openSignal : std_logic;
   component CD4CLE_HXILINX_Counter5
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component FTCE_HXILINX_Counter5
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_4";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_6";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_5";
begin
   XLXI_1 : CD4CLE_HXILINX_Counter5
      port map (C=>C,
                CE=>XLXN_1,
                CLR=>XLXN_8,
                D0=>XLXI_1_D0_openSignal,
                D1=>XLXI_1_D1_openSignal,
                D2=>XLXI_1_D2_openSignal,
                D3=>XLXI_1_D3_openSignal,
                L=>XLXI_1_L_openSignal,
                CEO=>open,
                Q0=>XLXN_19,
                Q1=>XLXN_4,
                Q2=>XLXN_11,
                Q3=>XLXN_5,
                TC=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
   XLXI_3 : INV
      port map (I=>XLXN_4,
                O=>XLXN_6);
   
   XLXI_4 : INV
      port map (I=>XLXN_5,
                O=>XLXN_7);
   
   XLXI_5 : AND4
      port map (I0=>XLXN_7,
                I1=>XLXN_11,
                I2=>XLXN_6,
                I3=>XLXN_19,
                O=>XLXN_8);
   
   XLXI_6 : FTCE_HXILINX_Counter5
      port map (C=>C,
                CE=>XLXN_58,
                CLR=>XLXI_6_CLR_openSignal,
                T=>XLXN_56,
                Q=>XLXN_29);
   
   XLXI_7 : FTCE_HXILINX_Counter5
      port map (C=>C,
                CE=>XLXN_58,
                CLR=>XLXI_7_CLR_openSignal,
                T=>XLXN_57,
                Q=>XLXN_30);
   
   XLXI_9 : INV
      port map (I=>XLXN_19,
                O=>XLXN_12);
   
   XLXI_11 : INV
      port map (I=>XLXN_4,
                O=>XLXN_13);
   
   XLXI_13 : INV
      port map (I=>XLXN_11,
                O=>XLXN_14);
   
   XLXI_14 : INV
      port map (I=>XLXN_5,
                O=>XLXN_15);
   
   XLXI_15 : AND4
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                I2=>XLXN_13,
                I3=>XLXN_12,
                O=>XLXN_56);
   
   XLXI_16 : INV
      port map (I=>XLXN_5,
                O=>XLXN_43);
   
   XLXI_17 : INV
      port map (I=>XLXN_11,
                O=>XLXN_20);
   
   XLXI_18 : AND4
      port map (I0=>XLXN_43,
                I1=>XLXN_20,
                I2=>XLXN_4,
                I3=>XLXN_19,
                O=>XLXN_57);
   
   XLXI_19 : XOR2
      port map (I0=>XLXN_30,
                I1=>XLXN_29,
                O=>DIV5);
   
   XLXI_20 : VCC
      port map (P=>XLXN_58);
   
end BEHAVIORAL;


