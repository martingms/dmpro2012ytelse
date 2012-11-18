----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:57 10/31/2012 
-- Design Name: 
-- Module Name:    ARRAY - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity SIMD_ARRAY is
    Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		instr 						: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
		node_step 					: in  STD_LOGIC;
		
		data_write					: in  STD_LOGIC;
		row_sel 						: in  STD_LOGIC_VECTOR (NODE_ARRAY_ROW_ADDR-1 downto 0);
		data_in 						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		data_out 					: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
		state_out					: out STD_LOGIC
	);
end SIMD_ARRAY;

architecture Behavioral of SIMD_ARRAY is

	component node is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;			
			instr 					: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
			node_state 				: out STD_LOGIC;		
			n_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			n_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);		
			step 						: in  STD_LOGIC;
			sr_in						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			sr_out					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;
	
	component NODE_EDGE is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			instr 					: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
			-- node_state 			: out STD_LOGIC;
			n_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			n_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);			
			step 						: in  STD_LOGIC;
			sr_in						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			sr_out					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;

	type DATA_T  is array (NODE_ARRAY_ROWS+2 downto 0) of STD_LOGIC_VECTOR (((NODE_ARRAY_COLS+2)*8)+7 downto 0);
	type DATA_S  is array (NODE_ARRAY_ROWS+1 downto 0) of STD_LOGIC_VECTOR (((NODE_ARRAY_COLS+2)*8)+7 downto 0);
	type STATE_T is array (NODE_ARRAY_ROWS-1 downto 0) of STD_LOGIC_VECTOR   (NODE_ARRAY_COLS-1 downto 0);
		signal N_OUT  					: DATA_T  := (others => (others=> '0'));
	signal S_OUT  					: DATA_T  := (others => (others=> '0'));
	signal E_OUT  					: DATA_T  := (others => (others=> '0'));
	signal W_OUT  					: DATA_T  := (others => (others=> '0'));

	signal S_DATA  				: DATA_S  := (others => (others=> '0'));
	signal STATE 					: STATE_T := (others => (others=> '0'));

begin
	
----------------------------------------------------------------------------------
-- GENERATE ALL NODES
----------------------------------------------------------------------------------
	-- GENERATE ROWS
	ROW : for row in 1 to NODE_ARRAY_ROWS+2 generate
		
		-- GENERATE COLS
		COL : for col in 1 to NODE_ARRAY_COLS+2 generate
			
			-- GENERATE CORE NODES
			CORE : if row>1 and col>1 and row<NODE_ARRAY_ROWS+2 and col<NODE_ARRAY_COLS+2 generate				
				N : NODE port map (
					clk 					=> clk,
					reset 				=> reset,
					instr 				=> instr,
					node_state 			=> STATE  ( row-2 )(   col-2 ),
					n_out					=> N_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					n_in					=> S_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					s_out					=> S_OUT  ( row   )(  (col*8)+7      downto   col*8),
					s_in					=> N_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_out					=> E_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_in					=> W_OUT  ( row   )(  (col*8)+7      downto   col*8),
					w_out					=> W_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					w_in					=> E_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					step 					=> node_step,
					sr_in					=> S_DATA ( row-1 )( ((col-1)*8)+7   downto  (col-1)*8),
					sr_out				=> S_DATA ( row-1 )(  (col*8)+7      downto   col*8)
				);
			end generate CORE;
			
			-- GENERATE EDGE NODES
			EDGE : if row=1 or col=1 or row=NODE_ARRAY_ROWS+2 or col=NODE_ARRAY_COLS+2 generate
				E : NODE_EDGE port map (
					clk 					=> clk,
					reset 				=> reset,
					instr 				=> instr,
					--node_state 		=> STATE  ( row-2 )(   col-2 ),
					n_out					=> N_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					n_in					=> S_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					s_out					=> S_OUT  ( row   )(  (col*8)+7      downto   col*8),
					s_in					=> N_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_out					=> E_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_in					=> W_OUT  ( row   )(  (col*8)+7      downto   col*8),
					w_out					=> W_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					w_in					=> E_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					step 					=> node_step,
					sr_in					=> S_DATA ( row-1 )( ((col-1)*8)+7   downto  (col-1)*8),
					sr_out				=> S_DATA ( row-1 )(  (col*8)+7      downto   col*8)
				);
			end generate EDGE;
			
		end generate COL;
	end generate ROW;
	
	process (reset, STATE, S_DATA, row_sel) begin
		if (reset = '1') then
			state_out				<= '0';
			data_out					<= (others => '0');
		else
			-- Send node state
			if (STATE(0) = "000" and STATE(1) = "000" and STATE(2) = "000") then 
				state_out			<= '0';
			else
				state_out			<= '1';
			end if;

			CASE row_sel IS
				WHEN "001" => data_out <= S_DATA(1)(((NODE_ARRAY_COLS+2)*8)+7 downto (NODE_ARRAY_COLS+2)*8);
				WHEN "010" => data_out <= S_DATA(2)(((NODE_ARRAY_COLS+2)*8)+7 downto (NODE_ARRAY_COLS+2)*8);
				WHEN "011" => data_out <= S_DATA(3)(((NODE_ARRAY_COLS+2)*8)+7 downto (NODE_ARRAY_COLS+2)*8);
				WHEN "100" => data_out <= S_DATA(4)(((NODE_ARRAY_COLS+2)*8)+7 downto (NODE_ARRAY_COLS+2)*8);
				WHEN OTHERS => data_out <= S_DATA(0)(((NODE_ARRAY_COLS+2)*8)+7 downto (NODE_ARRAY_COLS+2)*8);
			END CASE;
		end if;
	end process;
	
	process (clk, data_write, row_sel, data_in)
	begin
		if rising_edge(clk) then
			-- Node data in/out
			if (data_write = '1') then
				CASE row_sel IS
					WHEN "001" => S_DATA(1)(7 downto 0) <= data_in;
					WHEN "010" => S_DATA(2)(7 downto 0) <= data_in;
					WHEN "011" => S_DATA(3)(7 downto 0) <= data_in;
					WHEN "100" => S_DATA(4)(7 downto 0) <= data_in;
					WHEN OTHERS => S_DATA(0)(7 downto 0) <= data_in;
				END CASE;
			end if;
		end if;
	end process;
	
end Behavioral;

