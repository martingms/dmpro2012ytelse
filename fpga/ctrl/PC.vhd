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

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity PC is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		jump_addr					: in  STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);
		jump							: in  STD_LOGIC;
		branch						: in  STD_LOGIC;
		alu_res						: in  STD_LOGIC;
		
		instr_addr					: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0)
	);
end PC;

architecture Behavioral of PC is
	signal pc						: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0) := (others => '0');
begin

	process(clk, reset) begin			
		if (reset='1') then
			pc							<= (others => '0');
		elsif (rising_edge(clk)) then
			if (branch='1' and alu_res='1') then
				pc						<= jump_addr;
			elsif (jump='1') then
				pc						<= jump_addr;
			else
				pc						<= pc + 1;
			end if;
		end if;
		
		instr_addr					<= pc;
	end process;

end Behavioral;