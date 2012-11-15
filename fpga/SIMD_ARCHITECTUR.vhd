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

entity SIMD_ARCHITECTUR is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		idata							: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
		iaddr							: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);
		
		ddata							: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
		daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0)
	);
end SIMD_ARCHITECTUR;

architecture Behavioral of SIMD_ARCHITECTUR is
	component CONTROL is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			state						: in  STD_LOGIC; -- simd array state			
			idata						: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
			iaddr						: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);
			ddata						: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			daddr						: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
			--daddr_write			: out STD_LOGIC;		
			vdata						: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
			vaddr						: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
			--vaddr_write			: out STD_LOGIC;			
			dma_cmd					: out STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
			dma_params				: out STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0)
		);
	end component;
	
	signal vdata					: STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
	signal vaddr					: STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
	
	signal dma_cmd					: STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
	signal dma_params				: STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0);

	component SIMD_ARRAY is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			instr 					: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
			node_step 				: in  STD_LOGIC;		
			data_write				: in  STD_LOGIC;
			row_sel 					: in  STD_LOGIC_VECTOR (1 downto 0);
			data_in 					: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			data_out 				: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
			state_out				: out STD_LOGIC
		);
	end component;
	
	signal simd_array_state		: STD_LOGIC;
	
	component dma is
		generic (
			word_width				: natural := 8;
			mem_addr_width 		: natural := 21;
			simd_rows 				: natural := 5;
			simd_cols 				: natural := 5;
			simd_addr_width 		: natural := 5);
			
		port (
			clk 						: in    STD_LOGIC;
			enable 					: in    STD_LOGIC;
			reset 					: in    STD_LOGIC;
			
			command 					: in    STD_LOGIC_VECTOR(3 downto 0);
			parameter 				: in    STD_LOGIC_VECTOR(mem_addr_width - 1 downto 0);
			
			mem_addr 				: out   STD_LOGIC_VECTOR(mem_addr_width - 1 downto 0);
			mem_data 				: inout STD_LOGIC_VECTOR(word_width - 1 downto 0);
			mem_write 				: out   STD_LOGIC;
			
			simd_addr 				: out   STD_LOGIC_VECTOR(simd_addr_width - 1 downto 0);
			simd_data_in 			: in    STD_LOGIC_VECTOR(word_width - 1 downto 0);
			simd_data_out 			: out   STD_LOGIC_VECTOR(word_width - 1 downto 0);
			simd_write 				: out   STD_LOGIC;
			
			active 					: out   STD_LOGIC;
			step_s 					: out   STD_LOGIC
		);
	end component;

	signal mem_addr 				: STD_LOGIC_VECTOR(21 - 1 downto 0);
	signal mem_data 				: STD_LOGIC_VECTOR(8 - 1 downto 0);
	signal mem_write 				: STD_LOGIC;

	signal simd_addr 				: STD_LOGIC_VECTOR(5 - 1 downto 0);
	signal simd_data_out 		: STD_LOGIC_VECTOR(8 - 1 downto 0);
	signal simd_write 			: STD_LOGIC_VECTOR(8 - 1 downto 0);

	signal active 					: STD_LOGIC;
	signal step_s 					: STD_LOGIC;

begin
	SIMD_CTRL : CONTROL port map (
		clk 							=> clk,
		reset 						=> reset,
		state							=> simd_array_state,
		idata							=> idata,
		iaddr							=> iaddr,
		ddata							=> ddata,
		daddr							=> daddr,
		--daddr_write				=> daddr_write,
		vdata							=> vdata,
		vaddr							=> vaddr,
		--vaddr_write				=> vaddr_write,
		dma_cmd						=> dma_cmd,
		dma_params					=> dma_params
	);
	
	SIMD_ARR : SIMD_ARRAY port map (
		clk 							=> clk,
		reset 						=> clk,
		instr 						=> idata,
		node_step 					=> '0',
		data_write					=> clk,
		row_sel 						=> clk,
		data_in 						=> clk,
		data_out 					=> clk,
		state_out					=> clk
	);

end Behavioral;