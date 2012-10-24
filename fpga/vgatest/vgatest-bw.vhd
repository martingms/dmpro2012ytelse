----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:24 09/19/2012 
-- Design Name: 
-- Module Name:    vgatest - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
library work;
use work.pixelutil.all;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vgatest is
   generic (
      hRez       : natural := 640;	
      hStartSync : natural := 656;
      hEndSync   : natural := 752;
      hMaxCount  : natural := 800;
      hsyncActive : std_logic := '0';
		
      vRez       : natural := 480;
      vStartSync : natural := 490;
      vEndSync   : natural := 492;
      vMaxCount  : natural := 525;
      vsyncActive : std_logic := '0'
   );

    Port ( pixelClock : in  STD_LOGIC;
           Greytone   : out STD_LOGIC_VECTOR (7 downto 0);
           --Red        : out STD_LOGIC_VECTOR (4 downto 0);
           --Green      : out STD_LOGIC_VECTOR (4 downto 0);
           --Blue       : out STD_LOGIC_VECTOR (4 downto 0);
           hSync      : out STD_LOGIC;
           vSync      : out STD_LOGIC;
           blank      : out STD_LOGIC);
end vgatest;

architecture Behavioral of vgatest is

   type reg is record
      hCounter : std_logic_vector(11 downto 0);
      vCounter : std_logic_vector(11 downto 0);

		greytone : std_logic_vector(7 downto 0);
      --red      : std_logic_vector(4 downto 0);
      --green    : std_logic_vector(4 downto 0);
      --blue     : std_logic_vector(4 downto 0);

      hSync    : std_logic;
      vSync    : std_logic;
      blank    : std_logic;		
   end record;

   signal r : reg := ((others=>'0'), (others=>'0'),
                      (others=>'0'), --(others=>'0'), (others=>'0'), 
                      '0', '0', '0');
   signal n : reg;

	signal count : integer;
begin
   -- Assign the outputs
   hSync <= r.hSync;
   vSync <= r.vSync;
	Greytone <= r.greytone;
   --Red   <= r.red;
   --Green <= r.green;
   --Blue  <= r.blue;
   blank <= r.blank;
   
   process(r,n)
   begin
      n <= r;
      n.hSync <= not hSyncActive;      
      n.vSync <= not vSyncActive;      

      -- Count the lines and rows      
      if r.hCounter = hMaxCount-1 then
         n.hCounter <= (others => '0');
         if r.vCounter = vMaxCount-1 then
            n.vCounter <= (others => '0');
         else
            n.vCounter <= r.vCounter+1;
         end if;
      else
         n.hCounter <= r.hCounter+1;
      end if;

      if r.hCounter  < hRez and r.vCounter  < vRez then
		   n.greytone <= (others => '1');
         --n.red   <= n.hCounter(2 downto 0) & n.hCounter(2 downto 1);
         --n.green <= n.hCounter(4 downto 0);
         --n.blue  <= n.vCounter(4 downto 0);
         n.blank <= '0';
      else
			n.greytone <= (others => '0');
         --n.red   <= (others => '0');
         --n.green <= (others => '0');
         --n.blue  <= (others => '0');
         n.blank <= '1';
      end if;
      
      -- Are we in the hSync pulse?
      if r.hCounter >= hStartSync and r.hCounter < hEndSync then
         n.hSync <= hSyncActive;
      end if;

      -- Are we in the vSync pulse?
      if r.vCounter >= vStartSync and r.vCounter < vEndSync then
         n.vSync <= vSyncActive; 
      end if;
   end process;

   process(pixelClock,n,count)
   begin
      if rising_edge(pixelClock) then
		    r <= n;
      end if;
   end process;
end Behavioral;

