----------------------------------------------------------------------------------
-- Company						: TDT4295, NTNU
-- Engineer						: HANS KRISTIAN FLAATTEN
-- 
-- Create Date					: 13:09:36 10/12/2012 
-- Design Name					: FPGA NODE
-- Module Name					: ALU CONTROLL - Behavioral 
-- Project Name				: FPGA YTELSE
-- Target Devices				: XILINX SPARTAN 3
-- Tool versions				: ISE V11
-- Description: 
--
-- Dependencies				: FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01: Initial version
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity ALU_CONTROLL is
	Port (
		alu_ctrl 					: in  STD_LOGIC_VECTOR (1 downto 0);
		alu_funct 					: in  STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);
		
		alu_op 						: out STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0)
	);
end ALU_CONTROLL;

architecture Behavioral of ALU_CONTROLL is

begin

	ALU_CONTROLL: process(alu_ctrl, alu_funct) begin	
		case alu_ctrl is
			when NODE_ALU_CTRL_BEQ => alu_op <= NODE_INSTR_FN_SUB;
			when others => alu_op <= alu_funct;
		end case;
	end process;

end Behavioral;