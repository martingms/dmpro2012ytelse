----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 21:21:29 11/11/2012
-- Design Name			: FPGA CONTROL
-- Module Name			: INSTRUCTION DECODER - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: ISNTRUCTION DECODER FOR CONTROL CORE
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

entity CTRL_INST_DECODER is
	Port (
		reset 						: in  STD_LOGIC;		
		enable						: in  STD_LOGIC;
		array_state					: in  STD_LOGIC;
		instr_op						: in  STD_LOGIC_VECTOR (CTRL_INSTR_OP-1 downto 0);
		instr_dma					: in  STD_LOGIC_VECTOR (CTRL_DMA_CMD_BUS-1 downto 0);
		
		reg_write					: out STD_LOGIC;
		mem_to_reg					: out STD_LOGIC;
		alu_const					: out STD_LOGIC;
		jump							: out STD_LOGIC;
		branch						: out STD_LOGIC;
		dma_cmd						: out STD_LOGIC_VECTOR (CTRL_DMA_CMD_BUS-1 downto 0)
	);
end CTRL_INST_DECODER;

architecture Behavioral of CTRL_INST_DECODER is

begin

	process(op_code, enable, reset) begin	
		
		if (enable='0' or reset='1') then
			reg_write 				<= '0';
			alu_const 				<= '0';
			mem_to_reg 				<= '0';
			jump 						<= '0';
			branch 					<= '0';
			dma_cmd 					<= (others => '0');
		else
			-- REG WRITE
			if instr_op=CTRL_OP_R or instr_op=CTRL_OP_I or instr_op=CTRL_OP_LW then
				reg_write 		<= '1';
			else
				reg_write 		<= '0';
			end if;
			
			-- ALU CONST
			if instr_op=CTRL_OP_I then
				alu_const 		<= '1';
			else
				alu_const 		<= '0';
			end if;
			
			-- MEM TO REG
			if instr_op=CTRL_OP_LW then
				mem_to_reg 		<= '1';
			else
				mem_to_reg 		<= '0';
			end if;
			
			-- JUMP
			if instr_op=CTRL_OP_JUMP then
				jump 				<= '1';
			else
				jump 				<= '0';
			end if;
			
			-- BRANCH
			if instr_op=CTRL_OP_BEQ then
				branch 			<= '1';
			else
				branch 			<= '0';
			end if;
			
			-- DMA COMMAND
			if instr_op=CTRL_OP_DMA then
				dma_cmd			<= instr_dma;
			else
				dma_cmd			<= (others => '0');
			end if;
			
		end if;
	end process;

end Behavioral;