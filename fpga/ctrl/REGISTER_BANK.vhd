----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 21:21:29 11/11/2012
-- Design Name			: FPGA CONTROL
-- Module Name			: CTRL REGISTER - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: REGISTER FOR CONTROL CORE
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01					: First created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity CTRL_REGISTER is
	Port(
		clk 						:	in	 STD_LOGIC;
		reset						:	in	 STD_LOGIC;
		
		write						:	in	 STD_LOGIC;
		
		adr0 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		adr1 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		adr2 						:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		
		data0_in					:	in	 STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		
		data1_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		data2_out				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);

		dma_params				:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		vga_addr					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0);
		vga_data					:	out STD_LOGIC_VECTOR (CTRL_WORD_WIDTH-1 downto 0)
	);
end CTRL_REGISTER;

architecture Behavioral of CTRL_REGISTER is

	constant ZERO_ADDR: STD_LOGIC_VECTOR(NODE_RADDR_BUS-1 downto 0) := (others => '0');
	constant NUM_REG : integer := 2 ** NODE_RADDR_BUS;
	
	type REGS_T is array (NUM_REG-1 downto 0) of STD_LOGIC_VECTOR(NODE_RDATA_BUS-1 downto 0);
	signal REGS : REGS_T := (others => (others =>'0'));

begin

	REGISTERS : process(clk, reset, write)
	begin
		if reset='1' then
			for i in 0 to NUM_REG-1 loop
				REGS(i) <= (others => '0');
			end loop;
		elsif rising_edge(CLK) then
			if write='1' then
				REGS(to_integer(unsigned(adr0)))<=data0_in;
			end if;
		end if;
	end process REGISTERS;

	data1_out 	<= (others=>'0') when adr1=ZERO_ADDR else REGS(to_integer(unsigned(adr1)));
	data2_out 	<= (others=>'0') when adr2=ZERO_ADDR else REGS(to_integer(unsigned(adr2)));

	vga_addr 	<= REGS(13);
	vga_data		<= REGS(14);
	dma_params 	<= REGS(15);

end Behavioral;