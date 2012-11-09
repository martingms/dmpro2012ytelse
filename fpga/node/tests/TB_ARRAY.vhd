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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_ARRAY IS
END TB_ARRAY;
 
ARCHITECTURE behavior OF TB_ARRAY IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIMD_ARRAY
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         instr : IN  std_logic_vector(23 downto 0);
         node_step : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         data_out1 : OUT  std_logic_vector(7 downto 0);
         data_out2 : OUT  std_logic_vector(7 downto 0);
         data_out3 : OUT  std_logic_vector(7 downto 0);
         data_out4 : OUT  std_logic_vector(7 downto 0);
         state_out : OUT  std_logic
		);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal instr : std_logic_vector(23 downto 0) := (others => '0');
   signal node_step : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_out1 : std_logic_vector(7 downto 0);
   signal data_out2 : std_logic_vector(7 downto 0);
   signal data_out3 : std_logic_vector(7 downto 0);
   signal data_out4 : std_logic_vector(7 downto 0);
   signal state_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIMD_ARRAY PORT MAP (
          clk => clk,
          reset => reset,
          instr => instr,
          node_step => node_step,
          data_in => data_in,
          data_out1 => data_out1,
          data_out2 => data_out2,
          data_out3 => data_out3,
          data_out4 => data_out4,
          state_out => state_out
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

		reset 			<= '1';
      wait for clk_period*10;
		
		reset 			<= '0';
		data_in 			<= (others => '1');
		node_step 		<= '1';
		wait for clk_period;
		
		data_in 			<= (others => '0');
		wait for clk_period*7;
			
		node_step <= '0';		
      wait;
   end process;

END;
