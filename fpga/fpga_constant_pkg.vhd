-- Package File Template
--
-- Purpose: This package defines supplemental types, subtypes, 
-- constants, and functions 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package FPGA_CONSTANT_PKG is

	-- INSTRUCTION SET
	constant NODE_INSTR_OP			: integer	:= 4;
	constant NODE_INSTR_OP_R		: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	constant NODE_INSTR_OP_I		: STD_LOGIC_VECTOR(3 downto 0) := "0001";
	constant NODE_INSTR_OP_S		: STD_LOGIC_VECTOR(3 downto 0) := "0010";
	
	 -- NODE BUS CONSTANTS
	constant NODE_STATE_BUS			: integer	:= 2;			-- state bus from SIMD node
	constant NODE_RDATA_BUS			: integer	:= 8;			-- register data size
	constant NODE_RADDR_BUS			: integer	:= 6;			-- register address
	constant NODE_IDATA_BUS			: integer	:= 24;		-- instruction address
	constant NODE_DDATA_BUS			: integer	:= 8;			-- data bus (north, south, east, west)
	constant NODE_SDATA_BUS			: integer	:= 8;			-- s data bus (left, right)
	
	-- NODE ALU CONTROL
	-- constant NODE_ALU_
	
--    -- BUS CONSTANTS
--    constant IADDR_BUS         : integer := 32;
--    constant IDATA_BUS         : integer := 32;
--    constant DADDR_BUS         : integer := 32;
--    constant DDATA_BUS         : integer := 32;
--    constant RADDR_BUS         : integer := 5;
--
--    constant MEM_ADDR_COUNT    : integer := 8;
--
--    constant ZERO1b            : STD_LOGIC                             := '0';
--    constant ONE1b             : STD_LOGIC                             := '1';
--    constant ZERO32b           : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";
--    constant ZERO16b           : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
--    constant ONE32b            : STD_LOGIC_VECTOR(31 downto 0) := "11111111111111111111111111111111"; 
--    constant ONE16b            : STD_LOGIC_VECTOR(15 downto 0) := "1111111111111111"; 
--    
--    -- RECORDS
--    type ALU_OP_INPUT is
--    record
--        Op0							: STD_LOGIC;
--        Op1							: STD_LOGIC;
--        Op2							: STD_LOGIC;
--    end record;
--
--    type ALU_INPUT is
--    record
--        Op0							: STD_LOGIC;
--        Op1							: STD_LOGIC;
--        Op2							: STD_LOGIC;
--        Op3							: STD_LOGIC;
--    end record;
--
--    type ALU_FLAGS is
--    record
--        Carry						: STD_LOGIC;
--        Overflow					: STD_LOGIC;
--        Zero							: STD_LOGIC;
--        Negative					: STD_LOGIC;
--    end record;
--     
--    -- PROCESSOR STATE
--    type state_type is (FETCH, EXEC, STALL);
     
end FPGA_CONSTANT_PKG;