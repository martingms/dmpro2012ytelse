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
		addr0							: in  STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		state							: in  STD_LOGIC;
		
		-- Control signals out
		alu_ctrl 					: out STD_LOGIC_VECTOR (1 downto 0);		-- controls alu operation
		set_state					: out STD_LOGIC;									-- 0 = immidiate 	| 1 = reg data 1
		alu_const					: out STD_LOGIC;									-- 0 = immidiate 	| 1 = reg data 1
		reg_src 						: out STD_LOGIC;									-- 0 = alu res 	| 1 = n/s/e/w
		reg_out 						: out STD_LOGIC;									-- 0 = alu res		| 1 = n/s/e/w (algo)
		reg_write					: out STD_LOGIC_VECTOR (1 downto 0);		-- 00 = none | 01 = write 0 | 10 = write all
		s_swap 						: out STD_LOGIC									-- 0 = no swap		| 1 = swap
	);
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

begin

	PROCESSOR_CONTROL: process(op_code) begin	
		case op_code is
			-- R-format instructions
			when NODE_INSTR_OP_R =>
				set_state			<= '0';			-- DON'T SET NEW STATE
				alu_ctrl				<= NODE_ALU_CTRL_FN;
				alu_const			<= '0';			-- DON'T USE CONSTANT FOR ALU OP2
				reg_src				<= '0';			-- SAVE ALU RESULT
				reg_out				<= '0';			-- DON'T FORWARD ALU RESULT
				reg_write			<= "01";			-- WRITE REGISTER 0
				s_swap				<= '0';			-- DONT'T SWAP
			
			when NODE_INSTR_OP_S =>
				set_state			<= '0';			-- DON'T SET NEW STATE
				alu_ctrl				<= NODE_ALU_CTRL_SUB;
				alu_const			<= '0';			-- DON'T USE CONSTANT FOR ALU OP2
				reg_src				<= '0';
				reg_out				<= '0';			-- DON'T FORWARD ALU RESULT
				reg_write			<= "00";			-- WRITE REGISTER 0
				s_swap				<= '0';			-- DONT'T SWAP
			
			when others =>
				set_state			<= '0';			-- DON'T SET NEW STATE
				alu_ctrl				<= NODE_ALU_CTRL_SUB;
				alu_const			<= '0';			-- DON'T USE CONSTANT FOR ALU OP2
				reg_src				<= '0';
				reg_out				<= '0';			-- DON'T FORWARD ALU RESULT
				reg_write			<= "00";			-- WRITE REGISTER 0
				s_swap				<= '0';			-- DONT'T SWAP	
			end case;
	end process;

end Behavioral;