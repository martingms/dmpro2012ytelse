----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 13:03:17 10/12/2012 
-- Design Name			: FPGA NODE
-- Module Name			: MUX - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: 
--
-- Dependencies		: None
--
-- Revisions
-- 0.02:  				Component modified for Dm.Pro
-- 0.01:  				File created in Data.kon
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity ALU is
	Port ( 
		alu_op						: in  STD_LOGIC_VECTOR (NODE_INSTR_FN-1 downto 0);
		op1 							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		op2 							: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		res 							: out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
	);
end ALU;

architecture Behavioral of ALU is

begin

ALU : process(alu_op, op1, op2)
	begin
		if (alu_op=NODE_INSTR_FN_SUB) then
			res						<= op1 + op2;
		else
			res						<= op1 - op2;
		end if;
	end process;
end Behavioral;