----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:04 09/30/2012 
-- Design Name: 
-- Module Name:    alu_control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.MIPS_CONSTANT_PKG.ALL;

entity ALU_CONTROL is
	Port (
		ALUOp 				: in  STD_LOGIC_VECTOR (1 downto 0);
		ALUFunct 			: in  STD_LOGIC_VECTOR (5 downto 0);
		ALUCtrl		 		: out ALU_INPUT := (OP0 => '0', OP1 => '0', OP2 => '0', OP3 => '0')
		--ALUCtrl				: out ALU_INPUT
	);
end alu_control;

architecture Behavioral of ALU_CONTROL is
	
begin

	ALU_CONTROL: process(ALUOp, ALUFunct)
		begin
		
		case ALUOp is
			when ALU_OP_LS 			=> ALUCtrl <= (OP3 => '0', OP2 => '0', OP1 => '1', OP0 => '0'); -- add
			when ALU_OP_BEQ 			=> ALUCtrl <= (OP3 => '0', OP2 => '1', OP1 => '1', OP0 => '0'); -- subtract
			when others =>
				case ALUFunct is
					when ALU_FN_ADD 	=> ALUCtrl <= (OP3 => '0', OP2 => '0', OP1 => '1', OP0 => '0'); -- add
					when ALU_FN_SUB 	=> ALUCtrl <= (OP3 => '0', OP2 => '1', OP1 => '1', OP0 => '0'); -- subtract
					when ALU_FN_AND 	=> ALUCtrl <= (OP3 => '0', OP2 => '0', OP1 => '0', OP0 => '0'); -- and
					when ALU_FN_OR 	=> ALUCtrl <= (OP3 => '0', OP2 => '0', OP1 => '0', OP0 => '1'); -- or
					when ALU_FN_SLT 	=> ALUCtrl <= (OP3 => '0', OP2 => '1', OP1 => '1', OP0 => '1'); -- slt			
					when others 		=> 
				end case;
		end case;
	
	end process  alu_control;

end Behavioral;

