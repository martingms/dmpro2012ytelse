--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:59:28 11/16/2012
-- Design Name:   
-- Module Name:   C:/Users/hanskrfl/Desktop/dmpro/fpga/TB_SIMD_ARCHITECTURE.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIMD_ARCHITECTUR
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

ENTITY TB_SIMD_ARCHITECTURE IS
END TB_SIMD_ARCHITECTURE;
 
ARCHITECTURE behavior OF TB_SIMD_ARCHITECTURE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIMD_ARCHITECTUR
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         idata : IN  std_logic_vector(23 downto 0);
         iaddr : OUT  std_logic_vector(15 downto 0);
         ddata_in : IN  std_logic_vector(7 downto 0);
         ddata_out : OUT  std_logic_vector(7 downto 0);
         daddr : OUT  std_logic_vector(20 downto 0);
         dwrite : OUT  std_logic;
         vdata : OUT  std_logic_vector(7 downto 0);
         vaddr : OUT  std_logic_vector(18 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal idata : std_logic_vector(23 downto 0) := (others => '0');
   signal ddata_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal iaddr : std_logic_vector(15 downto 0) := (others => '0');
   signal ddata_out : std_logic_vector(7 downto 0) := (others => '0');
   signal daddr : std_logic_vector(20 downto 0) := (others => '0');
   signal dwrite : std_logic := '0';
   signal vdata : std_logic_vector(7 downto 0) := (others => '0');
   signal vaddr : std_logic_vector(18 downto 0) := (others => '0');

	-- RAM definitions definitions
 	type IRAM_T is array (200 downto 0) of STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
	type DRAM_T is array (50 downto 0) of STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal IRAM : IRAM_T := (others => (others =>'0'));
	signal DRAM : DRAM_T := (others => (others =>'0'));

	-- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instructions declaration
IRAM(0) <= "100000000000000000000000";
IRAM(1) <= "100011111000000000001000";
IRAM(2) <= "110000000000000000100000";
IRAM(3) <= "100000000000000000000000";
IRAM(4) <= "100011111000000000001000";
IRAM(5) <= "110000000000000001000000";
IRAM(6) <= "100000000000000000000000";
IRAM(7) <= "100011111000010100000000";
IRAM(8) <= "100001111111100000000110";
IRAM(9) <= "110000000000000001011000";
IRAM(10) <= "110000000000000000111000";
IRAM(11) <= "100000000000000000000000";
IRAM(12) <= "100010100000010100000000";
IRAM(13) <= "100000100010000000000110";
IRAM(14) <= "100001111000001000000000";
IRAM(15) <= "100001111111101000000000";
IRAM(16) <= "100001111111101000000000";
IRAM(17) <= "100011111111100000001000";
IRAM(18) <= "110000000000000001010000";
IRAM(19) <= "110000000000000000110000";
IRAM(20) <= "100000000000000000000000";
IRAM(21) <= "100010111000000000011000";
IRAM(22) <= "100011000000001010000000";
IRAM(23) <= "100010110000010011111000";
IRAM(24) <= "100010111011110100000000";
IRAM(25) <= "100010111011110100000000";
IRAM(26) <= "100011111011100000000000";
IRAM(27) <= "110000000000000001001000";
IRAM(28) <= "110000000000000000101000";
IRAM(29) <= "100011111111100000010000";
IRAM(30) <= "100000000000000000000000";
IRAM(31) <= "000010010001000001000000";
IRAM(32) <= "000100011001000000000000";
IRAM(33) <= "000100010001100000000000";
IRAM(34) <= "110000000000000000001000";
IRAM(35) <= "100000000000000000000000";
IRAM(36) <= "100000000000000000000000";
IRAM(37) <= "100000000000000000000000";
IRAM(38) <= "100000000000000000000000";
IRAM(39) <= "100000000000000000000000";
IRAM(40) <= "100000000000000000000000";
IRAM(41) <= "100000000000000000000000";
IRAM(42) <= "100000000000000000000000";
IRAM(43) <= "100000000000000000000000";
IRAM(44) <= "100000000000000000000000";
IRAM(45) <= "100000000000000000000000";
IRAM(46) <= "100000000000000000000000";
IRAM(47) <= "100000000000000000000000";
IRAM(48) <= "100000000000000000000000";
IRAM(49) <= "100000000000000000000000";
IRAM(50) <= "100000000000000000000000";
IRAM(51) <= "100000000000000000000000";
IRAM(52) <= "100000000000000000000000";
IRAM(53) <= "100000000000000000000000";
IRAM(54) <= "100000000000000000000000";
IRAM(55) <= "100000000000000000000000";
IRAM(56) <= "100000000000000000000000";
IRAM(57) <= "100000000000000000000000";
IRAM(58) <= "100000000000000000000000";
IRAM(59) <= "100000000000000000000000";
IRAM(60) <= "100000000000000000000000";
IRAM(61) <= "100000000000000000000000";
IRAM(62) <= "100000000000000000000000";
IRAM(63) <= "100000000000000000000000";
IRAM(64) <= "100000000000000000000000";
IRAM(65) <= "100000000000000000000000";
IRAM(66) <= "100000000000000000000000";
IRAM(67) <= "100000000000000000000000";
IRAM(68) <= "100000000000000000000000";
IRAM(69) <= "100000000000000000000000";
IRAM(70) <= "100000000000000000000000";
IRAM(71) <= "100000000000000000000000";
IRAM(72) <= "100000000000000000000000";
IRAM(73) <= "100000000000000000000000";
IRAM(74) <= "100000000000000000000000";
IRAM(75) <= "100000000000000000000000";
IRAM(76) <= "100010110011000000001001";
IRAM(77) <= "101010000000000011011000";
IRAM(78) <= "100000000000001100000010";
IRAM(79) <= "100000000000000000000000";
IRAM(80) <= "100011000100000000001001";
IRAM(81) <= "101010000000000010111000";
IRAM(82) <= "100000000000010000000010";
IRAM(83) <= "100000000000000000000000";
IRAM(84) <= "100010001000010010110000";
IRAM(85) <= "100000001000100000000110";
IRAM(86) <= "100000001000100000000110";
IRAM(87) <= "100000001000100000000110";
IRAM(88) <= "100000001000100000000110";
IRAM(89) <= "100000001000100000000110";
IRAM(90) <= "100000001000100000000110";
IRAM(91) <= "100000001000100000000110";
IRAM(92) <= "100000001000100000000110";
IRAM(93) <= "100000001000100000000110";
IRAM(94) <= "100011101000000000000000";
IRAM(95) <= "100101110110100000000000";
IRAM(96) <= "100101110110100000000000";
IRAM(97) <= "100000000000000000000000";
IRAM(98) <= "100011101110100000001000";
IRAM(99) <= "101010000000001100111000";
IRAM(100) <= "100000000000111010000010";
IRAM(101) <= "100000000000000000000000";
IRAM(102) <= "101000000000001011111000";
IRAM(103) <= "100000000000000000000000";
IRAM(104) <= "101000000000001100111000";


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
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIMD_ARCHITECTUR PORT MAP (
          clk => clk,
          reset => reset,
          idata => idata,
          iaddr => iaddr,
          ddata_in => ddata_in,
          ddata_out => ddata_out,
          daddr => daddr,
          dwrite => dwrite,
          vdata => vdata,
          vaddr => vaddr
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	-- Simulate instruction RAM
	instr_ram : process(iaddr)
	begin
		idata <= IRAM(to_integer(unsigned(iaddr)));
	end process;
	
	-- Simulate data RAM
	data_ram : process(daddr)
	begin
		if (dwrite='0') then
			ddata_in(0) <= daddr(20);
			ddata_in(1) <= daddr(17);
			ddata_in(2) <= daddr(16);
			ddata_in(3) <= daddr(10);
			ddata_in(4) <= daddr(8);
			ddata_in(5) <= daddr(5);
			ddata_in(6) <= daddr(1);
			ddata_in(7) <= daddr(0);
		end if;
	end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
