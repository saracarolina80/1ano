library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM is  
    generic ( N : positive := 16);
    port (RD: out std_logic_vector((N-1) downto 0);
	       En : in std_logic;
	       RA: in std_logic_vector(3 downto 0)); -- 4 bits para armazenar 16 instruções
end ROM;

architecture Behavioral of ROM is
   constant NUM_WORDS : positive := (2 ** N);
	subtype TDataWord is std_logic_vector(15 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := ( "1110000010000000" , -- LW $0 , $1 , 0 
	                             "1110000100000001" , -- LW $0 , $2 , 1
										  "0010010100110000" , -- ADD $1 , $2 , $3 
										  "0010110101001111" , -- SGU $3 , $2 , $4 
										  "0011000111011000" , -- SLL $4 , $3 , $5
										  "1100011000000000" , -- SW $1 , $4 , 0
										  "1100011010000001" , -- SW $1 , $5 , 1 
     								  others => "0000000000000000");
  begin 
  
	RD <= c_memory(to_integer(unsigned(RA)));
           

end Behavioral;