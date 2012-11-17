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
		
		ddata_in						: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
		ddata_out					: out STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
		daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
		dwrite						: out STD_LOGIC;

		vdata							: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
		vaddr							: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0)
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
	
	signal ctrl_daddr				: STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
	
	signal dma_cmd					: STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
	signal dma_params				: STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0);

	component SIMD_ARRAY is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			instr 					: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
			node_step 				: in  STD_LOGIC;		
			data_write				: in  STD_LOGIC;
			row_sel 					: in  STD_LOGIC_VECTOR (NODE_ARRAY_ROW_ADDR-1 downto 0);
			data_in 					: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			data_out 				: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
			state_out				: out STD_LOGIC
		);
	end component;
	
	signal simd_array_state		: STD_LOGIC;
	
	component dma is			
		generic (
			word_width 				: natural := CTRL_DDATA_BUS;
			mem_addr_width 		: natural := CTRL_DADDR_BUS;
			simd_rows 				: natural := NODE_ARRAY_COLS;
			simd_cols 				: natural := NODE_ARRAY_ROWS;
			simd_addr_width 		: natural := NODE_ARRAY_ROW_ADDR
		);	
		port (
			clk 						: in  STD_LOGIC;
			enable 					: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			
			command 					: in  STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
			parameter 				: in  STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0);
			
			mem_addr 				: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
			mem_data_in 			: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			mem_data_out 			: out STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			mem_write 				: out STD_LOGIC;
			
			simd_addr 				: out STD_LOGIC_VECTOR(NODE_ARRAY_ROW_ADDR-1 downto 0);
			simd_data_in 			: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			simd_data_out 			: out STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			simd_write 				: out STD_LOGIC;
			
			active 					: out STD_LOGIC;
			step_s 					: out STD_LOGIC
		);
	end component;

	signal dma_mem_addr 			: STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
	--signal dma_mem_data_in 		: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal dma_mem_data_out		: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal dma_mem_write 		: STD_LOGIC;

	signal simd_addr 				: STD_LOGIC_VECTOR(NODE_ARRAY_ROW_ADDR-1 downto 0);
	signal simd_data_in	 		: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal simd_data_out 		: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal simd_write 			: STD_LOGIC;

	signal dma_active 			: STD_LOGIC;
	signal node_step 				: STD_LOGIC;

begin
	SIMD_CTRL : CONTROL port map (
		clk 							=> clk,
		reset 						=> reset,
		state							=> simd_array_state,
		idata							=> idata,
		iaddr							=> iaddr,
		ddata							=> ddata_in,
		daddr							=> ctrl_daddr,
		--daddr_write				=> daddr_write,
		vdata							=> vdata,
		vaddr							=> vaddr,
		--vaddr_write				=> vaddr_write,
		dma_cmd						=> dma_cmd,
		dma_params					=> dma_params
	);
	
	SIMD_ARR : SIMD_ARRAY port map (
		clk 							=> clk,
		reset 						=> reset,
		instr 						=> idata,
		node_step 					=> node_step,
		data_write					=> simd_write,
		row_sel 						=> simd_addr,
		data_in 						=> simd_data_out,
		data_out 					=> simd_data_in,
		state_out					=> simd_array_state
	);
	
	SIMD_DMA : DMA port map (
		clk 							=> clk,
		enable 						=> '1',
		reset 						=> reset,
		command 						=> dma_cmd,
		parameter 					=> dma_params,
		mem_addr 					=> dma_mem_addr,
		mem_data_in 				=> ddata_in,
		mem_data_out				=> dma_mem_data_out,
		mem_write 					=> dma_mem_write,	
		simd_addr 					=> simd_addr,
		simd_data_in 				=> simd_data_in,
		simd_data_out 				=> simd_data_out,
		simd_write 					=> simd_write,
		active 						=> dma_active,
		step_s 						=> node_step
	);
	
	ram_mux : process (clk, dma_active, dma_mem_addr, dma_mem_write, dma_mem_data_out, ctrl_daddr) begin
		ddata_out					<= dma_mem_data_out;
		if (dma_active='1') then
			daddr						<= dma_mem_addr;
			if (dma_mem_write='0') then
				dwrite				<= '1';
			else 
				dwrite				<= '0';
			end if;
		else
			daddr						<= ctrl_daddr;
			dwrite					<= '0';
		end if;
	end process;
end Behavioral;