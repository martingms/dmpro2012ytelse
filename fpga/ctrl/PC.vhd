----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 21:21:29 11/11/2012
-- Design Name			: FPGA CONTROL
-- Module Name			: PROGRAM COUNTER - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: PROGRAM COUNTER FOR CONTROL CORE
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01					: First created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity PROGRAM_COUNTER is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		jump_addr					: in  STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);
		jump							: in  STD_LOGIC;
		branch						: in  STD_LOGIC;
		alu_res						: in  STD_LOGIC;
		
		instr_addr					: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0)
	);
end PROGRAM_COUNTER;

architecture Behavioral of PROGRAM_COUNTER is
	signal pc						: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0) := (others => '0');
	signal res						: STD_LOGIC := '0';
begin

	process(clk, reset, pc) begin			
		if (reset='1') then
			pc							<= (others => '0');
			res						<= '0';
		elsif (rising_edge(clk)) then
			if (branch='1' and res='1') then
				pc						<= jump_addr;
			elsif (jump='1') then
				pc						<= jump_addr;
			else
				pc						<= UNSIGNED(pc) + 1 ;
			end if;
			res						<= alu_res;
		end if;
		
		instr_addr					<= pc;
	end process;

end Behavioral;