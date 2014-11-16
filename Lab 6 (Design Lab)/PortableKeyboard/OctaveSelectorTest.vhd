-- Vhdl test bench created from schematic C:\NathanCT\Homework\Junior Year Q3\EE M116L\Lab 6 (Design Lab)\Tests\PortableKeyboard\OctaveSelector.sch - Sat May 31 13:33:19 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY OctaveSelector_OctaveSelector_sch_tb IS
END OctaveSelector_OctaveSelector_sch_tb;
ARCHITECTURE behavioral OF OctaveSelector_OctaveSelector_sch_tb IS 

   COMPONENT OctaveSelector
   PORT( Selector0	:	OUT	STD_LOGIC; 
          Selector1	:	OUT	STD_LOGIC; 
          ButtonLow	:	IN	STD_LOGIC; 
          ButtonHigh	:	IN	STD_LOGIC; 
          ButtonMid	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL Selector0	:	STD_LOGIC;
   SIGNAL Selector1	:	STD_LOGIC;
   SIGNAL ButtonLow	:	STD_LOGIC;
   SIGNAL ButtonHigh	:	STD_LOGIC;
   SIGNAL ButtonMid	:	STD_LOGIC;

BEGIN

   UUT: OctaveSelector PORT MAP(
		Selector0 => Selector0, 
		Selector1 => Selector1, 
		ButtonLow => ButtonLow, 
		ButtonHigh => ButtonHigh, 
		ButtonMid => ButtonMid
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		ButtonLow <= '0';
		ButtonMid <= '1';
		ButtonHigh <= '0';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
