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
		case alu_op is
			-- when NODE_INSTR_FN_ADD	=> res <= op1 + op2;
			when NODE_INSTR_FN_SUB	=> res <= op1 - op2;
			when NODE_INSTR_FN_AND	=> res <= op1 and op2;
			when NODE_INSTR_FN_OR	=> res <= op1 or op2;
			when NODE_INSTR_FN_SLT	=> if (op1 < op2) then res <= "00000001"; else res <= (others => '0'); end if;
			when NODE_INSTR_FN_EQ	=> if (op1 = op2) then res <= "00000001"; else res <= (others => '0'); end if;
			when NODE_INSTR_FN_SLL	=> res <= op1(NODE_RDATA_BUS-2 downto 0) & '0'; 
			when NODE_INSTR_FN_SRL	=> res <= '0' & op1(NODE_RDATA_BUS-1 downto 1);
			when others 				=> res <= op1 + op2;
		end case;
	end process;
end Behavioral;