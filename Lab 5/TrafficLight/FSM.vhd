----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:14 05/20/2014 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is

	port (
		
		--inputs
		timeout : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		sensor : IN STD_LOGIC;
		walk : IN STD_LOGIC;
		
		--outputs
		I : OUT STD_LOGIC_VECTOR(1 downto 0);
		WalkReset : OUT STD_LOGIC;
		Rm : OUT STD_LOGIC;
		Ym : OUT STD_LOGIC;
		Gm : OUT STD_LOGIC;
		Rs : OUT STD_LOGIC;
		Ys : OUT STD_LOGIC;
		Gs : OUT STD_LOGIC);
		
end entity;

architecture Behavioral of FSM is

signal state: STD_LOGIC_VECTOR(2 downto 0) := "000";
begin

	FSM : process (timeout, reset)
	begin
	
		--determine next state and set LED values
		
		--reset state
		if (reset = '1') then		
			state <= "000";
			Rm <= '0';
			Ym <= '0';
			Gm <= '1';
			Rs <= '1';
			Ys <= '0';
			Gs <= '0';
			I <= "00";
			WalkReset <= '0';
	
		--transition rules
		elsif (timeout'event and timeout = '1') then
		
			if (state = "000" and sensor = '1') then
				state <= "101";
				Rm <= '0';
				Ym <= '0';
				Gm <= '1';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "01";
				WalkReset <= '0';
			elsif (state = "000" and sensor = '0') then
				state <= "001";
				Rm <= '0';
				Ym <= '0';
				Gm <= '1';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "00";
				WalkReset <= '0';
			elsif (state = "001") then
				state <= "010";
				Rm <= '0';
				Ym <= '1';
				Gm <= '0';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "10";
				WalkReset <= '0';
			elsif (state = "010" and walk = '1') then
				state <= "110";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "01";
				WalkReset <= '1';
			elsif (state = "010" and walk = '0') then
				state <= "011";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '0';
				Ys <= '0';
				Gs <= '1';
				I <= "00";
				WalkReset <= '0';
			elsif (state = "011" and sensor = '1') then
				state <= "111";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '0';
				Ys <= '0';
				Gs <= '1';
				I <= "01";
				WalkReset <= '0';
			elsif (state = "011" and sensor = '0') then
				state <= "100";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '0';
				Ys <= '1';
				Gs <= '0';
				I <= "10";
				WalkReset <= '0';
			elsif (state = "100") then
				state <= "000";
				Rm <= '0';
				Ym <= '0';
				Gm <= '1';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "00";
				WalkReset <= '0';
			elsif (state = "101") then
				state <= "010";
				Rm <= '0';
				Ym <= '1';
				Gm <= '0';
				Rs <= '1';
				Ys <= '0';
				Gs <= '0';
				I <= "10";
				WalkReset <= '0';
			elsif (state = "110") then
				state <= "011";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '0';
				Ys <= '0';
				Gs <= '1';
				I <= "00";
				WalkReset <= '0';
			elsif (state = "111") then
				state <= "100";
				Rm <= '1';
				Ym <= '0';
				Gm <= '0';
				Rs <= '0';
				Ys <= '1';
				Gs <= '0';
				I <= "10";
				WalkReset <= '0';
			end if;

		end if;

	end process;

end Behavioral;

