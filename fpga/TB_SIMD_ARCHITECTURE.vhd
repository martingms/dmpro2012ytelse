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
   signal iaddr : std_logic_vector(15 downto 0);
   signal ddata_out : std_logic_vector(7 downto 0);
   signal daddr : std_logic_vector(20 downto 0);
   signal dwrite : std_logic;
   signal vdata : std_logic_vector(7 downto 0);
   signal vaddr : std_logic_vector(18 downto 0);

	-- RAM definitions definitions
 	type IRAM_T is array (50 downto 0) of STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
	type DRAM_T is array (50 downto 0) of STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal IRAM : IRAM_T := (others => (others =>'0'));
	signal DRAM : DRAM_T := (others => (others =>'0'));

	-- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instructions declaration
IRAM(0) <= "100010001000000000001000";
IRAM(1) <= "100010010000000000010000";
IRAM(2) <= "100010011000000000011000";
IRAM(3) <= "000010001000001100100000";
IRAM(4) <= "000100001000100000000000";
IRAM(5) <= "100011111000001100100000";
IRAM(6) <= "110000000000000000001000";
IRAM(7) <= "100000000000000000000000";
IRAM(8) <= "100000000000000000000000";
IRAM(9) <= "100000000000000000000000";
IRAM(10) <= "100000000000000000000000";
IRAM(11) <= "100000000000000000000000";
IRAM(12) <= "100011111000000000001000";
IRAM(13) <= "110000000000000000100000";
IRAM(14) <= "100000000000000000000000";
IRAM(15) <= "101000000000000001110000";





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
	data_ram : process(daddr,ddata_in)
	begin
--		if (to_integer(unsigned(daddr)) < 10) then
--			if (dwrite='1') then
--				DRAM(to_integer(unsigned(daddr))) <= ddata_in;
--			end if;
--			
--			ddata_out <= DRAM(to_integer(unsigned(daddr)));
--		else
			ddata_out(0) <= daddr(20);
			ddata_out(1) <= daddr(17);
			ddata_out(2) <= daddr(16);
			ddata_out(3) <= daddr(10);
			ddata_out(4) <= daddr(8);
			ddata_out(5) <= daddr(5);
			ddata_out(6) <= daddr(1);
			ddata_out(7) <= daddr(0);
--		end if;
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
