library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Rom_16_8 is 
    port (address: in std_logic_vector(3 downto 0);
	       dataOut: out std_logic_vector(7 downto 0)); 
end Rom_16_8;

architecture Behavioral of ROM_16_8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := ("00000000", "00000001", "00000010", "00000100",
										 "00001000", "00001111", "00001010", "00000101",
										 
										 "00010000", "00010001", "00010010", "00010100",
										 "00011000", "00011111", "00011010", "00010101");

	FreqDivider : entity work.FreqDivider(Behavioral)
	port map(clkIn => s_clk,
				k => s_k,
				clkOut => s_address);
	memory : entity work.ROM_16_84(Behavioral)
	port map(address => s_address,
				dataOut => s_romData);

	
begin
	dataOut <= c_memory(to_integer(unsigned(address)));
end Behavioral;		 