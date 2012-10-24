library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

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

	component memctrl is
		Port (
				clk : in std_logic;
				x_coord : in std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
				y_coord : in std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
				pixel : out std_logic_vector(7 downto 0)
				);
	end component memctrl;

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
	
	signal x_next : std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
	signal y_next : std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
	signal pixel_next : std_logic_vector(7 downto 0);
	signal pixel_curr : std_logic_vector(7 downto 0);
	
begin

	MEM_CTRL : memctrl
		Port map (
				clk => pixelClock,
				x_coord => x_next,
				y_coord => y_next,
				pixel => pixel_next
		);

   -- Assign the outputs
   hSync <= r.hSync;
   vSync <= r.vSync;
	Greytone <= r.greytone;
   --Red   <= r.red;
   --Green <= r.green;
   --Blue  <= r.blue;
   blank <= r.blank;
	
	process(pixel_next)
	begin
		pixel_curr <= pixel_next;
--		x_next <= conv_std_logic_vector(conv_integer(unsigned(r.vCounter))/8, 9);
--		y_next <= conv_std_logic_vector(conv_integer(unsigned(r.hCounter))/8, 8);
		x_next <= r.hCounter(9 downto 0);
		y_next <= r.vCounter(8 downto 0);
	end process;
   
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

			n.greytone <= pixel_curr;

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
	
	process (pixelClock, n)
	begin
		if rising_edge(pixelClock) then
			r <= n;
			
--			pixel_curr <= pixel_next;
--			x_next <= r.hCounter(9 downto 0);
--			y_next <= r.vCounter(8 downto 0);
		end if;
	end process;
end Behavioral;

