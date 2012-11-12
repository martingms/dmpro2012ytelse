----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 21:21:29 11/11/2012
-- Design Name			: FPGA CONTROL
-- Module Name			: CONTROL - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: FPGA SIMD CONTROL CORE
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

entity CONTROLL is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		state							: in STD_LOGIC; -- simd array state
		
		idata							: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
		iaddr							: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

		ddata							: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
		daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
		--daddr_write				: out STD_LOGIC;
		
		vdata							: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
		vaddr							: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
		--vaddr_write				: out STD_LOGIC;
		
		dma_cmd						: out STD_LOGIC_VECTOR(CTRL_DMA_BUS-1 downto 0)
		dma_params					: out STD_LOGIC_VECTOR(CTRL_DMA_BUS-1 downto 0)
	);
end CONTROLL;

architecture Behavioral of CONTROLL is
----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	component CTRL_INST_DECODER is
		Port (
			reset 					: in  STD_LOGIC;			
			enable					: in  STD_LOGIC;
			array_state				: in  STD_LOGIC;
			instr_op					: in  STD_LOGIC_VECTOR (CTRL_INSTR_OP-1 downto 0);
			instr_dma				: in  STD_LOGIC_VECTOR (CTRL_DMA_CMD_BUS-1 downto 0);
			
			reg_write				: out STD_LOGIC;
			mem_to_reg				: out STD_LOGIC;
			alu_const				: out STD_LOGIC;
			jump						: out STD_LOGIC;
			branch					: out STD_LOGIC;
			dma_cmd					: out STD_LOGIC_VECTOR (CTRL_DMA_CMD_BUS-1 downto 0)
		);
	end component;
	
	signal reg_write				: in  STD_LOGIC;
	signal mem_to_reg				: in  STD_LOGIC;
	signal alu_const				: in  STD_LOGIC;
	signal jump						: in  STD_LOGIC;
	signal branch					: in  STD_LOGIC;

----------------------------------------------------------------------------------
--	PROGRAM COUNTER
----------------------------------------------------------------------------------
	component PC is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			jump_addr				: in  STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);
			jump						: in  STD_LOGIC;
			branch					: in  STD_LOGIC;
			alu_res					: in  STD_LOGIC;			
			instr_addr				: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0)
		);
	end component;

----------------------------------------------------------------------------------
--	PROGRAM COUNTER
----------------------------------------------------------------------------------
	component CTRL_REGISTER is
		Port(
			clk 						:	in	 STD_LOGIC;
			reset						:	in	 STD_LOGIC;
			write						:	in	 STD_LOGIC;			
			adr0 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			adr1 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			adr2 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			data0_in					:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			data1_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			data2_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			dma_params				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			vga_addr					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			vga_data					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0)
		);
	end component;

----------------------------------------------------------------------------------
--	MAIN ALU
----------------------------------------------------------------------------------
	component ALU is
		generic (N : NATURAL := CTRL_WORD_WIDTH);
		Port ( 
			alu_op					: in  STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);
			op1 						: in  STD_LOGIC_VECTOR (N-1  downto 0);
			op2 						: in  STD_LOGIC_VECTOR (N-1  downto 0);
			res 						: out STD_LOGIC_VECTOR (N-1  downto 0)
		);
	end component;
	
	signal alu_op2					: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	
----------------------------------------------------------------------------------
--	MUX
----------------------------------------------------------------------------------
	component MUX is
		generic (N : NATURAL := CTRL_WORD_WIDTH);
		Port ( 
			selector					: in  STD_LOGIC;
			bus_in0 					: in  STD_LOGIC_VECTOR (N-1 downto 0);
			bus_in1 					: in  STD_LOGIC_VECTOR (N-1 downto 0);
			bus_out 					: out STD_LOGIC_VECTOR (N-1 downto 0)
		);
	end component;
	
begin


end Behavioral;