library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM is
   generic ( N : positive := 8);
	port(writeClk : in std_logic;
		  wE : in std_logic;
		  wD : in std_logic_vector((N-1) downto 0);
		  Addr : in std_logic_vector((N-1) downto 0);
		  RD : out std_logic_vector((N-1) downto 0));
end RAM;

architecture Behavioral of RAM is
	constant NUM_WORDS : integer := 256;
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	constant s_memory: TMemory := ( X"02" , X"01" , others => X"00");
	
	signal c_memory : TMemory;
	begin
		process(writeClk)
			begin
				if (rising_edge(writeClk)) then
					if (WE = '1') then
						c_memory(to_integer(unsigned(Addr))) <= WD;
					end if;
				end if;
		end process;
		RD <= c_memory(to_integer(unsigned(Addr)));
end Behavioral;