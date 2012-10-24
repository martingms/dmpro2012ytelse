--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:10:05 10/23/2012
-- Design Name:   
-- Module Name:   C:/Users/hanskrfl/Desktop/dmpro/fpga/node/tests/tb_node.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: node
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
 
ENTITY tb_node IS
END tb_node;
 
ARCHITECTURE behavior OF tb_node IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT node
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         instr : IN  std_logic_vector(23 downto 0);
         state : OUT  std_logic_vector(1 downto 0);
         n_in : IN  std_logic_vector(7 downto 0);
         s_in : IN  std_logic_vector(7 downto 0);
         e_in : IN  std_logic_vector(7 downto 0);
         w_in : IN  std_logic_vector(7 downto 0);
         n_out : OUT  std_logic_vector(7 downto 0);
         s_out : OUT  std_logic_vector(7 downto 0);
         e_out : OUT  std_logic_vector(7 downto 0);
         w_out : OUT  std_logic_vector(7 downto 0);
         step : IN  std_logic;
         sr_in : IN  std_logic_vector(7 downto 0);
         sr_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal instr : std_logic_vector(23 downto 0) := (others => '0');
   signal n_in : std_logic_vector(7 downto 0) := (others => '0');
   signal s_in : std_logic_vector(7 downto 0) := (others => '0');
   signal e_in : std_logic_vector(7 downto 0) := (others => '0');
   signal w_in : std_logic_vector(7 downto 0) := (others => '0');
   signal step : std_logic := '0';
   signal sr_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal state : std_logic_vector(1 downto 0);
   signal n_out : std_logic_vector(7 downto 0);
   signal s_out : std_logic_vector(7 downto 0);
   signal e_out : std_logic_vector(7 downto 0);
   signal w_out : std_logic_vector(7 downto 0);
   signal sr_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: node PORT MAP (
          clk => clk,
          reset => reset,
          instr => instr,
          state => state,
          n_in => n_in,
          s_in => s_in,
          e_in => e_in,
          w_in => w_in,
          n_out => n_out,
          s_out => s_out,
          e_out => e_out,
          w_out => w_out,
          step => step,
          sr_in => sr_in,
          sr_out => sr_out
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
      
		reset <= '1';		
		wait for 100 ns;	
		
		reset <= '0';
      wait for clk_period*10;

		-- ctrl mask  op   r0   r1   r2   r3   fn
		--  0    0   000  0001 0010 0011 0100 100
		--  0    0   00
		-- instr <= '00'

      -- insert stimulus here 

      wait;
   end process;

END;
