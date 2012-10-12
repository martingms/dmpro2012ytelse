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
		op_code 						: in  STD_LOGIC_VECTOR (NODE_INST_OP-1 downto 0);
		
		-- Node control signals
		alu_ctrl 					: out  STD_LOGIC_VECTOR (1 downto 0)						:= (others => '0'); 	-- controls alu operation
		alu_src 						: out  STD_LOGIC													:= '0';					-- 0 = immidiate 	| 1 = reg data 1
		reg_src 						: out  STD_LOGIC													:= '0';					-- 0 = alu res 	| 1 = n/s/e/w
		com_out 						: out  STD_LOGIC													:= '0';					-- 0 = alu res		| 1 = n/s/e/w (algo)
		reg_write					: out  STD_LOGIC													:= '0';					-- 0 = no write	| 1 = write
		s_swap 						: out  STD_LOGIC													:= '0';					-- 0 = no swap		| 1 = swap
		
		-- Used for controlling the 4 way data exchange
		reg_addr_src 				: out  STD_LOGIC													:= '0';
		adr0 							: out  STD_LOGIC_VECTOR (NODE_INST_REG-1 downto 0)		:= (others => '0');
		adr1 							: out  STD_LOGIC_VECTOR (NODE_INST_REG-1 downto 0)		:= (others => '0');
		adr2 							: out  STD_LOGIC_VECTOR (NODE_INST_REG-1 downto 0)		:= (others => '0');
		adr3 							: out  STD_LOGIC_VECTOR (NODE_INST_REG-1 downto 0)		:= (others => '0')
	);
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

begin

	PROCESSOR_CONTROL: process(op_code) begin	
		case op_code is
			-- R-format instructions
			when NODE_INSTR_OP_R =>
				alu_ctrl				<= '0';
				alu_src				<= '0';
				reg_src				<= '0';
				com_out				<= '0';
				reg_write			<= '0';
				s_swap				<= '0';
			when others =>
				-- do nothing
		end case;
	end process;

end Behavioral;

