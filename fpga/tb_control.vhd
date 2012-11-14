--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:32:10 11/07/2012
-- Design Name:   
-- Module Name:   C:/Users/hanskrfl/Desktop/dmpro/fpga/node/tests/TB_ARRAY.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIMD_ARRAY
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

ENTITY TB_CONTROLL IS
END TB_CONTROLL;

ARCHITECTURE behavior OF TB_CONTROLL IS 

	-- Component Declaration
	COMPONENT CONTROLL is
		Port (
			clk 							: in	STD_LOGIC;
			reset 						: in	STD_LOGIC;
			
			state							: in STD_LOGIC; -- simd array state
			
			idata							: in	STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
			iaddr							: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

			ddata							: in	STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
			--daddr_write				: out STD_LOGIC;
			
			vdata							: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
			vaddr							: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
			--vaddr_write				: out STD_LOGIC;
			
			dma_cmd						: out STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
			dma_params					: out STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0)
		);
	end COMPONENT;

	signal clk 							: STD_LOGIC := '0';
	signal reset 						: STD_LOGIC := '0';
	
	signal state						: STD_LOGIC := '0'; -- simd array state
	
	signal idata						: STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0) := "100010001000000000001000";
	signal iaddr						: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

	signal ddata						: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0) := (others => '0');
	signal daddr						: STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
	
	signal vdata						: STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
	signal vaddr						: STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
	
	signal dma_cmd						: STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
	signal dma_params					: STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0);
	
	
	type INSTR_ARR is array (50 downto 0) of STD_LOGIC_VECTOR(23 downto 0);
	signal IRAM : INSTR_ARR := (others => (others =>'0'));
		
	-- Clock period definitions
	constant clk_period 				: time := 20 ns;					

BEGIN
	
	-- Instructions declaration
IRAM(0) <= "100000000000000000000000";
IRAM(1) <= "100010001000000000001000";
IRAM(2) <= "100000010000100010000000";
IRAM(3) <= "100000011001000010000000";
IRAM(4) <= "100000100001100010000000";
IRAM(5) <= "100000101010000010000000";
IRAM(6) <= "100000110010100010000000";
IRAM(7) <= "100000111011000010000000";
IRAM(8) <= "100001000011100010000000";
IRAM(9) <= "100001001100000010000000";
IRAM(10) <= "100000010000000000000000";
IRAM(11) <= "100000011000000000000000";
IRAM(12) <= "100000100000000000000000";
IRAM(13) <= "100000101000000000000000";
IRAM(14) <= "100000110000000000000000";
IRAM(15) <= "100000111000000000000000";
IRAM(16) <= "100001000000000000000000";
IRAM(17) <= "100001001000000000000000";
IRAM(18) <= "100010010000100000001000";
IRAM(19) <= "100010010001000000010101";
IRAM(20) <= "100010010000100000001001";
IRAM(21) <= "100010010001000000000101";
IRAM(22) <= "100011000100000000001000";
IRAM(23) <= "101010000000000010110000";
IRAM(24) <= "100011001100000001010010";
IRAM(25) <= "100011000100000000001001";
IRAM(26) <= "101010000000000011001000";
IRAM(27) <= "100001001000110000000010";
IRAM(28) <= "100011000100000000001000";
IRAM(29) <= "101000000000000011100000";
		
	-- Component Instantiation
	uut: CONTROLL PORT MAP(
		clk 						=> clk,
		reset 					=>	reset,
											
		state						=> state,
											
		idata						=> idata,
		iaddr						=> iaddr,
											
		ddata						=> ddata,
		daddr						=> daddr,
											
		vdata						=> vdata,
		vaddr						=> vaddr,
											
		dma_cmd					=> dma_cmd,
		dma_params				=> dma_params		
	);

	-- Simulate instruction RAM
	instr_ram : process(iaddr)
	begin
		--wait for 10 ns;
		idata <= IRAM(to_integer(unsigned(iaddr)));
	end process;
	
	-- Clock process definitions
	clk_process :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	-- Stimulus process
	stim_proc: process
	begin		
		reset <= '1';
		wait for clk_period*2;
		reset <= '0';
		wait;
	end process;
END;