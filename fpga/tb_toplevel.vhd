--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:49:30 11/02/2012
-- Design Name:   
-- Module Name:   C:/Users/vegarded/dmpro2012ytelse/fpga/tb_toplevel.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: toplevel
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_toplevel IS
END tb_toplevel;
 
ARCHITECTURE behavior OF tb_toplevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toplevel
    PORT(
         clk : IN  std_logic;
         prog_ram_addr : OUT  std_logic_vector(15 downto 0);
         prog_ram_data : INOUT  std_logic_vector(23 downto 0);
         prog_ram_write : OUT  std_logic;
         data_ram_addr : OUT  std_logic_vector(20 downto 0);
         data_ram_data : INOUT  std_logic_vector(7 downto 0);
         data_ram_write : OUT  std_logic;
         vga_ram_addr : OUT  std_logic_vector(18 downto 0);
         vga_ram_data : INOUT  std_logic_vector(7 downto 0);
         vga_ram_write : OUT  std_logic;
         vga_h_sync : OUT  std_logic;
         vga_v_sync : OUT  std_logic;
         vga_value : OUT  std_logic_vector(9 downto 0);
         avr_data_in : IN  std_logic_vector(23 downto 0);
         avr_data_in_ready : IN  std_logic;
         avr_data_out : OUT  std_logic_vector(7 downto 0);
         avr_interrupt : OUT  std_logic;
         state : IN  std_logic_vector(2 downto 0);
         state_ready : IN  std_logic
        );
    END COMPONENT;
	 
	 
	 
	component memory_empty is
		generic (
			word_width : natural;
			address_width : natural
		);
		port (
			clk : in std_logic;
			write_enable : in std_logic;
			addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(word_width - 1 downto 0)
		);
	end component;
	 
    

   --Inputs
   signal clk : std_logic := '0';
   signal avr_data_in : std_logic_vector(23 downto 0) := (others => '0');
   signal avr_data_in_ready : std_logic := '0';
   signal state : std_logic_vector(2 downto 0) := (others => '0');
   signal state_ready : std_logic := '0';

	--BiDirs
   signal prog_ram_data : std_logic_vector(23 downto 0);
   signal data_ram_data : std_logic_vector(7 downto 0);
   signal vga_ram_data : std_logic_vector(7 downto 0);

 	--Outputs
   signal prog_ram_addr : std_logic_vector(15 downto 0);
   signal prog_ram_write : std_logic;
   signal data_ram_addr : std_logic_vector(20 downto 0);
   signal data_ram_write : std_logic;
   signal vga_ram_addr : std_logic_vector(18 downto 0);
   signal vga_ram_write : std_logic;
   signal vga_h_sync : std_logic;
   signal vga_v_sync : std_logic;
   signal vga_value : std_logic_vector(9 downto 0);
   signal avr_data_out : std_logic_vector(7 downto 0);
   signal avr_interrupt : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplevel PORT MAP (
          clk => clk,
          prog_ram_addr => prog_ram_addr,
          prog_ram_data => prog_ram_data,
          prog_ram_write => prog_ram_write,
          data_ram_addr => data_ram_addr,
          data_ram_data => data_ram_data,
          data_ram_write => data_ram_write,
          vga_ram_addr => vga_ram_addr,
          vga_ram_data => vga_ram_data,
          vga_ram_write => vga_ram_write,
          vga_h_sync => vga_h_sync,
          vga_v_sync => vga_v_sync,
          vga_value => vga_value,
          avr_data_in => avr_data_in,
          avr_data_in_ready => avr_data_in_ready,
          avr_data_out => avr_data_out,
          avr_interrupt => avr_interrupt,
          state => state,
          state_ready => state_ready
        );


	test_vga_ram: memory_empty
		generic map (
			word_width => 8,
			address_width => 19
		)
		port map (
			clk => clk,
			write_enable => vga_ram_write,
			addr => vga_ram_addr,
			data => vga_ram_data
		);



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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
