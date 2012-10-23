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
		state 						: out STD_LOGIC_VECTOR (1 downto 0);
		
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
			op_code 					: in  STD_LOGIC_VECTOR (NODE_INSTR_OP-1 downto 0);
			alu_ctrl 				: out STD_LOGIC_VECTOR (1 downto 0);
			set_state				: out STD_LOGIC;
			alu_const 				: out STD_LOGIC;
			reg_src 					: out STD_LOGIC;
			reg_out 					: out STD_LOGIC;
			reg_write				: out STD_LOGIC_VECTOR (1 downto 0);		
			s_swap 					: out STD_LOGIC
		);
	end component;

	signal ctrl_alu_ctrl 		: STD_LOGIC_VECTOR (1 downto 0);
	signal ctrl_set_state		: STD_LOGIC;
	signal ctrl_alu_const 		: STD_LOGIC;
	signal ctrl_reg_src 			: STD_LOGIC;
	signal ctrl_com_out 			: STD_LOGIC;
	signal ctrl_reg_write		: STD_LOGIC_VECTOR (1 downto 0);
	signal ctrl_s_swap 			: STD_LOGIC;

----------------------------------------------------------------------------------
--	I/O CONTROLLER
----------------------------------------------------------------------------------
	component IO_CONTROLLER is
		Port (
			clk 						: in   STD_LOGIC;
			reset						: in   STD_LOGIC;
			set_state				: in   STD_LOGIC;
			reg_src					: in   STD_LOGIC;
			com_out					: in   STD_LOGIC;			
			reg_data					: in   STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);		
			n_in						: in   STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_in						: in   STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_in						: in   STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_in						: in   STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);		
			n_out						: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			s_out						: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			e_out						: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			w_out						: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			state						: out  STD_LOGIC_VECTOR (1 downto 0);
			data0						: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1						: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2						: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data3						: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
		);
	end component;
	
	signal io_data0				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data1				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data2				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data3				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);

----------------------------------------------------------------------------------
--	REGISTER BANK
----------------------------------------------------------------------------------
	component REGISTER_BANK is
		port(
			clk 						:	in	 STD_LOGIC;
			reset						:	in	 STD_LOGIC;
			reg_write				:	in	 STD_LOGIC_VECTOR (1 downto 0);
			adr0 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr1 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr2 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr3						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			data0_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data3_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data1_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
			data2_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
		);
	end component;
	
	signal reg_data1_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal reg_data2_out			:	STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	
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
	
	component ALU_CONTROLL is
		Port (
			alu_ctrl 				: in  STD_LOGIC_VECTOR (1 downto 0);
			alu_funct 				: in  STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);
			alu_op 					: out STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0)
		);
	end component;

	signal alu_op					: STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);

----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	component S_REG is
		Port (
			clk 						: in  STD_LOGIC;
			reset						: in  STD_LOGIC;
			swap 						: in  STD_LOGIC;
			step 						: in  STD_LOGIC;
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

begin
----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	DECODER : INSTRUCTION_DECODER port map (
		op_code 						=> instr(21 downto 19),
		alu_ctrl 					=> ctrl_alu_ctrl,
		set_state					=> ctrl_set_state,
		alu_const 					=> ctrl_alu_const,
		reg_src 						=> ctrl_reg_src,
		reg_out 						=> ctrl_com_out,
		reg_write					=> ctrl_reg_write,
		s_swap 						=> ctrl_s_swap
	);

----------------------------------------------------------------------------------
--	I/O CONTROLLER
----------------------------------------------------------------------------------
	IO : IO_CONTROLLER port map (
		clk 							=> clk,
		reset							=> reset,
		set_state					=> ctrl_set_state,
		reg_src						=> ctrl_reg_src,
		com_out						=> ctrl_com_out,
		reg_data						=> reg_data,
		n_in							=> n_in,
		s_in							=> s_in,
		e_in							=> e_in,
		w_in							=> w_in,
		n_out							=> n_out,
		s_out							=> s_out,
		e_out							=> e_out,
		w_out							=> w_out,
		state							=> state,
		data0							=> io_data0,
		data1							=> io_data1,
		data2							=> io_data2,
		data3							=> io_data3
	);

----------------------------------------------------------------------------------
--	REGISTER BANK
----------------------------------------------------------------------------------
	REG : REGISTER_BANK port map (
		clk 							=> clk,
		reset							=> reset,
		reg_write					=> ctrl_reg_write,
		adr0 							=> instr(18 downto 15),
		adr1 							=> instr(14 downto 11),
		adr2 							=> instr(10 downto 7),
		adr3							=> instr(6 downto 3),
		data0_in						=> io_data0,
		data1_in						=> io_data1,
		data2_in						=> io_data2,
		data3_in						=> io_data3,
		data1_out					=> reg_data1_out,
		data2_out					=> reg_data2_out
	);

----------------------------------------------------------------------------------
--	ALU
----------------------------------------------------------------------------------
	AUL : ALU port map ( 
		alu_op						=> alu_op, 
		op1 							=> reg_data1_out, 
		op2 							=> alu_op2, 
		res 							=> alu_res
	);

	ALU_CTRL : ALU_CONTROLL port map (
		alu_ctrl 					=> ctrl_alu_ctrl,
		alu_funct 					=> instr(2 downto 0),
		alu_op 						=> alu_op
	);
----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	S : S_REG port map (
		clk 							=> clk,
		reset							=> reset,
		swap							=> ctrl_s_swap,
		step							=> step,
		s_res							=> alu_res,
		s_in							=> sr_in,
		s_new							=> sr_new,
		s_out							=> sr_out
	);

----------------------------------------------------------------------------------
--	MULTIPLEXORS
----------------------------------------------------------------------------------
	MUX_ALU_IN : MUX port map ( 
		selector						=> ctrl_alu_const,
		bus_in0 						=> reg_data2_out,
		bus_in1 						=> instr(10 downto 3),
		bus_out 						=> alu_op2
	);

	MUX_REG_IN : MUX port map ( 
		selector						=> ctrl_s_swap,
		bus_in0 						=> alu_res,
		bus_in1 						=> sr_new,
		bus_out 						=> reg_data
	);

----------------------------------------------------------------------------------
-- START PROCESS
----------------------------------------------------------------------------------

end Behavioral;