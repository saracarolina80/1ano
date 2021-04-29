library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Registers is			      -- number of registers is fixed to 8
	generic (N 		: positive := 8);  -- size of each register 
	port(	clk 	: in std_logic;
			reset	: in std_logic;
			RA1, RA2	: in std_logic_vector(2 downto 0);	-- read addresses
			WA	: in std_logic_vector(2 downto 0);	-- write address
			WD	: in std_logic_vector(N-1 downto 0);	-- write data
			WE	 : in std_logic;							-- write enable
			RD1, RD2	: out std_logic_vector(N-1 downto 0));-- read data
end Registers;

architecture Behavioral of Registers is 

  signal s_WE 	: std_logic_vector(7 downto 0);	-- 8 write enable signals for 8 registers
  signal s_auxWE	: std_logic_vector(7 downto 0);	-- auxiliar signal

 type REG_ARRAY is array (0 to 7) of std_logic_vector(N-1 downto 0);
 signal s_out 	: REG_ARRAY;	-- 8 data read from 8 registers
 
 begin 
  
  
   sinais : entity work.Dec3_8(Behavioral) 
	       port map ( enable => WE , inputs => WA , outputs => s_auxWE);
		s_WE <= s_auxWE(7 downto 1) & '0'; 			-- registo 0 nao pode ser escrito 
		
	registers: for i in 0 to 7 generate 
	reg : entity work.RegisterN(Behavioral) 
	    port map ( clk => clk , reset => reset , enable => s_WE(i), 
		            dataIn => WD , dataOut => s_out(i));
	end generate;
	
	RD1 <= s_out(to_integer(unsigned(RA1)));
   RD2 <= s_out(to_integer(unsigned(RA2)));

end Behavioral;
