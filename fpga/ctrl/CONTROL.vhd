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

entity CONTROL is
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
		
		dma_cmd						: out STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
		dma_params					: out STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0)
	);
end CONTROL;

architecture Behavioral of CONTROL is
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
	
	signal reg_write				: STD_LOGIC;
	signal mem_to_reg				: STD_LOGIC;
	signal alu_const				: STD_LOGIC;
	signal jump						: STD_LOGIC;
	signal branch					: STD_LOGIC;

----------------------------------------------------------------------------------
--	PROGRAM COUNTER
----------------------------------------------------------------------------------
	component PROGRAM_COUNTER is
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
--	REGISTER BANK
----------------------------------------------------------------------------------
	component CTRL_REGISTER is
		Port(
			clk 						:	in	 STD_LOGIC;
			reset						:	in	 STD_LOGIC;
			write						:	in	 STD_LOGIC;			
			adr0 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr1 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr2 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			data0_in					:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			data1_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			data2_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			dma_params				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			vga_addr					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
			vga_data					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0)
		);
	end component;
	
	signal data1_out				: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal data2_out				: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal tmp_dma_params		: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal tmp_vga_addr			: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal tmp_vga_data			: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
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
	signal alu_res					: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	
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
	
	signal reg_data				: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal tmp_alu_mux_in1 		: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	signal tmp_reg_mux_in1		: STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
	
begin

----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	DECODER : CTRL_INST_DECODER port map (
		reset 						=> reset,
		enable						=> idata(23),
		array_state					=> state,
		instr_op						=> idata(22 downto 19),
		instr_dma					=> idata(6 downto 3),		
		reg_write					=> reg_write,
		mem_to_reg					=> mem_to_reg,
		alu_const					=> alu_const,
		jump							=> jump,
		branch						=> branch,
		dma_cmd						=> dma_cmd
	);

----------------------------------------------------------------------------------
--	PROGRAM COUNTER
----------------------------------------------------------------------------------
	PC : PROGRAM_COUNTER port map (
		clk 							=> clk,
		reset 						=> reset,
		jump_addr					=> idata(18 downto 3),
		jump							=> jump,
		branch						=> branch,
		alu_res						=> reg_data(0),
		instr_addr					=> iaddr
	);

----------------------------------------------------------------------------------
--	REGISTER BANK
----------------------------------------------------------------------------------
	dma_params						<= tmp_dma_params(CTRL_DMA_DAT_BUS-1 downto 0);
	vaddr								<= tmp_vga_addr(CTRL_VADDR_BUS-1 downto 0);
	vdata								<= tmp_vga_data(CTRL_VDATA_BUS-1 downto 0);
	
	REG : CTRL_REGISTER port map (
		clk 							=> clk,
		reset							=> reset,
		write							=> reg_write,
		adr0 							=> idata(18 downto 15),
		adr1 							=> idata(14 downto 11),
		adr2 							=> idata(10 downto  7),
		data0_in						=> reg_data,
		data1_out					=> data1_out,
		data2_out					=> data2_out,
		dma_params				 	=> tmp_dma_params,
		vga_addr						=> tmp_vga_addr,
		vga_data						=> tmp_vga_data
	);
	
----------------------------------------------------------------------------------
--	MAIN ALU
----------------------------------------------------------------------------------
--	daddr(18 downto 0)			<= alu_res(18 downto 0);
--	daddr(20 downto 19)			<= (others => '0');
	daddr(20 downto 0)			<= alu_res(20 downto 0);
	
	MAIN_ALU : ALU port map( 
		alu_op						=> idata(2 downto 0),
		op1 							=> data1_out,
		op2 							=> alu_op2,
		res 							=> alu_res
	);

----------------------------------------------------------------------------------
--	MUX
----------------------------------------------------------------------------------
	tmp_alu_mux_in1 				<= ("0000000000000" & idata(10 downto 3));
	tmp_reg_mux_in1				<= ("0000000000000" & ddata);
	
	ALU_MUX : MUX port map ( 
		selector						=> alu_const,
		bus_in0 						=> data2_out,
		bus_in1 						=> tmp_alu_mux_in1,
		bus_out 						=> alu_op2
	);
	
	REG_MUX : MUX port map ( 
		selector						=> mem_to_reg,
		bus_in0 						=> alu_res,
		bus_in1 						=> tmp_reg_mux_in1,
		bus_out 						=> reg_data
	);
end Behavioral;