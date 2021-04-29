library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic(N : positive := 6);
	port(clk     : in  std_logic;
		  start   : in  std_logic;
		  reset   : in  std_logic;
		  enable  : in  std_logic;
		  timerOut: out std_logic);
end TimerN;

architecture Behavioral of TimerN is
	signal s_count : unsigned(31 downto 0);
begin
	process(clk)
	begin
		   if(rising_edge(clk))then		
			if(reset = '1')then
				timerOut <= '0';
				s_count <= (others => '0');
			else 
			   if (enable = '1') then
						if((start = '1') and (s_count = 0))then
							s_count <= s_count + 1;
							timerOut <= '1';
			   elsif (s_count = N ) then
				    s_count <= ( others => '0');
						timerOut <= '0';
						
					else 
						timerOut <= '1';
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;