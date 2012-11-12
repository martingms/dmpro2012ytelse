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
	constant NODE_IDATA_BUS			: integer	:= 24;		-- instruction data
	constant NODE_DDATA_BUS			: integer	:= 8;			-- data bus (north, south, east, west)
	constant NODE_SDATA_BUS			: integer	:= 8;			-- s data bus (left, right)
	
	-- CONTROL BUS CONSTANTS
	constant CTRL_WORD_WIDTH		: integer	:= 21;		-- control core word width	
	constant CTRL_IDATA_BUS			: integer	:= 24;		-- instruction data
	constant CTRL_IADDR_BUS			: integer	:= 16;		-- instruction address
	constant CTRL_DDATA_BUS			: integer	:= 8;			-- image data
	constant CTRL_DADDR_BUS			: integer	:= 21;		-- image data address
	constant CTRL_VDATA_BUS			: integer	:= 8;			-- vga data
	constant CTRL_VADDR_BUS			: integer	:= 19;		-- vgg data address
	constant CTRL_DMA_CMD_BUS		: integer	:= 4;			-- dma command
	constant CTRL_DMA_DAT_BUS		: integer	:= 21;		-- dma command data
	
	-- CONTROL 
	constant CTRL_INSTR_OP			: integer	:= 4;
	constant CTRL_OP_R				: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "0000"; -- R-instr
	constant CTRL_OP_I				: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "0001"; -- I-instr
	constant CTRL_OP_LW				: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "0010"; -- Load from DRAM
	constant CTRL_OP_JUMP			: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "0100"; -- UNCONDITIONAL JUMP
	constant CTRL_OP_BEQ				: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "0101"; -- BRANCH
	constant CTRL_OP_DMA				: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "1000"; -- DMA COMMAND
	-- constant CTRL_OP_VGA			: STD_LOGIC_VECTOR(NODE_INSTR_OP-1 downto 0) := "1001"; -- FEED VGA DATA
	
	-- MEMORY CONSTANTS
	constant RAM_DATA_WORD_WIDTH			: integer	:= 8;
	constant RAM_DATA_ADDRESS_WIDTH		: integer	:= 21;
	constant RAM_PROGRAM_WORD_WIDTH		: integer	:= 24;
	constant RAM_PROGRAM_ADDRESS_WIDTH	: integer	:= 16;
	constant RAM_VGA_WORD_WIDTH			: integer	:= 8;
	constant RAM_VGA_ADDRESS_WIDTH		: integer	:= 19;

end FPGA_CONSTANT_PKG;
