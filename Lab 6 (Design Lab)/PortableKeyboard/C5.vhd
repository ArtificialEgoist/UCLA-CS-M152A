----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:12 05/29/2014 
-- Design Name: 
-- Module Name:    HighC - Behavioral 
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

entity C5 is
	Port (
		CLK : in STD_LOGIC;
		reset : in STD_LOGIC;
		NCLK : out STD_LOGIC
	);
end C5;

architecture Behavioral of C5 is
	signal temp : STD_LOGIC;
	signal counter : integer range 0 to 95555 := 0;
begin

	C5 : process (reset, CLK) begin
	
		if (reset = '1') then
			temp <= '0';
			counter <= 0;
		elsif rising_edge(CLK) then 
			if (counter = 95555) then
				temp <= NOT(temp);
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;

	NCLK <= temp;

end Behavioral;

