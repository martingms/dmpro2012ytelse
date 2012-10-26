--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:18 10/17/2012
-- Design Name:   
-- Module Name:   /home/evegard/dmpro2012ytelse/fpga/tb_dma.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dma
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
USE ieee.std_logic_arith.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_dma IS
END tb_dma;
 
ARCHITECTURE behavior OF tb_dma IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dma
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         command : IN  std_logic_vector(3 downto 0);
         parameter : IN  std_logic_vector(20 downto 0);
         mem_addr : OUT  std_logic_vector(20 downto 0);
         mem_data : INOUT  std_logic_vector(7 downto 0);
         mem_write : OUT  std_logic;
         simd_addr : OUT  std_logic_vector(4 downto 0);
         simd_data : INOUT  std_logic_vector(7 downto 0);
         simd_write : OUT  std_logic;
			step_s : OUT std_logic
        );
    END COMPONENT;
	 
	 
	component memory_from_file is
		generic (
			word_width : natural;
			address_width : natural;
			file_name : string);
		port (
			clk : in std_logic;
			write_enable : in std_logic;
			addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(word_width - 1 downto 0));
	end component memory_from_file;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal command : std_logic_vector(3 downto 0) := (others => '0');
   signal parameter : std_logic_vector(20 downto 0) := (others => '0');

	--BiDirs
   signal mem_data : std_logic_vector(7 downto 0);
   signal simd_data : std_logic_vector(7 downto 0);

 	--Outputs
   signal mem_addr : std_logic_vector(20 downto 0);
   signal mem_write : std_logic;
   signal simd_addr : std_logic_vector(4 downto 0);
   signal simd_write : std_logic;
	signal step_s : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dma PORT MAP (
          clk => clk,
          enable => enable,
          command => command,
          parameter => parameter,
          mem_addr => mem_addr,
          mem_data => mem_data,
          mem_write => mem_write,
          simd_addr => simd_addr,
          simd_data => simd_data,
          simd_write => simd_write,
			 step_s => step_s
        );
	
	memory_data: memory_from_file
		generic map (
			word_width => 8,
			address_width => 13,
			file_name => "lenna_padded.dat")
		port map (
			clk => clk,
			write_enable => mem_write,
			addr => mem_addr(12 downto 0),
			data => mem_data);

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
		enable <= '1';
		wait for clk_period;
		
		command <= "0100"; -- set read_active
		parameter <= "000000000000000000001";
		wait for clk_period;
		
		command <= "0101"; -- set read_base_addr
		parameter <= conv_std_logic_vector(4, 21);
		wait for clk_period;
		
		command <= "0110"; -- set read_horizontal_incr
		parameter <= conv_std_logic_vector(329, 21);
		wait for clk_period;
		
		command <= "0111"; -- set read_vertical_incr
		parameter <= conv_std_logic_vector(82, 21);
		wait for clk_period;

		command <= "1000"; -- set write_active
		parameter <= "000000000000000000001";
		wait for clk_period;
		
		command <= "1001"; -- set write_base_addr
		parameter <= conv_std_logic_vector(1004, 21);
		wait for clk_period;
		
		command <= "1010"; -- set write_horizontal_incr
		parameter <= conv_std_logic_vector(329, 21);
		wait for clk_period;
		
		command <= "1011"; -- set write_vertical_incr
		parameter <= conv_std_logic_vector(82, 21);
		wait for clk_period;
		
		command <= "0001"; -- start
		wait for clk_period;
		
		command <= "0000";
		wait;
   end process;

END;
