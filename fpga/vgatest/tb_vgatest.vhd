--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:	16:03:03 10/24/2012
-- Design Name:
-- Module Name:	C:/Users/martigam/Desktop/vgatest/tb_vgatest.vhd
-- Project Name:	vgatest
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: vgatest
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_vgatest IS
END tb_vgatest;

ARCHITECTURE behavior OF tb_vgatest IS

	-- Component Declaration for the Unit Under Test (UUT)

	COMPONENT vgatest
	PORT(
		pixelClock : IN  std_logic;
		Greytone : OUT  std_logic_vector(7 downto 0);
		hSync : OUT  std_logic;
		vSync : OUT  std_logic;
		blank : OUT  std_logic
		);
	END COMPONENT;


	--Inputs
	signal pixelClock : std_logic := '0';

	--Outputs
	signal Greytone : std_logic_vector(7 downto 0);
	signal hSync : std_logic;
	signal vSync : std_logic;
	signal blank : std_logic;

	-- Clock period definitions
	constant pixelClock_period : time := 40 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: vgatest PORT MAP (
			pixelClock => pixelClock,
			Greytone => Greytone,
			hSync => hSync,
			vSync => vSync,
			blank => blank
		);

	-- Clock process definitions
	pixelClock_process :process
	begin
		pixelClock <= '0';
		wait for pixelClock_period/2;
		pixelClock <= '1';
		wait for pixelClock_period/2;
	end process;


	-- Stimulus process
	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;

		wait for pixelClock_period*10;

		-- insert stimulus here

		wait;
	end process;

END;
