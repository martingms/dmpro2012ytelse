----------------------------------------------------------------------------------
-- Company: TDT4295, NTNU
-- Engineer: HANS KRISTIAN FLAATTEN
-- 
-- Create Date:		13:09:36 10/12/2012 
-- Design Name:		FPGA NODE
-- Module Name:		INSTRUCTION_DECODER - Behavioral 
-- Project Name:		FPGA YTELSE
-- Target Devices: 	XILINX SPARTAN 3
-- Tool versions:		ISE V11
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity INSTRUCTION_DECODER is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		op_code 						: in  STD_LOGIC_VECTOR (NODE_OP_CODE-1 downto 0);
		
		alu_ctrl 					: out  STD_LOGIC_VECTOR (1 downto 0);
		alu_src 						: out  STD_LOGIC;
		reg_src 						: out  STD_LOGIC;
		com_out 						: out  STD_LOGIC;
		reg_write					: out  STD_LOGIC;		
		s_swap 						: out  STD_LOGIC;
		
		-- Used for controlling the 4 way data exchange
		reg_addr_src 				: out  STD_LOGIC := '0';
		adr0 							: out  STD_LOGIC_VECTOR (NODE_REG_ADR-1 downto 0);
		adr1 							: out  STD_LOGIC_VECTOR (NODE_REG_ADR-1 downto 0);
		adr2 							: out  STD_LOGIC_VECTOR (NODE_REG_ADR-1 downto 0);
		adr3 							: out  STD_LOGIC_VECTOR (NODE_REG_ADR-1 downto 0)
	);
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

begin


end Behavioral;

