----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:57 05/29/2014 
-- Design Name: 
-- Module Name:    KeyboardEncoder - Behavioral 
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

entity KeyEncoder is
	Port (
		Switch0 : in STD_LOGIC;
		Switch1 : in STD_LOGIC;
		Switch2 : in STD_LOGIC;
		Switch3 : in STD_LOGIC;
		Switch4 : in STD_LOGIC;
		Switch5 : in STD_LOGIC;
		Switch6 : in STD_LOGIC;
		Switch7 : in STD_LOGIC;
		
		Encoding0 : out STD_LOGIC;
		Encoding1 : out STD_LOGIC;
		Encoding2 : out STD_LOGIC;
		Encoding3 : out STD_LOGIC
	);
end KeyEncoder;

architecture Behavioral of KeyEncoder is

begin

	KeyEncoder : process (Switch0, Switch1, Switch2, Switch3, Switch4, Switch5, Switch6, Switch7) begin
	
		if(Switch7 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '1';
			Encoding1 <= '1';
			Encoding0 <= '1';
			
		elsif(Switch6 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '1';
			Encoding1 <= '1';
			Encoding0 <= '0';
			
		elsif(Switch5 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '1';
			Encoding1 <= '0';
			Encoding0 <= '1';
			
		elsif(Switch4 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '1';
			Encoding1 <= '0';
			Encoding0 <= '0';
			
		elsif(Switch3 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '0';
			Encoding1 <= '1';
			Encoding0 <= '1';
			
		elsif(Switch2 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '0';
			Encoding1 <= '1';
			Encoding0 <= '0';
			
		elsif(Switch1 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '0';
			Encoding1 <= '0';
			Encoding0 <= '1';
			
		elsif(Switch0 = '1') then
			Encoding3 <= '0';
			Encoding2 <= '0';
			Encoding1 <= '0';
			Encoding0 <= '0';
			
		else
			Encoding3 <= '1';
			Encoding2 <= '0';
			Encoding1 <= '0';
			Encoding0 <= '0';
			
		end if;
		
	end process;

end Behavioral;



