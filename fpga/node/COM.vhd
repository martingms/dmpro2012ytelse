----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 07:25:00 10/15/2012
-- Design Name			: FPGA NODE
-- Module Name			: COM - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: 
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.02					: Rewritten as COM module
-- 0.01					: Initial version of the I/O Controller
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity COM is
	Port (
		clk 							: in  STD_LOGIC;
		reset							: in  STD_LOGIC;
		
		com_ctrl						: in  STD_LOGIC_VECTOR (1 downto 0); -- com out control
				
		n_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		
		data0							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data1							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data2							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data3							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);

		n_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
		s_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
		e_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
		w_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0')
	);
end COM;

architecture Behavioral of COM is

begin	process (clk, reset)
	begin
		if (reset = '1') then
			n_out						<= (others => '0');
			s_out						<= (others => '0');
			e_out						<= (others => '0');
			w_out						<= (others => '0');		
		elsif rising_edge(clk) then
			if (com_ctrl = "01") then
				-- send reg data to nodes
				n_out					<= data0;
				s_out					<= data1;
				e_out					<= data2;
				w_out					<= data3;
			elsif (com_ctrl = "10") then
				-- 4 way data transfer
				n_out					<= w_in;
				s_out					<= e_in;
				e_out					<= n_in;
				w_out					<= s_in;
			end if;	
		end if;
	end process;
end Behavioral;

