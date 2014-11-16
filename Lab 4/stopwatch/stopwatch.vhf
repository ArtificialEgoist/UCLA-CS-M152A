--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : stopwatch.vhf
-- /___/   /\     Timestamp : 05/13/2014 01:54:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/stopwatch/stopwatch.vhf -w C:/ntung/stopwatch/stopwatch.sch
--Design Name: stopwatch
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB2CLE_HXILINX_stopwatch -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CLE_HXILINX_stopwatch is
  
port (
    CEO : out STD_LOGIC;
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;	
    D1  : in STD_LOGIC;	
    L   : in STD_LOGIC );
end CB2CLE_HXILINX_stopwatch;

architecture Behavioral of CB2CLE_HXILINX_stopwatch is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C ='1') then
    if (L = '1') then
      COUNT <= D1&D0;
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0'; 
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0'; 

Q1  <= COUNT(1);
Q0  <= COUNT(0);

end Behavioral;
----- CELL M4_1E_HXILINX_stopwatch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_stopwatch is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_stopwatch;

architecture M4_1E_HXILINX_stopwatch_V of M4_1E_HXILINX_stopwatch is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_stopwatch_V;
----- CELL FTCE_HXILINX_stopwatch -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTCE_HXILINX_stopwatch is
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
end FTCE_HXILINX_stopwatch;

architecture Behavioral of FTCE_HXILINX_stopwatch is
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

----- CELL D2_4E_HXILINX_stopwatch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_stopwatch is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_stopwatch;

architecture D2_4E_HXILINX_stopwatch_V of D2_4E_HXILINX_stopwatch is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_stopwatch_V;
----- CELL M2_1_HXILINX_stopwatch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_stopwatch is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_stopwatch;

architecture M2_1_HXILINX_stopwatch_V of M2_1_HXILINX_stopwatch is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_stopwatch_V;
----- CELL CD4CLE_HXILINX_stopwatch -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CLE_HXILINX_stopwatch is
  
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
end CD4CLE_HXILINX_stopwatch;

architecture Behavioral of CD4CLE_HXILINX_stopwatch is

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

entity SRLatch_MUSER_stopwatch is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          C    : in    std_logic; 
          NotQ : out   std_logic; 
          Q    : out   std_logic);
end SRLatch_MUSER_stopwatch;

architecture BEHAVIORAL of SRLatch_MUSER_stopwatch is
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

entity SwitchDebounce_MUSER_stopwatch is
   port ( C       : in    std_logic; 
          Switch1 : in    std_logic; 
          Switch2 : in    std_logic; 
          Db1     : out   std_logic; 
          Db2     : out   std_logic);
end SwitchDebounce_MUSER_stopwatch;

architecture BEHAVIORAL of SwitchDebounce_MUSER_stopwatch is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
   signal XLXN_12 : std_logic;
   component SRLatch_MUSER_stopwatch
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
   XLXI_2 : SRLatch_MUSER_stopwatch
      port map (A=>Switch1,
                B=>XLXN_10,
                C=>C,
                NotQ=>open,
                Q=>Db1);
   
   XLXI_3 : SRLatch_MUSER_stopwatch
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter2_MUSER_stopwatch is
   port ( C    : in    std_logic; 
          DIV2 : out   std_logic);
end Counter2_MUSER_stopwatch;

architecture BEHAVIORAL of Counter2_MUSER_stopwatch is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                : std_logic;
   signal XLXI_1_CLR_openSignal : std_logic;
   component FTCE_HXILINX_stopwatch
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : FTCE_HXILINX_stopwatch
      port map (C=>C,
                CE=>XLXN_1,
                CLR=>XLXI_1_CLR_openSignal,
                T=>XLXN_1,
                Q=>DIV2);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter5_MUSER_stopwatch is
   port ( C    : in    std_logic; 
          DIV5 : out   std_logic);
end Counter5_MUSER_stopwatch;

architecture BEHAVIORAL of Counter5_MUSER_stopwatch is
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
   component CD4CLE_HXILINX_stopwatch
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
   
   component FTCE_HXILINX_stopwatch
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_3";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_2";
begin
   XLXI_1 : CD4CLE_HXILINX_stopwatch
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
   
   XLXI_6 : FTCE_HXILINX_stopwatch
      port map (C=>C,
                CE=>XLXN_58,
                CLR=>XLXI_6_CLR_openSignal,
                T=>XLXN_56,
                Q=>XLXN_29);
   
   XLXI_7 : FTCE_HXILINX_stopwatch
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter10_MUSER_stopwatch is
   port ( C     : in    std_logic; 
          DIV10 : out   std_logic);
end Counter10_MUSER_stopwatch;

architecture BEHAVIORAL of Counter10_MUSER_stopwatch is
   signal XLXN_1 : std_logic;
   component Counter5_MUSER_stopwatch
      port ( C    : in    std_logic; 
             DIV5 : out   std_logic);
   end component;
   
   component Counter2_MUSER_stopwatch
      port ( C    : in    std_logic; 
             DIV2 : out   std_logic);
   end component;
   
begin
   XLXI_1 : Counter5_MUSER_stopwatch
      port map (C=>C,
                DIV5=>XLXN_1);
   
   XLXI_2 : Counter2_MUSER_stopwatch
      port map (C=>XLXN_1,
                DIV2=>DIV10);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DebounceSync_MUSER_stopwatch is
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
end DebounceSync_MUSER_stopwatch;

architecture BEHAVIORAL of DebounceSync_MUSER_stopwatch is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ClockModule_MUSER_stopwatch is
   port ( C      : in    std_logic; 
          F1Hz   : out   std_logic; 
          F2Hz   : out   std_logic; 
          F4Hz   : out   std_logic; 
          F500Hz : out   std_logic);
end ClockModule_MUSER_stopwatch;

architecture BEHAVIORAL of ClockModule_MUSER_stopwatch is
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_20 : std_logic;
   component Counter10_MUSER_stopwatch
      port ( C     : in    std_logic; 
             DIV10 : out   std_logic);
   end component;
   
   component Counter5_MUSER_stopwatch
      port ( C    : in    std_logic; 
             DIV5 : out   std_logic);
   end component;
   
   component Counter2_MUSER_stopwatch
      port ( C    : in    std_logic; 
             DIV2 : out   std_logic);
   end component;
   
begin
   XLXI_7 : Counter10_MUSER_stopwatch
      port map (C=>C,
                DIV10=>XLXN_5);
   
   XLXI_8 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_5,
                DIV10=>XLXN_6);
   
   XLXI_9 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_6,
                DIV10=>XLXN_7);
   
   XLXI_10 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_7,
                DIV10=>XLXN_8);
   
   XLXI_11 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_8,
                DIV10=>XLXN_20);
   
   XLXI_12 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_20,
                DIV10=>XLXN_17);
   
   XLXI_13 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_17,
                DIV10=>XLXN_11);
   
   XLXI_14 : Counter10_MUSER_stopwatch
      port map (C=>XLXN_11,
                DIV10=>F1Hz);
   
   XLXI_15 : Counter5_MUSER_stopwatch
      port map (C=>XLXN_11,
                DIV5=>F2Hz);
   
   XLXI_16 : Counter5_MUSER_stopwatch
      port map (C=>XLXN_13,
                DIV5=>F4Hz);
   
   XLXI_17 : Counter5_MUSER_stopwatch
      port map (C=>XLXN_17,
                DIV5=>XLXN_13);
   
   XLXI_18 : Counter2_MUSER_stopwatch
      port map (C=>XLXN_20,
                DIV2=>F500Hz);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stopwatch is
   port ( ADJ      : in    std_logic; 
          CLK      : in    std_logic; 
          PAUSE    : in    std_logic; 
          RESET    : in    std_logic; 
          SEL      : in    std_logic; 
          a        : out   std_logic; 
          AN0      : out   std_logic; 
          AN1      : out   std_logic; 
          AN2      : out   std_logic; 
          AN3      : out   std_logic; 
          b        : out   std_logic; 
          c        : out   std_logic; 
          d        : out   std_logic; 
          e        : out   std_logic; 
          f        : out   std_logic; 
          g        : out   std_logic; 
          MIN      : out   std_logic; 
          OVERFLOW : out   std_logic; 
          SEC      : out   std_logic; 
          TOGGLE   : out   std_logic);
   attribute LOC : string ;
   attribute LOC of ADJ : signal is "T10";
   attribute LOC of CLK : signal is "V10";
   attribute LOC of PAUSE : signal is "D9";
   attribute LOC of RESET : signal is "C4";
   attribute LOC of SEL : signal is "T9";
   attribute LOC of a : signal is "T17";
   attribute LOC of AN0 : signal is "N16";
   attribute LOC of AN1 : signal is "N15";
   attribute LOC of AN2 : signal is "P18";
   attribute LOC of AN3 : signal is "P17";
   attribute LOC of b : signal is "T18";
   attribute LOC of c : signal is "U17";
   attribute LOC of d : signal is "U18";
   attribute LOC of e : signal is "M14";
   attribute LOC of f : signal is "N14";
   attribute LOC of g : signal is "L14";
end stopwatch;

architecture BEHAVIORAL of stopwatch is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_86                         : std_logic;
   signal XLXN_87                         : std_logic;
   signal XLXN_91                         : std_logic;
   signal XLXN_100                        : std_logic;
   signal XLXN_108                        : std_logic;
   signal XLXN_109                        : std_logic;
   signal XLXN_113                        : std_logic;
   signal XLXN_121                        : std_logic;
   signal XLXN_124                        : std_logic;
   signal XLXN_173                        : std_logic;
   signal XLXN_174                        : std_logic;
   signal XLXN_175                        : std_logic;
   signal XLXN_176                        : std_logic;
   signal XLXN_177                        : std_logic;
   signal XLXN_178                        : std_logic;
   signal XLXN_179                        : std_logic;
   signal XLXN_180                        : std_logic;
   signal XLXN_181                        : std_logic;
   signal XLXN_182                        : std_logic;
   signal XLXN_184                        : std_logic;
   signal XLXN_186                        : std_logic;
   signal XLXN_188                        : std_logic;
   signal XLXN_189                        : std_logic;
   signal XLXN_190                        : std_logic;
   signal XLXN_192                        : std_logic;
   signal XLXN_194                        : std_logic;
   signal XLXN_195                        : std_logic;
   signal XLXN_196                        : std_logic;
   signal XLXN_197                        : std_logic;
   signal XLXN_198                        : std_logic;
   signal XLXN_199                        : std_logic;
   signal XLXN_200                        : std_logic;
   signal XLXN_201                        : std_logic;
   signal XLXN_202                        : std_logic;
   signal XLXN_203                        : std_logic;
   signal XLXN_204                        : std_logic;
   signal XLXN_205                        : std_logic;
   signal XLXN_206                        : std_logic;
   signal XLXN_207                        : std_logic;
   signal XLXN_208                        : std_logic;
   signal XLXN_209                        : std_logic;
   signal XLXN_210                        : std_logic;
   signal XLXN_211                        : std_logic;
   signal XLXN_212                        : std_logic;
   signal XLXN_213                        : std_logic;
   signal XLXN_214                        : std_logic;
   signal XLXN_215                        : std_logic;
   signal XLXN_216                        : std_logic;
   signal XLXN_217                        : std_logic;
   signal XLXN_218                        : std_logic;
   signal XLXN_219                        : std_logic;
   signal XLXN_220                        : std_logic;
   signal XLXN_221                        : std_logic;
   signal XLXN_256                        : std_logic;
   signal XLXN_264                        : std_logic;
   signal XLXN_267                        : std_logic;
   signal XLXN_296                        : std_logic;
   signal XLXN_297                        : std_logic;
   signal XLXN_305                        : std_logic;
   signal XLXN_313                        : std_logic;
   signal XLXN_339                        : std_logic;
   signal XLXN_347                        : std_logic;
   signal XLXN_355                        : std_logic;
   signal XLXN_361                        : std_logic;
   signal XLXN_362                        : std_logic;
   signal XLXN_369                        : std_logic;
   signal XLXN_380                        : std_logic;
   signal XLXN_392                        : std_logic;
   signal XLXN_393                        : std_logic;
   signal XLXN_402                        : std_logic;
   signal XLXN_414                        : std_logic;
   signal XLXN_417                        : std_logic;
   signal XLXN_434                        : std_logic;
   signal XLXN_445                        : std_logic;
   signal XLXN_449                        : std_logic;
   signal XLXN_461                        : std_logic;
   signal XLXN_466                        : std_logic;
   signal XLXN_477                        : std_logic;
   signal XLXN_478                        : std_logic;
   signal XLXN_479                        : std_logic;
   signal XLXN_480                        : std_logic;
   signal XLXN_501                        : std_logic;
   signal XLXN_503                        : std_logic;
   signal XLXN_504                        : std_logic;
   signal XLXN_505                        : std_logic;
   signal XLXN_506                        : std_logic;
   signal XLXN_511                        : std_logic;
   signal OVERFLOW_DUMMY                  : std_logic;
   signal TOGGLE_DUMMY                    : std_logic;
   signal MIN_DUMMY                       : std_logic;
   signal SEC_DUMMY                       : std_logic;
   signal XLXI_3_D0_openSignal            : std_logic;
   signal XLXI_3_D1_openSignal            : std_logic;
   signal XLXI_3_D2_openSignal            : std_logic;
   signal XLXI_3_D3_openSignal            : std_logic;
   signal XLXI_3_L_openSignal             : std_logic;
   signal XLXI_4_D0_openSignal            : std_logic;
   signal XLXI_4_D1_openSignal            : std_logic;
   signal XLXI_4_D2_openSignal            : std_logic;
   signal XLXI_4_D3_openSignal            : std_logic;
   signal XLXI_4_L_openSignal             : std_logic;
   signal XLXI_5_D0_openSignal            : std_logic;
   signal XLXI_5_D1_openSignal            : std_logic;
   signal XLXI_5_D2_openSignal            : std_logic;
   signal XLXI_5_D3_openSignal            : std_logic;
   signal XLXI_5_L_openSignal             : std_logic;
   signal XLXI_6_D0_openSignal            : std_logic;
   signal XLXI_6_D1_openSignal            : std_logic;
   signal XLXI_6_D2_openSignal            : std_logic;
   signal XLXI_6_D3_openSignal            : std_logic;
   signal XLXI_6_L_openSignal             : std_logic;
   signal XLXI_39_CLR_openSignal          : std_logic;
   signal XLXI_39_D0_openSignal           : std_logic;
   signal XLXI_39_D1_openSignal           : std_logic;
   signal XLXI_39_L_openSignal            : std_logic;
   signal XLXI_78_INPUT_FOURTH_openSignal : std_logic;
   signal XLXI_78_INPUT_THIRD_openSignal  : std_logic;
   signal XLXI_80_CLR_openSignal          : std_logic;
   signal XLXI_107_D0_openSignal          : std_logic;
   signal XLXI_107_D1_openSignal          : std_logic;
   signal XLXI_107_L_openSignal           : std_logic;
   component ClockModule_MUSER_stopwatch
      port ( C      : in    std_logic; 
             F1Hz   : out   std_logic; 
             F2Hz   : out   std_logic; 
             F4Hz   : out   std_logic; 
             F500Hz : out   std_logic);
   end component;
   
   component CD4CLE_HXILINX_stopwatch
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
   
   component segment
      port ( sw3 : in    std_logic; 
             sw2 : in    std_logic; 
             sw1 : in    std_logic; 
             sw0 : in    std_logic; 
             a   : out   std_logic; 
             b   : out   std_logic; 
             c   : out   std_logic; 
             d   : out   std_logic; 
             e   : out   std_logic; 
             f   : out   std_logic; 
             g   : out   std_logic);
   end component;
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component CB2CLE_HXILINX_stopwatch
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component M4_1E_HXILINX_stopwatch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_stopwatch
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component M2_1_HXILINX_stopwatch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component DebounceSync_MUSER_stopwatch
      port ( INPUT_FIRST   : in    std_logic; 
             CLK_2         : in    std_logic; 
             INPUT_FOURTH  : in    std_logic; 
             INPUT_THIRD   : in    std_logic; 
             INPUT_SECOND  : in    std_logic; 
             CLK           : in    std_logic; 
             OUTPUT_FIRST  : out   std_logic; 
             OUTPUT_FOURTH : out   std_logic; 
             OUTPUT_THIRD  : out   std_logic; 
             OUTPUT_SECOND : out   std_logic);
   end component;
   
   component Counter10_MUSER_stopwatch
      port ( C     : in    std_logic; 
             DIV10 : out   std_logic);
   end component;
   
   component FTCE_HXILINX_stopwatch
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component SwitchDebounce_MUSER_stopwatch
      port ( C       : in    std_logic; 
             Switch1 : in    std_logic; 
             Switch2 : in    std_logic; 
             Db1     : out   std_logic; 
             Db2     : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_5";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_4";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_6";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_7";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_8";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_9";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_10";
   attribute HU_SET of XLXI_46 : label is "XLXI_46_11";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_12";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_13";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_14";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_15";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_23";
   attribute HU_SET of XLXI_60 : label is "XLXI_60_16";
   attribute HU_SET of XLXI_61 : label is "XLXI_61_19";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_17";
   attribute HU_SET of XLXI_63 : label is "XLXI_63_18";
   attribute HU_SET of XLXI_80 : label is "XLXI_80_20";
   attribute HU_SET of XLXI_96 : label is "XLXI_96_21";
   attribute HU_SET of XLXI_98 : label is "XLXI_98_22";
   attribute HU_SET of XLXI_107 : label is "XLXI_107_24";
begin
   MIN <= MIN_DUMMY;
   OVERFLOW <= OVERFLOW_DUMMY;
   SEC <= SEC_DUMMY;
   TOGGLE <= TOGGLE_DUMMY;
   XLXI_2 : ClockModule_MUSER_stopwatch
      port map (C=>CLK,
                F1Hz=>XLXN_355,
                F2Hz=>XLXN_393,
                F4Hz=>XLXN_466,
                F500Hz=>XLXN_369);
   
   XLXI_3 : CD4CLE_HXILINX_stopwatch
      port map (C=>XLXN_100,
                CE=>XLXN_362,
                CLR=>XLXN_121,
                D0=>XLXI_3_D0_openSignal,
                D1=>XLXI_3_D1_openSignal,
                D2=>XLXI_3_D2_openSignal,
                D3=>XLXI_3_D3_openSignal,
                L=>XLXI_3_L_openSignal,
                CEO=>open,
                Q0=>XLXN_186,
                Q1=>XLXN_188,
                Q2=>XLXN_189,
                Q3=>XLXN_190,
                TC=>open);
   
   XLXI_4 : CD4CLE_HXILINX_stopwatch
      port map (C=>XLXN_339,
                CE=>MIN_DUMMY,
                CLR=>XLXN_121,
                D0=>XLXI_4_D0_openSignal,
                D1=>XLXI_4_D1_openSignal,
                D2=>XLXI_4_D2_openSignal,
                D3=>XLXI_4_D3_openSignal,
                L=>XLXI_4_L_openSignal,
                CEO=>open,
                Q0=>XLXN_181,
                Q1=>XLXN_182,
                Q2=>XLXN_184,
                Q3=>XLXN_91,
                TC=>open);
   
   XLXI_5 : CD4CLE_HXILINX_stopwatch
      port map (C=>OVERFLOW_DUMMY,
                CE=>XLXN_361,
                CLR=>XLXN_124,
                D0=>XLXI_5_D0_openSignal,
                D1=>XLXI_5_D1_openSignal,
                D2=>XLXI_5_D2_openSignal,
                D3=>XLXI_5_D3_openSignal,
                L=>XLXI_5_L_openSignal,
                CEO=>open,
                Q0=>XLXN_177,
                Q1=>XLXN_178,
                Q2=>XLXN_179,
                Q3=>XLXN_180,
                TC=>open);
   
   XLXI_6 : CD4CLE_HXILINX_stopwatch
      port map (C=>XLXN_347,
                CE=>SEC_DUMMY,
                CLR=>XLXN_121,
                D0=>XLXI_6_D0_openSignal,
                D1=>XLXI_6_D1_openSignal,
                D2=>XLXI_6_D2_openSignal,
                D3=>XLXI_6_D3_openSignal,
                L=>XLXI_6_L_openSignal,
                CEO=>open,
                Q0=>XLXN_173,
                Q1=>XLXN_174,
                Q2=>XLXN_175,
                Q3=>XLXN_176,
                TC=>open);
   
   XLXI_7 : segment
      port map (sw0=>XLXN_173,
                sw1=>XLXN_174,
                sw2=>XLXN_175,
                sw3=>XLXN_176,
                a=>XLXN_197,
                b=>XLXN_201,
                c=>XLXN_205,
                d=>XLXN_209,
                e=>XLXN_213,
                f=>XLXN_217,
                g=>XLXN_221);
   
   XLXI_16 : NOR4
      port map (I0=>XLXN_176,
                I1=>XLXN_175,
                I2=>XLXN_174,
                I3=>XLXN_173,
                O=>OVERFLOW_DUMMY);
   
   XLXI_28 : INV
      port map (I=>XLXN_177,
                O=>XLXN_87);
   
   XLXI_29 : INV
      port map (I=>XLXN_180,
                O=>XLXN_86);
   
   XLXI_30 : AND4
      port map (I0=>XLXN_86,
                I1=>XLXN_179,
                I2=>XLXN_178,
                I3=>XLXN_87,
                O=>XLXN_434);
   
   XLXI_31 : NOR4
      port map (I0=>XLXN_91,
                I1=>XLXN_184,
                I2=>XLXN_182,
                I3=>XLXN_181,
                O=>XLXN_100);
   
   XLXI_32 : INV
      port map (I=>XLXN_186,
                O=>XLXN_109);
   
   XLXI_33 : INV
      port map (I=>XLXN_190,
                O=>XLXN_108);
   
   XLXI_34 : AND4
      port map (I0=>XLXN_108,
                I1=>XLXN_189,
                I2=>XLXN_188,
                I3=>XLXN_109,
                O=>XLXN_113);
   
   XLXI_35 : OR2
      port map (I0=>XLXN_402,
                I1=>XLXN_113,
                O=>XLXN_121);
   
   XLXI_36 : OR2
      port map (I0=>XLXN_121,
                I1=>XLXN_434,
                O=>XLXN_124);
   
   XLXI_39 : CB2CLE_HXILINX_stopwatch
      port map (C=>XLXN_369,
                CE=>XLXN_192,
                CLR=>XLXI_39_CLR_openSignal,
                D0=>XLXI_39_D0_openSignal,
                D1=>XLXI_39_D1_openSignal,
                L=>XLXI_39_L_openSignal,
                CEO=>open,
                Q0=>XLXN_256,
                Q1=>XLXN_264,
                TC=>open);
   
   XLXI_40 : segment
      port map (sw0=>XLXN_177,
                sw1=>XLXN_178,
                sw2=>XLXN_179,
                sw3=>XLXN_180,
                a=>XLXN_196,
                b=>XLXN_200,
                c=>XLXN_204,
                d=>XLXN_208,
                e=>XLXN_212,
                f=>XLXN_216,
                g=>XLXN_220);
   
   XLXI_41 : segment
      port map (sw0=>XLXN_181,
                sw1=>XLXN_182,
                sw2=>XLXN_184,
                sw3=>XLXN_91,
                a=>XLXN_195,
                b=>XLXN_199,
                c=>XLXN_203,
                d=>XLXN_207,
                e=>XLXN_211,
                f=>XLXN_215,
                g=>XLXN_219);
   
   XLXI_42 : segment
      port map (sw0=>XLXN_186,
                sw1=>XLXN_188,
                sw2=>XLXN_189,
                sw3=>XLXN_190,
                a=>XLXN_194,
                b=>XLXN_198,
                c=>XLXN_202,
                d=>XLXN_206,
                e=>XLXN_210,
                f=>XLXN_214,
                g=>XLXN_218);
   
   XLXI_43 : VCC
      port map (P=>XLXN_192);
   
   XLXI_44 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_197,
                D1=>XLXN_196,
                D2=>XLXN_195,
                D3=>XLXN_194,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>a);
   
   XLXI_45 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_201,
                D1=>XLXN_200,
                D2=>XLXN_199,
                D3=>XLXN_198,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>b);
   
   XLXI_46 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_205,
                D1=>XLXN_204,
                D2=>XLXN_203,
                D3=>XLXN_202,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>c);
   
   XLXI_47 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_209,
                D1=>XLXN_208,
                D2=>XLXN_207,
                D3=>XLXN_206,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>d);
   
   XLXI_48 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_213,
                D1=>XLXN_212,
                D2=>XLXN_211,
                D3=>XLXN_210,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>e);
   
   XLXI_49 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_217,
                D1=>XLXN_216,
                D2=>XLXN_215,
                D3=>XLXN_214,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>f);
   
   XLXI_50 : M4_1E_HXILINX_stopwatch
      port map (D0=>XLXN_221,
                D1=>XLXN_220,
                D2=>XLXN_219,
                D3=>XLXN_218,
                E=>XLXN_267,
                S0=>XLXN_256,
                S1=>XLXN_264,
                O=>g);
   
   XLXI_51 : D2_4E_HXILINX_stopwatch
      port map (A0=>XLXN_256,
                A1=>XLXN_264,
                E=>XLXN_192,
                D0=>XLXN_477,
                D1=>XLXN_478,
                D2=>XLXN_479,
                D3=>XLXN_480);
   
   XLXI_56 : VCC
      port map (P=>XLXN_267);
   
   XLXI_60 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_393,
                D1=>XLXN_296,
                S0=>XLXN_380,
                O=>XLXN_305);
   
   XLXI_61 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_297,
                D1=>XLXN_393,
                S0=>XLXN_380,
                O=>XLXN_313);
   
   XLXI_62 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_434,
                D1=>XLXN_305,
                S0=>XLXN_461,
                O=>XLXN_339);
   
   XLXI_63 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_355,
                D1=>XLXN_313,
                S0=>XLXN_461,
                O=>XLXN_347);
   
   XLXI_64 : GND
      port map (G=>XLXN_296);
   
   XLXI_65 : GND
      port map (G=>XLXN_297);
   
   XLXI_78 : DebounceSync_MUSER_stopwatch
      port map (CLK=>XLXN_392,
                CLK_2=>XLXN_393,
                INPUT_FIRST=>RESET,
                INPUT_FOURTH=>XLXI_78_INPUT_FOURTH_openSignal,
                INPUT_SECOND=>PAUSE,
                INPUT_THIRD=>XLXI_78_INPUT_THIRD_openSignal,
                OUTPUT_FIRST=>XLXN_402,
                OUTPUT_FOURTH=>open,
                OUTPUT_SECOND=>XLXN_417,
                OUTPUT_THIRD=>open);
   
   XLXI_79 : Counter10_MUSER_stopwatch
      port map (C=>CLK,
                DIV10=>XLXN_392);
   
   XLXI_80 : FTCE_HXILINX_stopwatch
      port map (C=>XLXN_417,
                CE=>XLXN_414,
                CLR=>XLXI_80_CLR_openSignal,
                T=>XLXN_414,
                Q=>TOGGLE_DUMMY);
   
   XLXI_81 : VCC
      port map (P=>XLXN_414);
   
   XLXI_87 : VCC
      port map (P=>XLXN_362);
   
   XLXI_88 : VCC
      port map (P=>XLXN_361);
   
   XLXI_89 : SwitchDebounce_MUSER_stopwatch
      port map (C=>XLXN_369,
                Switch1=>SEL,
                Switch2=>ADJ,
                Db1=>XLXN_380,
                Db2=>XLXN_461);
   
   XLXI_96 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_449,
                D1=>XLXN_380,
                S0=>XLXN_461,
                O=>SEC_DUMMY);
   
   XLXI_97 : INV
      port map (I=>XLXN_380,
                O=>XLXN_445);
   
   XLXI_98 : M2_1_HXILINX_stopwatch
      port map (D0=>XLXN_449,
                D1=>XLXN_445,
                S0=>XLXN_461,
                O=>MIN_DUMMY);
   
   XLXI_100 : INV
      port map (I=>TOGGLE_DUMMY,
                O=>XLXN_449);
   
   XLXI_107 : CB2CLE_HXILINX_stopwatch
      port map (C=>XLXN_466,
                CE=>XLXN_461,
                CLR=>XLXN_511,
                D0=>XLXI_107_D0_openSignal,
                D1=>XLXI_107_D1_openSignal,
                L=>XLXI_107_L_openSignal,
                CEO=>open,
                Q0=>XLXN_501,
                Q1=>open,
                TC=>open);
   
   XLXI_109 : INV
      port map (I=>XLXN_477,
                O=>XLXN_503);
   
   XLXI_110 : INV
      port map (I=>XLXN_478,
                O=>XLXN_504);
   
   XLXI_111 : INV
      port map (I=>XLXN_479,
                O=>XLXN_505);
   
   XLXI_112 : INV
      port map (I=>XLXN_480,
                O=>XLXN_506);
   
   XLXI_117 : OR2
      port map (I0=>XLXN_501,
                I1=>XLXN_506,
                O=>AN3);
   
   XLXI_118 : OR2
      port map (I0=>XLXN_501,
                I1=>XLXN_505,
                O=>AN2);
   
   XLXI_119 : OR2
      port map (I0=>XLXN_501,
                I1=>XLXN_504,
                O=>AN1);
   
   XLXI_120 : OR2
      port map (I0=>XLXN_501,
                I1=>XLXN_503,
                O=>AN0);
   
   XLXI_121 : INV
      port map (I=>XLXN_461,
                O=>XLXN_511);
   
end BEHAVIORAL;


