----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 13:03:17 10/12/2012 
-- Design Name			: FPGA NODE
-- Module Name			: node - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			:
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.02:  				Added I/O Controller component
-- 0.01:  				File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity node is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		instr 						: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
		node_state 					: out STD_LOGIC;
		
		n_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);

		n_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		
		-- SDATA
		step 							: in  STD_LOGIC;
		sr_in							: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
		sr_out						: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
	);
end node;

architecture Behavioral of node is
----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	component INSTRUCTION_DECODER is
		Port (
			disable					: in  STD_LOGIC;
			mask						: in  STD_LOGIC;
			op_code 					: in  STD_LOGIC_VECTOR (NODE_INSTR_OP-1 downto 0);
			r0 						: in  STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			state						: in  STD_LOGIC;
			alu_const				: out STD_LOGIC;
			reg_write				: out STD_LOGIC_VECTOR (1 downto 0);
			set_state				: out STD_LOGIC;
			com_in					: out STD_LOGIC;
			s_swap 					: out STD_LOGIC;
			com						: out STD_LOGIC_VECTOR (1 downto 0)
		);
	end component;

	signal ctrl_alu_const		: STD_LOGIC;
	signal ctrl_reg_write		: STD_LOGIC_VECTOR (1 downto 0);
	signal ctrl_set_state		: STD_LOGIC;
	signal ctrl_com_in			: STD_LOGIC;
	signal ctrl_s_swap 			: STD_LOGIC;
	signal ctrl_com				: STD_LOGIC_VECTOR (1 downto 0);

----------------------------------------------------------------------------------
--	STATE REGISTER
----------------------------------------------------------------------------------
	component STATE_REG is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;
			set_state				: in  STD_LOGIC;
			new_state				: in  STD_LOGIC;
			state_out 				: out STD_LOGIC
		);
	end component;

	signal state_out				: STD_LOGIC;
----------------------------------------------------------------------------------
--	COMMUNICATION OUT
----------------------------------------------------------------------------------
	component COM is
		Port (
			clk 						: in  STD_LOGIC;
			reset						: in  STD_LOGIC;
			com_ctrl					: in  STD_LOGIC_VECTOR (1 downto 0); -- com out control
			n_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_in						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);			
			data0						: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1						: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2						: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data3						: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			n_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_out						: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)
		);
	end component;

----------------------------------------------------------------------------------
--	REGISTER BANK
----------------------------------------------------------------------------------
	component REGISTER_BANK is
		Port(
			clk 						:	in	 STD_LOGIC;
			reset						:	in	 STD_LOGIC;
			write						:	in	 STD_LOGIC_VECTOR (1 downto 0);
			adr0 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr1 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr2 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr3						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			data0_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data3_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data0_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data3_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
		);
	end component;
	
	signal reg_data0_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal reg_data1_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal reg_data2_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal reg_data3_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	
----------------------------------------------------------------------------------
--	ALU
----------------------------------------------------------------------------------
	component ALU is
		Port ( 
			alu_op					: in  STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);
			op1 						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			op2 						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			res 						: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;

	signal alu_res					: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
	
----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	component S_REG is
		Port (
			clk 						: in  STD_LOGIC;
			reset						: in  STD_LOGIC;
			s_swap 					: in  STD_LOGIC;
			s_step 					: in  STD_LOGIC;
			s_res 					: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_in 						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_new 					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_out 					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;

	signal sr_new					: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);

----------------------------------------------------------------------------------
--	MULTIPLEXOR
----------------------------------------------------------------------------------
	component MUX is
		Port ( 
			selector					: in  STD_LOGIC;
			bus_in0 					: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			bus_in1 					: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			bus_out 					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;

	signal alu_op2					: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
	signal reg_data				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal reg_data0				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);

begin
----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	CTRL : INSTRUCTION_DECODER port map (
		disable 						=> instr(23),
		mask 							=> instr(22),
		op_code 						=> instr(21 downto 19),
		r0 							=> instr(18 downto 15),
		state							=> state_out,
		alu_const 					=> ctrl_alu_const,
		reg_write					=> ctrl_reg_write,
		set_state 					=> ctrl_set_state,
		com_in 						=> ctrl_com_in,
		s_swap 						=> ctrl_s_swap,
		com 							=> ctrl_com
	);

----------------------------------------------------------------------------------
--	STATE REGISTER
----------------------------------------------------------------------------------
	ST_R : STATE_REG port map (
		clk 							=> clk,
		reset 						=> reset,
		set_state					=> ctrl_set_state,
		new_state					=> reg_data0(0),
		state_out 					=> state_out
	);
	
----------------------------------------------------------------------------------
--	COMUNICATION OUT
----------------------------------------------------------------------------------
	CMO : COM port map (
		clk 							=> clk,
		reset							=> reset,
		com_ctrl						=> ctrl_com,
		n_in							=> n_in,
		s_in							=> s_in,
		e_in							=> e_in,
		w_in							=> w_in,
		data0							=> reg_data0_out,
		data1							=> reg_data1_out,
		data2							=> reg_data2_out,
		data3							=> reg_data3_out,
		n_out							=> n_out,
		s_out							=> s_out,
		e_out							=> e_out,
		w_out							=> w_out
	);

----------------------------------------------------------------------------------
--	REGISTER BANK
----------------------------------------------------------------------------------
	REGS : REGISTER_BANK port map (
		clk 							=> clk,
		reset							=> reset,
		write							=> ctrl_reg_write,
		adr0 							=> instr(18 downto 15),
		adr1 							=> instr(14 downto 11),
		adr2 							=> instr(10 downto 7),
		adr3							=> instr(6 downto 3),
		data0_in						=> reg_data0,
		data1_in						=> s_in,
		data2_in						=> e_in,
		data3_in						=> w_in,
		data0_out					=> reg_data0_out,
		data1_out					=> reg_data1_out,
		data2_out					=> reg_data2_out,
		data3_out					=> reg_data3_out
	);

----------------------------------------------------------------------------------
--	ALU
----------------------------------------------------------------------------------	
	AUL : ALU port map ( 
		alu_op						=> instr(2 downto 0), 
		op1 							=> reg_data1_out, 
		op2 							=> alu_op2, 
		res 							=> alu_res
	);
----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	S_R : S_REG port map (
		clk 							=> clk,
		reset							=> reset,
		s_swap						=> ctrl_s_swap,
		s_step						=> step,
		s_res							=> alu_res,
		s_in							=> sr_in,
		s_new							=> sr_new,
		s_out							=> sr_out
	);

----------------------------------------------------------------------------------
--	MULTIPLEXORS
----------------------------------------------------------------------------------
	MUX_ALU : MUX port map ( 
		selector						=> ctrl_alu_const,
		bus_in0 						=> reg_data2_out,
		bus_in1 						=> instr(10 downto 3),
		bus_out 						=> alu_op2
	);

	MUX_S : MUX port map ( 
		selector						=> ctrl_s_swap,
		bus_in0 						=> alu_res,
		bus_in1 						=> sr_new,
		bus_out 						=> reg_data
	);

	MUX_N : MUX port map ( 
		selector						=> ctrl_com_in,
		bus_in0 						=> reg_data,
		bus_in1 						=> n_in,
		bus_out 						=> reg_data0
	);
----------------------------------------------------------------------------------
-- START PROCESS
----------------------------------------------------------------------------------
	process (clk, reset)
	begin
		if (reset = '1') then
			node_state				<= '0';
--			n_out						<= '0';
--			s_out						<= '0';
--			e_out						<= '0';
--			w_out						<= '0';
--			sr_out					<= '0';
		elsif rising_edge(clk) then
			node_state				<= state_out;
		end if;
	end process;
	
end Behavioral;