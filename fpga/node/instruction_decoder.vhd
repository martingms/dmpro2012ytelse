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
-- Revisions
-- 0.01:					Initial version of the Instruction Decoder
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity INSTRUCTION_DECODER is
	Port (
		op_code 						: in  STD_LOGIC_VECTOR (NODE_INSTR_OP-1 downto 0);
		
		-- Control signals
		alu_ctrl 					: out  STD_LOGIC_VECTOR (1 downto 0)	:= "00";		-- controls alu operation
		set_state					: out  STD_LOGIC								:= '0';		-- 0 = immidiate 	| 1 = reg data 1
		alu_const					: out  STD_LOGIC								:= '0';		-- 0 = immidiate 	| 1 = reg data 1
		reg_src 						: out  STD_LOGIC								:= '0';		-- 0 = alu res 	| 1 = n/s/e/w
		reg_out 						: out  STD_LOGIC								:= '0';		-- 0 = alu res		| 1 = n/s/e/w (algo)
		reg_write					: out  STD_LOGIC_VECTOR (1 downto 0)	:= "00";		-- 00 = none | 01 = write 0 | 10 = write all
		s_swap 						: out  STD_LOGIC								:= '0'		-- 0 = no swap		| 1 = swap
	);
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

begin

	PROCESSOR_CONTROL: process(op_code) begin	
		case op_code is
			-- R-format instructions
			when NODE_INSTR_OP_R =>
				set_state			<= '0';			-- DON'T SET NEW STATE
				alu_ctrl				<= "00";			-- USE INSTRUCTION FUNCT FIELD
				alu_const			<= '0';			-- DON'T USE CONSTANT FOR ALU OP2
				reg_src				<= '0';			-- SAVE ALU RESULT
				reg_out				<= '0';			-- DON'T FORWARD ALU RESULT
				reg_write			<= "01";			-- WRITE REGISTER 0
				s_swap				<= '0';			-- DONT'T SWAP
			
			when NODE_INSTR_OP_S =>
				set_state			<= '0';			-- DON'T SET NEW STATE
				alu_ctrl				<= "10";			-- DO ADDITION (val + 0)
				alu_const			<= '0';			-- DON'T USE CONSTANT FOR ALU OP2
				reg_src				<= '0';
			
			when others =>
				-- do nothing
		end case;
	end process;

end Behavioral;