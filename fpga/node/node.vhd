----------------------------------------------------------------------------------
-- Company: TDT4295, NTNU
-- Engineer: HANS KRISTIAN FLAATTEN
-- 
-- Create Date:		13:03:17 10/12/2012 
-- Design Name:		FPGA NODE
-- Module Name:		node - Behavioral 
-- Project Name:		FPGA YTELSE
-- Target Devices: 	XILINX SPARTAN 3
-- Tool versions:		ISE V11
-- Description: 
--
-- Dependencies:		WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.02:  		Added I/O Controller component
-- 0.01:  		File Created
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
	component INSTRUCTION_DECODER is
		Port (
			op_code 					: in  STD_LOGIC_VECTOR (NODE_INSTR_OP-1 downto 0);
			alu_ctrl 				: out STD_LOGIC_VECTOR (1 downto 0);
			set_state				: out STD_LOGIC;
			alu_src 					: out STD_LOGIC;
			reg_src 					: out STD_LOGIC;
			reg_out 					: out STD_LOGIC;
			reg_write				: out STD_LOGIC;		
			s_swap 					: out STD_LOGIC;			
			reg_addr_src 			: out STD_LOGIC;
			adr0 						: out STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr1 						: out STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr2 						: out STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
			adr3 						: out STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0)
		);
	end component;

	signal ctrl_alu_ctrl 		: STD_LOGIC_VECTOR (1 downto 0);
	signal ctrl_set_state		: STD_LOGIC;
	signal ctrl_alu_src 			: STD_LOGIC;
	signal ctrl_reg_src 			: STD_LOGIC;
	signal ctrl_com_out 			: STD_LOGIC;
	signal ctrl_reg_write 		: STD_LOGIC;
	signal ctrl_s_swap 			: STD_LOGIC;
	signal ctrl_reg_addr_src 	: STD_LOGIC;

	signal ctrl_reg_adr0 		: STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
	signal ctrl_reg_adr1 		: STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
	signal ctrl_reg_adr2 		: STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
	signal ctrl_reg_adr3 		: STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);	

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
	
	signal io_reg_data			: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0); -- @todo: replace	by mux output
	signal io_data0				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data1				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data2				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	signal io_data3				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
	
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
	signal sr_alu_res				: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);  -- @todo: replace by correct mux output

begin
	DECODER : INSTRUCTION_DECODER port map (
		op_code 						=> instr(NODE_IDATA_BUS-1 downto NODE_IDATA_BUS-NODE_INSTR_OP),
		alu_ctrl 					=> ctrl_alu_ctrl,
		alu_src 						=> ctrl_alu_src,
		reg_src 						=> ctrl_reg_src,
		reg_out 						=> ctrl_com_out,
		reg_write					=> ctrl_reg_write,
		s_swap 						=> ctrl_s_swap,
		reg_addr_src 				=> ctrl_reg_addr_src,
		adr0 							=> ctrl_reg_adr0,
		adr1 							=> ctrl_reg_adr1,
		adr2 							=> ctrl_reg_adr2,
		adr3 							=> ctrl_reg_adr3
	);

	IO : IO_CONTROLLER port map (
		clk 							=> clk,
		reset							=> reset,
		set_state					=> ctrl_set_state,
		reg_src						=> ctrl_reg_src,
		com_out						=> ctrl_com_out,
		reg_data						=> io_reg_data, -- @todo: replace by correct mux output
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

	S : S_REG port map (
		clk 							=> clk,
		reset							=> reset,
		swap							=> ctrl_set_state,
		step							=> ctrl_reg_src,
		s_res							=> sr_alu_res, -- @todo: replace by correct mux output
		s_in							=> sr_in,
		s_new							=> sr_new,
		s_out							=> sr_out
	);
end Behavioral;

