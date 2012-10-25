----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 23:46:46 10/25/2012
-- Design Name			: FPGA NODE
-- Module Name			: STATE - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: 
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01					: Initial version of the STATE module
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity STATE_REG is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		set_state					: in  STD_LOGIC;
		new_state					: in  STD_LOGIC;
		state_out 					: out STD_LOGIC := '0'
	);
end STATE_REG;

architecture Behavioral of STATE_REG is

begin
	process (clk, reset)
	begin
		if (reset = '1') then
			state_out				<= '0';		
		elsif rising_edge(clk) then
			if (set_state = '1') then
				state_out			<= new_state;
			end if;
		end if;
	end process;
end Behavioral;

