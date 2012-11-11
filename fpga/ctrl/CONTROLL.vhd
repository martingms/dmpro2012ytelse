----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 21:21:29 11/11/2012
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

entity CONTROLL is
	Port (
		clk 					: in  STD_LOGIC;
		reset 				: in  STD_LOGIC
		
		idata					: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
		iaddr					: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

		ddata					: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
		daddr					: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
		daddr_write			: out STD_LOGIC;
		
		vdata					: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
		vaddr					: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
		vaddr_write			: out STD_LOGIC;
		
		dma_ctrl				: out STD_LOGIC_VECTOR(CTRL_DMA_BUS-1 downto 0);
	);
end CONTROLL;

architecture Behavioral of CONTROLL is

begin


end Behavioral;

