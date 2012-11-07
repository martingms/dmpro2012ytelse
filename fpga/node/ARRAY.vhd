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

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity SIMD_ARRAY is
    Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		instr 						: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
		node_step 					: in  STD_LOGIC;
		data_in 						: in  STD_LOGIC_VECTOR (7 downto 0);
		data_out0 					: out STD_LOGIC_VECTOR (7 downto 0);
		data_out1 					: out STD_LOGIC_VECTOR (7 downto 0);
		data_out2 					: out STD_LOGIC_VECTOR (7 downto 0);
		data_out3 					: out STD_LOGIC_VECTOR (7 downto 0);
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
	type DATA_T  is array (ARRAY_ROWS+3 downto 0) of STD_LOGIC_VECTOR (((ARRAY_COLS+3)*8)+7 downto 0);
	type DATA_S  is array (ARRAY_ROWS+3 downto 0) of STD_LOGIC_VECTOR (((ARRAY_COLS+3)*8)+7 downto 0);
	type STATE_T is array (ARRAY_ROWS-1 downto 0) of STD_LOGIC_VECTOR   (ARRAY_COLS-1 downto 0);
		signal N_OUT  					: DATA_T; --  := (others => (others=> '0'));
	signal S_OUT  					: DATA_T; --  := (others => (others=> '0'));
	signal E_OUT  					: DATA_T; --  := (others => (others=> '0'));
	signal W_OUT  					: DATA_T; --  := (others => (others=> '0'));

	signal S_DATA  				: DATA_S; --  := (others => (others=> '0'));
	signal STATE 					: STATE_T;--  := (others => (others=> '0'));

begin	
	S_DATA(0)(7 downto 0) <= data_in;
	S_DATA(1)(7 downto 0) <= data_in;
	S_DATA(2)(7 downto 0) <= data_in;
	S_DATA(3)(7 downto 0) <= data_in;
	
	data_out0 <= S_DATA(0)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
	data_out1 <= S_DATA(1)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
	data_out2 <= S_DATA(2)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
	data_out3 <= S_DATA(3)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8);
	
------------------------------------------------------------------------------------
----	LEFT-TOP EDGE NODE
------------------------------------------------------------------------------------
--	LEFT_TOP_NODE : NODE_EDGE port map (
--		clk 							=> clk,
--		reset 						=> reset,
--		instr 						=> instr,
--		--n_out						=> (others => '0'),
--		n_in							=> (others => '0'),
--		s_out							=> S_OUT(0)(7  downto 0),
--		s_in							=> N_OUT(1)(7  downto 0),
--		e_out							=> E_OUT(0)(7  downto 0),
--		e_in							=> W_OUT(0)(15 downto 8),
--		--w_out						=> (others => '0'),
--		w_in							=> (others => '0'),
--		step 							=> node_step,
--		sr_in							=> S_DATA(0)(7  downto 0),
--		sr_out						=> S_DATA(0)(15 downto 8)
--	);
--	
------------------------------------------------------------------------------------
---- LEFT-LOWER EDGE NODE
------------------------------------------------------------------------------------
--	LEFT_LOWER_NODE : NODE_EDGE port map (
--		clk 							=> clk,
--		reset	 						=> reset,
--		instr 						=> instr,
--		n_out							=> N_OUT(ARRAY_ROWS+1)(7   downto 0),
--		n_in							=> S_OUT(ARRAY_ROWS  )(7   downto 0),
--		--s_out						=> (others => '0'),
--		s_in							=> (others => '0'),
--		e_out							=> E_OUT(ARRAY_ROWS+1)(7   downto 0),
--		e_in							=> W_OUT(ARRAY_ROWS+1)(15  downto 8),
--		--w_out						=> (others => '0'),
--		w_in							=> (others => '0'),
--		step 							=> node_step,
--		sr_in							=> S_DATA(ARRAY_ROWS+1)(7  downto 0),
--		sr_out						=> S_DATA(ARRAY_ROWS+1)(15 downto 8)
--	);
--	
------------------------------------------------------------------------------------
---- RIGHT TOP EDGE NODE
------------------------------------------------------------------------------------
--	RIGHT_TOP_NODE : NODE_EDGE port map (
--		clk 							=> clk,
--		reset 						=> reset,
--		instr 						=> instr,
--		--n_out						=> (others => '0'),
--		n_in							=> (others => '0'),
--		s_out							=> S_OUT(0) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		s_in							=> N_OUT(1) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		--e_out						=> (others => '0'),
--		e_in							=> (others => '0'),
--		w_out							=> W_OUT(0) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		w_in							=> E_OUT(0) (((ARRAY_COLS  )*8)+7 downto (ARRAY_COLS  )*8),
--		step 							=> node_step,
--		sr_in							=> S_DATA(0)(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		sr_out						=> S_DATA(0)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8)
--	);
--
------------------------------------------------------------------------------------
---- RIGHT LOWER EDGE NODE
------------------------------------------------------------------------------------
--	   RIGHT_LOWER_NODE : NODE_EDGE port map (
--		clk 							=> clk,
--		reset 						=> reset,
--		instr 						=> instr,
--		n_out							=> N_OUT(ARRAY_ROWS+1) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		n_in							=> S_OUT(ARRAY_ROWS  ) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		--s_out						=> (others => '0'),
--		s_in							=> (others => '0'),
--		--e_out						=> (others => '0'),
--		e_in							=> (others => '0'),
--		w_out							=> W_OUT(ARRAY_ROWS+1) (((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		w_in							=> E_OUT(ARRAY_ROWS+1) (((ARRAY_COLS  )*8)+7 downto (ARRAY_COLS  )*8),
--		step 							=> node_step,
--		sr_in							=> S_DATA(ARRAY_ROWS+1)(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--		sr_out						=> S_DATA(ARRAY_ROWS+1)(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8)
--	);
--	
------------------------------------------------------------------------------------
---- GENEREATE LEFT & RIGHT EDGE NODES
------------------------------------------------------------------------------------
--	GEN_LETF_AND_RIGHT : for row in 1 to ARRAY_ROWS generate
--		
--		-- LEFT EDGE NODE
--		GEN_LEFT_NODE : NODE_EDGE port map (
--			clk 						=> clk,
--			reset 					=> reset,
--			instr 					=> instr,
--			n_out						=> N_OUT(row  )(7  downto 0),
--			n_in						=> S_OUT(row-1)(7  downto 0),
--			s_out						=> S_OUT(row  )(7  downto 0),
--			s_in						=> N_OUT(row+1)(7  downto 0),
--			e_out						=> E_OUT(row  )(7  downto 0),
--			e_in						=> W_OUT(row  )(15 downto 8),
--			--w_out					=> (others => '0'),
--			w_in						=> (others => '0'),
--			step 						=> node_step,
--			sr_in						=> S_DATA(row )(7  downto 0),
--			sr_out					=> S_DATA(row )(15 downto 8)
--		);
--	
--		-- RIGHT EDGE NODE
--		GEN_RIGHT_NODE : NODE_EDGE port map (
--			clk 						=> clk,
--			reset 					=> reset,
--			instr 					=> instr,
--			n_out						=> N_OUT(row  )(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--			n_in						=> S_OUT(row-1)(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--			s_out						=> S_OUT(row  )(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--			s_in						=> N_OUT(row+1)(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--			--e_out					=> (others => '0'),
--			e_in						=> (others => '0'),
--			w_out						=> W_OUT(row  )(((ARRAY_COLS+1)*8)+7 downto (ARRAY_COLS+1)*8),
--			w_in						=> E_OUT(row  )( (ARRAY_COLS*8)+7    downto  ARRAY_COLS*8),
--			step 						=> node_step,
--			sr_in						=> S_DATA(row )( (ARRAY_COLS+1*8)+7  downto  ARRAY_COLS+1*8),
--			sr_out					=> S_DATA(row )(((ARRAY_COLS+2)*8)+7 downto (ARRAY_COLS+2)*8)
--		);	
--		
--	end generate GEN_LETF_AND_RIGHT;
--
------------------------------------------------------------------------------------
---- GENEREATE TOP & LOWER EDGE NODES
------------------------------------------------------------------------------------
--	GEN_TOP_AND_LOWER : for col in 1 to ARRAY_COLS generate
--		
--		-- LEFT TOP NODE
--		GEN_TOP_NODE : NODE_EDGE port map (
--			clk 						=> clk,
--			reset 					=> reset,
--			instr 					=> instr,
--			--n_out					=> (others => '0'),
--			n_in						=> (others => '0'),
--			s_out						=> S_OUT(0)           (  (col*8)+7    downto  col*8),
--			s_in						=> N_OUT(1)           (  (col*8)+7    downto  col*8),
--			e_out						=> E_OUT(0)           (  (col*8)+7    downto  col*8),
--			e_in						=> W_OUT(0)           ( ((col+1)*8)+7 downto (col+1)*8),
--			w_out						=> W_OUT(0)           (  (col*8)+7    downto  col*8),
--			w_in						=> E_OUT(0)           ( ((col-1)*8)+7 downto (col-1)*8),
--			step 						=> node_step,
--			sr_in						=> S_DATA(0)          ( ((col+1)*8)+7 downto (col+1)*8),
--			sr_out					=> S_DATA(0)          ( ((col+2)*8)+7 downto (col+2)*8)
--		);
--	
--		-- RIGHT LOWER NODE
--		GEN_LOWER_NODE : NODE_EDGE port map (
--			clk 						=> clk,
--			reset 					=> reset,
--			instr 					=> instr,
--			n_out						=> N_OUT(ARRAY_ROWS+1)(  (col*8)+7    downto  col*8),
--			n_in						=> S_OUT(ARRAY_ROWS)  (  (col*8)+7    downto  col*8),
--			--s_out					=> (others => '0'),
--			s_in						=> (others => '0'),
--			e_out						=> E_OUT(ARRAY_ROWS+1)(  (col*8)+7    downto  col*8),
--			e_in						=> W_OUT(ARRAY_ROWS+1)( ((col+1)*8)+7 downto (col+1)*8),
--			w_out						=> W_OUT(ARRAY_ROWS+1)(  (col*8)+7    downto  col*8),
--			w_in						=> E_OUT(ARRAY_ROWS+1)( ((col-1)*8)+7 downto (col-1)*8),
--			step 						=> node_step,
--			sr_in						=> S_DATA(ARRAY_ROWS+1)(((col+1)*8)+7 downto (col+1)*8),
--			sr_out					=> S_DATA(ARRAY_ROWS+1)(((col+2)*8)+7 downto (col+2)*8)
--		);
--		
--	end generate GEN_TOP_AND_LOWER;
	
----------------------------------------------------------------------------------
-- GENERATE ALL NODES
----------------------------------------------------------------------------------
	-- GENERATE ALL ROWS
	GEN_ROW : for row in 1 to ARRAY_ROWS+2 generate
		
		-- GENERATE ALL COLS
		GEN_COL : for col in 1 to ARRAY_COLS+2 generate
			
			-- GENERATE CORE NODES
			GEN_CORE : if row>1 and col>1 and row<ARRAY_ROWS+2 and col<ARRAY_COLS+2 generate				
				CORE_NODE : NODE port map (
					clk 					=> clk,
					reset 				=> reset,
					instr 				=> instr,
					node_state 			=> STATE  ( row-2 )(   col-2 ),
					n_out					=> N_OUT  ( row   )(  (col*8)+7      downto   col*8),
					n_in					=> S_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					s_out					=> S_OUT  ( row   )(  (col*8)+7      downto   col*8),
					s_in					=> N_OUT  ( row+1 )(  (col*8)+7      downto   col*8),
					e_out					=> E_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_in					=> W_OUT  ( row   )( ((col+1)*8)+7   downto  (col+1)*8),
					w_out					=> W_OUT  ( row   )(  (col*8)+7      downto   col*8),
					w_in					=> E_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					step 					=> node_step,
					sr_out				=> S_DATA ( row   )(  (col*8)+7      downto   col*8),
					sr_in					=> S_DATA ( row   )( ((col-1)*8)+7   downto  (col-1)*8)
				);
			end generate GEN_CORE;
			
			-- GENERATE EDGE NODES
			GEN_EDGE : if row=1 or col=1 or row=ARRAY_ROWS+2 or col=ARRAY_COLS+2 generate
				EDGE_NODE : NODE_EDGE port map (
					clk 					=> clk,
					reset 				=> reset,
					instr 				=> instr,
					--node_state 		=> STATE  ( row   )(   col-1 ),
					n_out					=> N_OUT  ( row   )(  (col*8)+7      downto   col*8),
					n_in					=> S_OUT  ( row-1 )(  (col*8)+7      downto   col*8),
					s_out					=> S_OUT  ( row   )(  (col*8)+7      downto   col*8),
					s_in					=> N_OUT  ( row+1 )(  (col*8)+7      downto   col*8),
					e_out					=> E_OUT  ( row   )(  (col*8)+7      downto   col*8),
					e_in					=> W_OUT  ( row   )( ((col+1)*8)+7   downto  (col+1)*8),
					w_out					=> W_OUT  ( row   )(  (col*8)+7      downto   col*8),
					w_in					=> E_OUT  ( row   )( ((col-1)*8)+7   downto  (col-1)*8),
					step 					=> node_step,
					sr_out				=> S_DATA ( row   )(  (col*8)+7      downto   col*8),
					sr_in					=> S_DATA ( row   )( ((col-1)*8)+7   downto  (col-1)*8)
				);
			end generate GEN_EDGE;
			
		end generate GEN_COL;
	end generate GEN_ROW;
	
	process (clk, reset) begin
		if (reset = '1') then
			state_out				<= '0';
		elsif rising_edge(clk) then
			if (STATE(0) = "00" and STATE(1) = "00") then 
				state_out			<= '0';
			else
				state_out			<= '1';
			end if;
		end if;
	end process;
	
end Behavioral;

