-- Package File Template
--
-- Purpose: This package defines supplemental types, subtypes, 
-- constants, and functions 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package FPGA_CONSTANT_PKG is

	-- NODE INSTRUCTION SET
	constant NODE_INSTR_OP			: integer	:= 3;
	constant NODE_INSTR_OP_R		: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "000";
	constant NODE_INSTR_OP_I		: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "001";
	constant NODE_INSTR_OP_S		: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "010";
	
	constant NODE_INSTR_OP_M_SEND	: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "100";
	constant NODE_INSTR_OP_M_STOR	: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "101";
	constant NODE_INSTR_OP_M_FWRD	: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "110";
	
	-- NODE ALU FUNCTIONS
	constant NODE_INSTR_FN			: integer	:= 3;
	constant NODE_INSTR_FN_ADD		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "000";
	constant NODE_INSTR_FN_SUB		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "001";
	constant NODE_INSTR_FN_SLT		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "010";
	constant NODE_INSTR_FN_AND		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "011";
	constant NODE_INSTR_FN_OR		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "100";
	constant NODE_INSTR_FN_EQ		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "101";
	constant NODE_INSTR_FN_SLL		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "110";
	constant NODE_INSTR_FN_SRL		: STD_LOGIC_VECTOR(NODE_INSTR_FN-1 downto 0) := "111";
	
	 -- NODE BUS CONSTANTS
	constant NODE_STATE_BUS			: integer	:= 2;			-- state bus from SIMD node
	constant NODE_RDATA_BUS			: integer	:= 8;			-- register data size
	constant NODE_RADDR_BUS			: integer	:= 4;			-- register address
	constant NODE_IDATA_BUS			: integer	:= 24;		-- instruction address
	constant NODE_DDATA_BUS			: integer	:= 8;			-- data bus (north, south, east, west)
	constant NODE_SDATA_BUS			: integer	:= 8;			-- s data bus (left, right)
	
	-- MEMORY CONSTANTS
	constant RAM_DATA_WORD_WIDTH			: integer	:= 8;
	constant RAM_DATA_ADDRESS_WIDTH		: integer	:= 21;
	constant RAM_PROGRAM_WORD_WIDTH		: integer	:= 24;
	constant RAM_PROGRAM_ADDRESS_WIDTH	: integer	:= 16;
	constant RAM_VGA_WORD_WIDTH			: integer	:= 8;
	constant RAM_VGA_ADDRESS_WIDTH		: integer	:= 19;

end FPGA_CONSTANT_PKG;
