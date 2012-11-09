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
		row_sel 						: in  STD_LOGIC_VECTOR (1 downto 0);
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

	constant ARRAY_COLS 			: integer := 2;
	constant ARRAY_ROWS 			: integer := 2;
	type DATA_T  is array (ARRAY_ROWS+2 downto 0) of STD_LOGIC_VECTOR (((ARRAY_COLS+2)*8)+7 downto 0);
	type STATE_T is array (ARRAY_ROWS-1 downto 0) of STD_LOGIC_VECTOR   (ARRAY_COLS-1 downto 0);
		signal N_OUT  					: DATA_T  := (others => (others=> '0'));
	signal S_OUT  					: DATA_T  := (others => (others=> '0'));
	signal E_OUT  					: DATA_T  := (others => (others=> '0'));
	signal W_OUT  					: DATA_T  := (others => (others=> '0'));

	signal S_DATA  				: DATA_T  := (others => (others=> '0'));
	signal STATE 					: STATE_T := (others => (others=> '0'));
	
	signal tmp_data_in 			: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
	signal tmp_data_out 			: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');

begin
	
----------------------------------------------------------------------------------
-- GENERATE ALL NODES
----------------------------------------------------------------------------------
	-- GENERATE ROWS
	ROW : for row in 1 to ARRAY_ROWS+2 generate
		
		-- GENERATE COLS
		COL : for col in 1 to ARRAY_COLS+2 generate
			
			-- GENERATE CORE NODES
			CORE : if row>1 and col>1 and row<ARRAY_ROWS+2 and col<ARRAY_COLS+2 generate				
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
					sr_out				=> S_DATA ( row   )(  (col*8)+7      downto   col*8),
					sr_in					=> S_DATA ( row   )( ((col-1)*8)+7   downto  (col-1)*8)
				);
			end generate CORE;
			
			-- GENERATE EDGE NODES
			EDGE : if row=1 or col=1 or row=ARRAY_ROWS+2 or col=ARRAY_COLS+2 generate
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
					sr_out				=> S_DATA ( row   )(  (col*8)+7      downto   col*8),
					sr_in					=> S_DATA ( row   )( ((col-1)*8)+7   downto  (col-1)*8)
				);
			end generate EDGE;
			
		end generate COL;
	end generate ROW;
	
	process (clk, reset) begin
		if (reset = '1') then
			state_out				<= '0';
			--data_out					<= (others => '0');
		else
			-- Send node state
			if (STATE(0) = "00" and STATE(1) = "00") then 
				state_out			<= '0';
			else
				state_out			<= '1';
			end if;
			
			-- Node data in/out
			if (data_write = '1') then
				CASE row_sel IS
					WHEN  "01"  =>  S_DATA(2)(7 downto 0) <= data_in;
					WHEN  "10"  =>  S_DATA(3)(7 downto 0) <= data_in;
					WHEN  "11"  =>  S_DATA(4)(7 downto 0) <= data_in;
					WHEN OTHERS =>  S_DATA(1)(7 downto 0) <= data_in;
				END CASE;
			end if;
		end if;
		
		CASE row_sel IS
			WHEN  "01"  =>  data_out <= S_DATA(2)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
			WHEN  "10"  =>  data_out <= S_DATA(3)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
			WHEN  "11"  =>  data_out <= S_DATA(4)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
			WHEN OTHERS =>  data_out <= S_DATA(1)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
		END CASE;
	end process;
	
end Behavioral;

