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
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
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
		
		instr 						: in  STD_LOGIC_VECTOR (IDATA_BUS-1 downto 0);
		state 						: out STD_LOGIC_VECTOR (1 downto 0);
		
		-- SDATA
		step 							: in  STD_LOGIC;
		s_in							: in  STD_LOGIC_VECTOR (SDATA_BUS-1 downto 0);
		s_out							: out STD_LOGIC_VECTOR (SDATA_BUS-1 downto 0)
	);
end node;

architecture Behavioral of node is
	component INSTRUCTION_DECODER is
		Port (
			clk 						: in  STD_LOGIC;
			reset 					: in  STD_LOGIC;			
			op_code 					: in  STD_LOGIC_VECTOR (NODE_OP_CODE-1 downto 0);
			alu_ctrl 				: out STD_LOGIC_VECTOR (1 downto 0);
			alu_src 					: out STD_LOGIC;
			reg_src 					: out STD_LOGIC;
			com_out 					: out STD_LOGIC;
			reg_write				: out STD_LOGIC;		
			s_swap 					: out STD_LOGIC;			
			reg_addr_src 			: out STD_LOGIC;
			adr0 						: out STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
			adr1 						: out STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
			adr2 						: out STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
			adr3 						: out STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0)
		);
	end component;
	
	signal ctrl_alu_ctrl 		: STD_LOGIC;
	signal ctrl_alu_src 			: STD_LOGIC;
	signal ctrl_reg_src 			: STD_LOGIC;
	signal ctrl_com_out 			: STD_LOGIC;
	signal ctrl_reg_write 		: STD_LOGIC;
	signal ctrl_s_swap 			: STD_LOGIC;
	signal ctrl_reg_addr_src 	: STD_LOGIC;

	signal ctrl_reg_adr0 		: STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
	signal ctrl_reg_adr1 		: STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
	signal ctrl_reg_adr2 		: STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);
	signal ctrl_reg_adr3 		: STD_LOGIC_VECTOR (NODE_REG_ADDR-1 downto 0);

begin
	DECODER : INSTRUCTION_DECODER port map (
		clk 							<= clk,
		reset 						<= reset,
		op_code 						<= instr(IDATA_BUS-1 downto IDATA_BUS-3),
		
		alu_ctrl 					<= ctrl_alu_ctrl,
		alu_src 						<= ctrl_alu_src,
		reg_src 						<= ctrl_reg_src,
		com_out 						<= ctrl_com_out,
		reg_write					<= ctrl_reg_write,
		s_swap 						<= ctrl_s_swap,
		reg_addr_src 				<= ctrl_reg_addr_src,
		adr0 							<= ctrl_reg_adr0,
		adr1 							<= ctrl_reg_adr1,
		adr2 							<= ctrl_reg_adr2,
		adr3 							<= ctrl_reg_adr3
	);


end Behavioral;

