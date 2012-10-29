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
		disable						: in  STD_LOGIC;
		mask							: in  STD_LOGIC;
		op_code 						: in  STD_LOGIC_VECTOR (NODE_INSTR_OP-1 downto 0);
		r0 							: in  STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		state							: in  STD_LOGIC;
		
		-- Control signals out
		alu_const					: out STD_LOGIC;
		reg_write					: out STD_LOGIC_VECTOR (1 downto 0);
		set_state					: out STD_LOGIC;
		com_in						: out STD_LOGIC;
		s_swap 						: out STD_LOGIC;
		com							: out STD_LOGIC_VECTOR (1 downto 0)
	);
end INSTRUCTION_DECODER;

architecture Behavioral of INSTRUCTION_DECODER is

begin

	process(op_code, disable, mask) begin	
		
		if (disable='1' OR (mask='1' AND state='0')) then
			-- Control signals out
			alu_const				<= '0';
			reg_write				<= (others => '0');
			set_state				<= '0';
			com_in					<= '0';
			s_swap 					<= '0';
			com						<= (others => '0');
		else
			-- alu_const
			if (op_code = NODE_INSTR_OP_I) then
				alu_const			<= '1';
			else 
				alu_const			<= '0';
			end if;
			
			-- reg_write
			if (op_code = NODE_INSTR_OP_M_SEND) then
				reg_write			<= "00";
			elsif (op_code = NODE_INSTR_OP_M_STOR OR op_code = NODE_INSTR_OP_M_FWRD) then
				reg_write			<= "10";
			else
				reg_write			<= "01";
			end if;
			
			-- set_state
			if (r0 = "1111" AND op_code /= NODE_INSTR_OP_M_SEND) then
				set_state			<= '1';
			else
				set_state			<= '0';
			end if;
			
			-- com_in
			-- sets com in for all M-format instructions
			com_in					<= op_code(NODE_INSTR_OP-1);
			
			-- s_swap
			if (op_code = NODE_INSTR_OP_S) then
				s_swap				<= '1';
			else
				s_swap				<= '0';
			end if;
			
			-- com
			if (op_code = NODE_INSTR_OP_M_SEND) then
				com					<= "01";
			elsif (op_code = NODE_INSTR_OP_M_FWRD) then
				com					<= "10";
			else 
				com					<= "00";
			end if;
			
		end if;
	end process;

end Behavioral;