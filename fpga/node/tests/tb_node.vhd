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
			clk 						: in  std_logic;
			reset 					: in  std_logic;
			
			instr 					: in  std_logic_vector(23 downto 0);
			node_state 				: out std_logic;
			
			n_in 						: in  std_logic_vector(7 downto 0);
			s_in 						: in  std_logic_vector(7 downto 0);
			e_in 						: in  std_logic_vector(7 downto 0);
			w_in 						: in  std_logic_vector(7 downto 0);
			
			n_out 					: out std_logic_vector(7 downto 0);
			s_out 					: out std_logic_vector(7 downto 0);
			e_out 					: out std_logic_vector(7 downto 0);
			w_out 					: out std_logic_vector(7 downto 0);
			
			step 						: in  std_logic;
			sr_in 					: in  std_logic_vector(7 downto 0);
			sr_out 					: out std_logic_vector(7 downto 0)
		);
	END COMPONENT;

   --Inputs
   signal clk 						: std_logic := '0';
   signal reset 					: std_logic := '0';
   signal instr 					: std_logic_vector(23 downto 0) := (others => '0');
   signal n_in 					: std_logic_vector(7 downto 0) := (others => '0');
   signal s_in 					: std_logic_vector(7 downto 0) := (others => '0');
   signal e_in 					: std_logic_vector(7 downto 0) := (others => '0');
   signal w_in 					: std_logic_vector(7 downto 0) := (others => '0');
   signal step 					: std_logic := '0';
   signal sr_in 					: std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal node_state 			: std_logic;
   signal n_out 					: std_logic_vector(7 downto 0);
   signal s_out 					: std_logic_vector(7 downto 0);
   signal e_out 					: std_logic_vector(7 downto 0);
   signal w_out 					: std_logic_vector(7 downto 0);
   signal sr_out 					: std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period 			: time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: node PORT MAP (
		clk 							=> clk,
		reset 						=> reset,
		instr 						=> instr,
		node_state 					=> node_state,
		n_in 							=> n_in,
		s_in 							=> s_in,
		e_in 							=> e_in,
		w_in 							=> w_in,
		n_out 						=> n_out,
		s_out 						=> s_out,
		e_out 						=> e_out,
		w_out							=> w_out,
		step 							=> step,
		sr_in 						=> sr_in,
		sr_out 						=> sr_out
	);

   -- Clock process definitions
   clk_process : process
   begin
		clk 							<= '0';
		wait for clk_period/2;
		clk 							<= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc : process
   begin				
		reset <= '1';		
		wait for 100 ns;	
		
		reset <= '0';
		wait for clk_period*10;

		-- ctrl mask  op   r0   r1   r2   r3   fn
		--  0	0   000  0011 0001 0010 0000 000 - R3 <= R1 + R2
		--  0	0   001  0001 0000 0000 0001 000 - R1 <= ZERO + 1

		instr <= "000010001000000000001000";  -- R1 <= $ZERO + 1
		wait for clk_period;
		
		instr <= "000010010000000000010000";  -- R2 <= $ZERO + 2
		wait for clk_period;

		instr <= "000000011000100100000000";  -- R3 <= R1 + R2
		wait for clk_period;
		
		instr <= "000010100000000000100000";  -- R4 <= $ZERO + 4
		wait for clk_period;

		instr <= "001000001001000110100000";  -- SEND R1 R2 R3 R4
		wait for clk_period;

		instr <= "000000110000100010000101";  -- EQ R6 R1 R1
		wait for clk_period;

		instr <= "000011111011000000000000";  -- $STATE <= R6 + $ZERO
		wait for clk_period;
		
		instr <= "001101000100110101011100";  -- STORE & FORWARD R8 R9 R10 R11

		n_in <= n_out;
		s_in <= s_out;
		e_in <= e_out;
		w_in <= w_out;
		
		sr_in <= "10000001";
		step <= '1';
		
		wait for clk_period;
		
		instr <= "000101110010000000000100";  -- SWAP R15 R4
		step <= '0';
		wait for clk_period;
				
		instr <= "000000000000000000000100";  -- R0 R0 + R0
		step <= '1';
		wait for clk_period;

		instr <= "000000000000000000000100";  -- R0 R0 + R0
		step <= '0';
		wait for clk_period;
		
		wait;
   end process;

END;
