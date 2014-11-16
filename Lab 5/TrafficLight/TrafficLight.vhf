--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : TrafficLight.vhf
-- /___/   /\     Timestamp : 05/22/2014 14:14:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ntung/TrafficLight2/TrafficLight.vhf -w C:/ntung/TrafficLight2/TrafficLight.sch
--Design Name: TrafficLight
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTC_HXILINX_TrafficLight -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_TrafficLight is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_TrafficLight;

architecture Behavioral of FTC_HXILINX_TrafficLight is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL FTCE_HXILINX_TrafficLight -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTCE_HXILINX_TrafficLight is
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
end FTCE_HXILINX_TrafficLight;

architecture Behavioral of FTCE_HXILINX_TrafficLight is
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

----- CELL CD4CLE_HXILINX_TrafficLight -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CLE_HXILINX_TrafficLight is
  
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
end CD4CLE_HXILINX_TrafficLight;

architecture Behavioral of CD4CLE_HXILINX_TrafficLight is

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

entity WalkRegister_MUSER_TrafficLight is
   port ( WalkButton : in    std_logic; 
          WalkReset  : in    std_logic; 
          WalkSignal : out   std_logic);
end WalkRegister_MUSER_TrafficLight;

architecture BEHAVIORAL of WalkRegister_MUSER_TrafficLight is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DebounceSync_MUSER_TrafficLight is
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
end DebounceSync_MUSER_TrafficLight;

architecture BEHAVIORAL of DebounceSync_MUSER_TrafficLight is
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

entity SRLatch_MUSER_TrafficLight is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          C    : in    std_logic; 
          NotQ : out   std_logic; 
          Q    : out   std_logic);
end SRLatch_MUSER_TrafficLight;

architecture BEHAVIORAL of SRLatch_MUSER_TrafficLight is
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

entity SwitchDebounce_MUSER_TrafficLight is
   port ( C       : in    std_logic; 
          Switch1 : in    std_logic; 
          Switch2 : in    std_logic; 
          Db1     : out   std_logic; 
          Db2     : out   std_logic);
end SwitchDebounce_MUSER_TrafficLight;

architecture BEHAVIORAL of SwitchDebounce_MUSER_TrafficLight is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
   signal XLXN_12 : std_logic;
   component SRLatch_MUSER_TrafficLight
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
   XLXI_2 : SRLatch_MUSER_TrafficLight
      port map (A=>Switch1,
                B=>XLXN_10,
                C=>C,
                NotQ=>open,
                Q=>Db1);
   
   XLXI_3 : SRLatch_MUSER_TrafficLight
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

entity Timer_MUSER_TrafficLight is
   port ( CLK     : in    std_logic; 
          I       : in    std_logic_vector (3 downto 0); 
          Timeout : out   std_logic);
end Timer_MUSER_TrafficLight;

architecture BEHAVIORAL of Timer_MUSER_TrafficLight is
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
   component CD4CLE_HXILINX_TrafficLight
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   Timeout <= Timeout_DUMMY;
   XLXI_1 : CD4CLE_HXILINX_TrafficLight
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ParameterToValue_MUSER_TrafficLight is
   port ( I : in    std_logic_vector (1 downto 0); 
          O : out   std_logic_vector (3 downto 0));
end ParameterToValue_MUSER_TrafficLight;

architecture BEHAVIORAL of ParameterToValue_MUSER_TrafficLight is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter2_MUSER_TrafficLight is
   port ( C    : in    std_logic; 
          DIV2 : out   std_logic);
end Counter2_MUSER_TrafficLight;

architecture BEHAVIORAL of Counter2_MUSER_TrafficLight is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                : std_logic;
   signal XLXI_1_CLR_openSignal : std_logic;
   component FTCE_HXILINX_TrafficLight
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
begin
   XLXI_1 : FTCE_HXILINX_TrafficLight
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

entity Counter5_MUSER_TrafficLight is
   port ( C    : in    std_logic; 
          DIV5 : out   std_logic);
end Counter5_MUSER_TrafficLight;

architecture BEHAVIORAL of Counter5_MUSER_TrafficLight is
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
   component CD4CLE_HXILINX_TrafficLight
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
   
   component FTCE_HXILINX_TrafficLight
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_2";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_4";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_3";
begin
   XLXI_1 : CD4CLE_HXILINX_TrafficLight
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
   
   XLXI_6 : FTCE_HXILINX_TrafficLight
      port map (C=>C,
                CE=>XLXN_58,
                CLR=>XLXI_6_CLR_openSignal,
                T=>XLXN_56,
                Q=>XLXN_29);
   
   XLXI_7 : FTCE_HXILINX_TrafficLight
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

entity Counter10_MUSER_TrafficLight is
   port ( C     : in    std_logic; 
          DIV10 : out   std_logic);
end Counter10_MUSER_TrafficLight;

architecture BEHAVIORAL of Counter10_MUSER_TrafficLight is
   signal XLXN_1 : std_logic;
   component Counter5_MUSER_TrafficLight
      port ( C    : in    std_logic; 
             DIV5 : out   std_logic);
   end component;
   
   component Counter2_MUSER_TrafficLight
      port ( C    : in    std_logic; 
             DIV2 : out   std_logic);
   end component;
   
begin
   XLXI_1 : Counter5_MUSER_TrafficLight
      port map (C=>C,
                DIV5=>XLXN_1);
   
   XLXI_2 : Counter2_MUSER_TrafficLight
      port map (C=>XLXN_1,
                DIV2=>DIV10);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Divider_MUSER_TrafficLight is
   port ( C      : in    std_logic; 
          F1Hz   : out   std_logic; 
          F2Hz   : out   std_logic; 
          F50MHz : out   std_logic; 
          F500Hz : out   std_logic);
end Divider_MUSER_TrafficLight;

architecture BEHAVIORAL of Divider_MUSER_TrafficLight is
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_25 : std_logic;
   component Counter10_MUSER_TrafficLight
      port ( C     : in    std_logic; 
             DIV10 : out   std_logic);
   end component;
   
   component Counter5_MUSER_TrafficLight
      port ( C    : in    std_logic; 
             DIV5 : out   std_logic);
   end component;
   
   component Counter2_MUSER_TrafficLight
      port ( C    : in    std_logic; 
             DIV2 : out   std_logic);
   end component;
   
begin
   XLXI_7 : Counter10_MUSER_TrafficLight
      port map (C=>C,
                DIV10=>XLXN_25);
   
   XLXI_8 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_25,
                DIV10=>XLXN_6);
   
   XLXI_9 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_6,
                DIV10=>XLXN_7);
   
   XLXI_10 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_7,
                DIV10=>XLXN_8);
   
   XLXI_11 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_8,
                DIV10=>XLXN_20);
   
   XLXI_12 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_20,
                DIV10=>XLXN_21);
   
   XLXI_13 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_21,
                DIV10=>XLXN_11);
   
   XLXI_14 : Counter10_MUSER_TrafficLight
      port map (C=>XLXN_11,
                DIV10=>F1Hz);
   
   XLXI_15 : Counter5_MUSER_TrafficLight
      port map (C=>XLXN_11,
                DIV5=>F2Hz);
   
   XLXI_45 : Counter2_MUSER_TrafficLight
      port map (C=>C,
                DIV2=>F50MHz);
   
   XLXI_46 : Counter2_MUSER_TrafficLight
      port map (C=>XLXN_20,
                DIV2=>F500Hz);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TrafficLight is
   port ( CLK       : in    std_logic; 
          Reset     : in    std_logic; 
          Sensor    : in    std_logic; 
          Walk      : in    std_logic; 
          Clock     : out   std_logic; 
          Gm        : out   std_logic; 
          Gs        : out   std_logic; 
          Rm        : out   std_logic; 
          Rs        : out   std_logic; 
          WalkLight : out   std_logic; 
          WalkSound : out   std_logic; 
          Ym        : out   std_logic; 
          Ys        : out   std_logic);
   attribute LOC : string ;
   attribute LOC of CLK : signal is "V10";
   attribute LOC of Reset : signal is "C4";
   attribute LOC of Sensor : signal is "T10";
   attribute LOC of Walk : signal is "D9";
   attribute LOC of Clock : signal is "V16";
   attribute LOC of Gm : signal is "N11";
   attribute LOC of Gs : signal is "U15";
   attribute LOC of Rm : signal is "T11";
   attribute LOC of Rs : signal is "M11";
   attribute LOC of WalkLight : signal is "U16";
   attribute LOC of WalkSound : signal is "T12";
   attribute LOC of Ym : signal is "R11";
   attribute LOC of Ys : signal is "V15";
end TrafficLight;

architecture BEHAVIORAL of TrafficLight is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                         : std_logic_vector (1 downto 0);
   signal XLXN_2                         : std_logic_vector (3 downto 0);
   signal XLXN_3                         : std_logic;
   signal XLXN_25                        : std_logic;
   signal XLXN_35                        : std_logic;
   signal XLXN_36                        : std_logic;
   signal XLXN_37                        : std_logic;
   signal XLXN_70                        : std_logic;
   signal XLXN_75                        : std_logic;
   signal XLXN_77                        : std_logic;
   signal XLXN_78                        : std_logic;
   signal WalkSound_DUMMY                : std_logic;
   signal WalkLight_DUMMY                : std_logic;
   signal XLXI_7_Switch2_openSignal      : std_logic;
   signal XLXI_9_INPUT_FOURTH_openSignal : std_logic;
   signal XLXI_9_INPUT_THIRD_openSignal  : std_logic;
   signal XLXI_11_CLR_openSignal         : std_logic;
   component FSM
      port ( timeout   : in    std_logic; 
             reset     : in    std_logic; 
             sensor    : in    std_logic; 
             walk      : in    std_logic; 
             WalkReset : out   std_logic; 
             Rm        : out   std_logic; 
             Ym        : out   std_logic; 
             Gm        : out   std_logic; 
             Rs        : out   std_logic; 
             Ys        : out   std_logic; 
             Gs        : out   std_logic; 
             I         : out   std_logic_vector (1 downto 0));
   end component;
   
   component Divider_MUSER_TrafficLight
      port ( C      : in    std_logic; 
             F1Hz   : out   std_logic; 
             F2Hz   : out   std_logic; 
             F500Hz : out   std_logic; 
             F50MHz : out   std_logic);
   end component;
   
   component ParameterToValue_MUSER_TrafficLight
      port ( I : in    std_logic_vector (1 downto 0); 
             O : out   std_logic_vector (3 downto 0));
   end component;
   
   component Timer_MUSER_TrafficLight
      port ( CLK     : in    std_logic; 
             I       : in    std_logic_vector (3 downto 0); 
             Timeout : out   std_logic);
   end component;
   
   component SwitchDebounce_MUSER_TrafficLight
      port ( C       : in    std_logic; 
             Switch1 : in    std_logic; 
             Switch2 : in    std_logic; 
             Db1     : out   std_logic; 
             Db2     : out   std_logic);
   end component;
   
   component DebounceSync_MUSER_TrafficLight
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
   
   component WalkRegister_MUSER_TrafficLight
      port ( WalkReset  : in    std_logic; 
             WalkButton : in    std_logic; 
             WalkSignal : out   std_logic);
   end component;
   
   component FTC_HXILINX_TrafficLight
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_11 : label is "XLXI_11_5";
begin
   WalkLight <= WalkLight_DUMMY;
   WalkSound <= WalkSound_DUMMY;
   XLXI_1 : FSM
      port map (reset=>XLXN_25,
                sensor=>XLXN_75,
                timeout=>XLXN_77,
                walk=>WalkLight_DUMMY,
                Gm=>Gm,
                Gs=>Gs,
                I(1 downto 0)=>XLXN_1(1 downto 0),
                Rm=>Rm,
                Rs=>Rs,
                WalkReset=>WalkSound_DUMMY,
                Ym=>Ym,
                Ys=>Ys);
   
   XLXI_2 : Divider_MUSER_TrafficLight
      port map (C=>CLK,
                F1Hz=>XLXN_3,
                F2Hz=>XLXN_36,
                F50MHz=>XLXN_35,
                F500Hz=>XLXN_37);
   
   XLXI_3 : ParameterToValue_MUSER_TrafficLight
      port map (I(1 downto 0)=>XLXN_1(1 downto 0),
                O(3 downto 0)=>XLXN_2(3 downto 0));
   
   XLXI_4 : Timer_MUSER_TrafficLight
      port map (CLK=>XLXN_3,
                I(3 downto 0)=>XLXN_2(3 downto 0),
                Timeout=>XLXN_77);
   
   XLXI_7 : SwitchDebounce_MUSER_TrafficLight
      port map (C=>XLXN_37,
                Switch1=>Sensor,
                Switch2=>XLXI_7_Switch2_openSignal,
                Db1=>XLXN_75,
                Db2=>open);
   
   XLXI_9 : DebounceSync_MUSER_TrafficLight
      port map (CLK=>XLXN_35,
                CLK_2=>XLXN_36,
                INPUT_FIRST=>Reset,
                INPUT_FOURTH=>XLXI_9_INPUT_FOURTH_openSignal,
                INPUT_SECOND=>Walk,
                INPUT_THIRD=>XLXI_9_INPUT_THIRD_openSignal,
                OUTPUT_FIRST=>XLXN_25,
                OUTPUT_FOURTH=>open,
                OUTPUT_SECOND=>XLXN_70,
                OUTPUT_THIRD=>open);
   
   XLXI_10 : WalkRegister_MUSER_TrafficLight
      port map (WalkButton=>XLXN_70,
                WalkReset=>WalkSound_DUMMY,
                WalkSignal=>WalkLight_DUMMY);
   
   XLXI_11 : FTC_HXILINX_TrafficLight
      port map (C=>XLXN_3,
                CLR=>XLXI_11_CLR_openSignal,
                T=>XLXN_78,
                Q=>Clock);
   
   XLXI_12 : VCC
      port map (P=>XLXN_78);
   
end BEHAVIORAL;


