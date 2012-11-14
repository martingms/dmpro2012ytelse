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
	signal waiting					: STD_LOGIC := '0';
	signal waiting_addr			: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0) := (others => '0');
	signal pc						: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0) := (others => '0');
	signal res						: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal sel						: INTEGER := 0;
begin

	process(clk, reset, pc) begin			
		if (reset='1') then
			pc							<= (others => '0');
			res						<= "00";
			sel						<= 0;
		elsif (rising_edge(clk)) then			
			-- Branch if branch is pending and ALU res
			if (waiting='1' and alu_res='1') then
					pc					<= waiting_addr;	
					waiting			<= '0';
			
			-- Save branch addr
			elsif (branch='1') then
				waiting 				<= '1';
				waiting_addr		<= jump_addr;
				pc						<= unsigned(pc) + 1;
			
			-- Jump
			elsif (jump='1') then
				pc						<= jump_addr;
				
			-- Normal PC incr.
			else
				waiting				<='0';
				pc						<= unsigned(pc) + 1;
			end if;
		end if;
		
		instr_addr					<= pc;
	end process;

end Behavioral;