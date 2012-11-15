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

ENTITY TB_CONTROL IS
END TB_CONTROL;

ARCHITECTURE behavior OF TB_CONTROL IS 

	-- Component Declaration
	COMPONENT CONTROL is
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
	signal iaddr						: STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0) := (others => '0');

	signal ddata						: STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0) := (others => '0');
	signal daddr						: STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0) := (others => '0');
	
	signal vdata						: STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0) := (others => '0');
	signal vaddr						: STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0) := (others => '0');
	
	signal dma_cmd						: STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0) := (others => '0');
	signal dma_params					: STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0) := (others => '0');
	
	
	type IRAM_T is array (50 downto 0) of STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
	type DRAM_T is array (50 downto 0) of STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal IRAM : IRAM_T := (others => (others =>'0'));
	signal DRAM : DRAM_T := (others => (others =>'0'));
		
	-- Clock period definitions
	constant clk_period 				: time := 20 ns;					

BEGIN
	
	-- Instructions declaration
IRAM(0) <= "100000000000000000000000";
IRAM(1) <= "100010001000010010110000";
IRAM(2) <= "100000010000000000000000";
IRAM(3) <= "100000001000100000000110";
IRAM(4) <= "100010010001000000001000";
IRAM(5) <= "101010000000000000011000";
IRAM(6) <= "100010000001000001001010";
IRAM(7) <= "100001101000000000000000";
IRAM(8) <= "100001110000000000000000";
IRAM(9) <= "100101110110100000000000";
IRAM(10) <= "100011101110100000001000";
IRAM(11) <= "101010000000000001001000";
IRAM(12) <= "100000000110100010000010";
IRAM(13) <= "100000000000000000000000";
IRAM(14) <= "100001101000000000000000";
IRAM(15) <= "100001110000000000000000";
IRAM(16) <= "100011101110100000001000";
IRAM(17) <= "101010000000000010000000";
IRAM(18) <= "100000000110100010000010";
IRAM(19) <= "100000000000000000000000";
IRAM(20) <= "101000000000000000111000";

DRAM(0) <= "10000000";
DRAM(1) <= "10000001";
DRAM(2) <= "10000010";
DRAM(3) <= "10000011";
DRAM(4) <= "10000100";
DRAM(5) <= "10000101";
DRAM(6) <= "10000110";
DRAM(7) <= "10000111";
DRAM(8) <= "10001000";
DRAM(9) <= "10001001";
DRAM(10) <= "10001010";
DRAM(11) <= "10001011";
DRAM(12) <= "10001100";
	
	-- Component Instantiation
	uut: CONTROL PORT MAP(
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
		idata <= IRAM(to_integer(unsigned(iaddr)));
	end process;
	
	-- Simulate data RAM
	data_ram : process(daddr)
	begin
		if (to_integer(unsigned(daddr)) < 10) then
			ddata <= DRAM(to_integer(unsigned(daddr)));
		else
			ddata <= (others => '1');
		end if;
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