----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:37 04/09/2014 
-- Design Name: 
-- Module Name:    segment - Behavioral 
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

entity segment is
	port
	(
		sw4: in std_logic;
		sw3: in std_logic;
		sw2: in std_logic;
		sw1: in std_logic;
		sw0: in std_logic;
		
		AN3: out std_logic;
		AN2: out std_logic;
		AN1: out std_logic;
		AN0: out std_logic;
		
		a: out std_logic;
		b: out std_logic;
		c: out std_logic;
		d: out std_logic;
		e: out std_logic;
		f: out std_logic;
		g: out std_logic
	);
end segment;

architecture Behavioral of segment is
	
begin

	AN3 <= NOT sw4;
	AN2 <= NOT sw4;
	AN1 <= NOT sw4;
	AN0 <= sw4;

	a <= NOT ((NOT sw2 AND NOT sw0) OR sw3 OR sw1 OR (sw2 AND sw0));
	b <= NOT (sw3 OR NOT sw2 OR (NOT sw1 AND NOT sw0) OR (sw1 AND sw0));
	c <= NOT (sw3 OR sw2 OR NOT sw1 OR sw0);
	d <= NOT (sw3 OR (NOT sw2 AND NOT sw0) OR (sw2 AND NOT sw1 AND sw0) OR (sw1 AND NOT sw0) OR (NOT sw2 AND sw1));
	e <= NOT ((sw1 AND NOT sw0) OR (NOT sw2 AND NOT sw1 AND NOT sw0));
	f <= NOT (sw3 OR (NOT sw2 AND NOT sw1 AND NOT sw0) OR (sw2 AND NOT sw1) OR (sw2 AND NOT sw0));
	g <= NOT (sw3 OR (sw2 AND NOT sw1) OR (sw1 AND NOT sw0) OR (NOT sw2 AND sw1));
	
end Behavioral;

