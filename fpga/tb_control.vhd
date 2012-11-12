-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

  ENTITY tb_control IS
  END tb_control;

  ARCHITECTURE behavior OF tb_control IS 

  -- Component Declaration
          COMPONENT CONTROLL is
					Port (
						clk 							: in  STD_LOGIC;
						reset 						: in  STD_LOGIC;
						
						state							: in STD_LOGIC; -- simd array state
						
						idata							: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
						iaddr							: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

						ddata							: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
						daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
						--daddr_write				: out STD_LOGIC;
						
						vdata							: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
						vaddr							: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
						--vaddr_write				: out STD_LOGIC;
						
						dma_cmd						: out STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
						dma_params					: out STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0)
					);
				end COMPONENT;


	signal clk 							:   STD_LOGIC;
	signal reset 						:   STD_LOGIC;
	
	signal state							: STD_LOGIC; -- simd array state
	
	signal idata							:  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
	signal iaddr							:  STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

	signal ddata							:  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
	signal daddr							:  STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
	
	signal vdata							:  STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
	signal vaddr							:  STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
	
	signal dma_cmd						:  STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
	signal dma_params					:  STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;          

  BEGIN

  -- Component Instantiation
          uut: CONTROLL PORT MAP(
					clk 				=>				clk 				,
					reset 			=>				reset 			,
														
					state				=>			   state			,
														
					idata				=>			   idata			,
					iaddr				=>			   iaddr			,
														
					ddata				=>			   ddata			,
					daddr				=>			   daddr			,
														
					vdata				=>			   vdata			,
					vaddr				=>			   vaddr			,
														
					dma_cmd			=>				dma_cmd			,
					dma_params		=>				dma_params		
				
				
          );


   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		idata <= "100011101110100000001000";
      wait;
   end process;

  END;
