library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALU is
	generic(N : positive := 8);
		port(op1, op2 : in  std_logic_vector((N-1) downto 0);
			  AluOp  : in  std_logic_vector(3 downto 0);
		     res : out std_logic_vector((N-1) downto 0));
end ALU;

architecture Behavioral of ALU is
   signal s_op1 , s_op2 : unsigned((N-1) downto 0);
	signal sMulti, uMulti : std_logic_vector(((2*N) - 1) downto 0);

begin 
   sMulti <= std_logic_vector(signed(op1)*signed(op2));
   uMulti <= std_logic_vector(unsigned(op1)*unsigned(op2));
	s_op1 <= unsigned(op1);
	s_op2 <= unsigned(op2);
		
   

 	process(AluOp,sMulti,uMulti,op1,op2)
	begin
	     case AluOp is 
						 when "0000"=>
						  res <= std_logic_vector(s_op1 + s_op2);
						 when "0001" =>
						  res <= std_logic_vector(s_op1 - s_op2);
						 when "0010" => 
						  res <= std_logic_vector(op1 and op2);
						 when "0011" => 
						  res <= std_logic_vector(op1 or op2);
						 when "0100" => 
						  res <= std_logic_vector(op1 xor op2);
						 when "0101" => 
						  res <= std_logic_vector(op1 nor op2);
						 when "0110" => 
						  res <= uMulti((N-1) downto 0);
				       when "0111" => 
						  res <= sMulti((N-1) downto 0);
						 when "1000" => 
						  res <= std_logic_vector(shift_left((s_op1), to_integer(s_op2)));
						 when "1001" => 
				        res <= std_logic_vector(shift_right((s_op1), to_integer(s_op2)));
						 when "1010" => 
						  res <= std_logic_vector(shift_right(signed(op1), to_integer(s_op2))); 
						 when "1011" => 
						  if ( op1 = op2 ) then
						  res <= "00000001";
						  else res <= "00000000";
						  end if;
						 when "1100" =>
					     if ( signed(op1) < signed(op2) ) then
						  res <= "00000001";
						  else res <= "00000000";
						  end if;
						 when "1101" =>
					     if ( s_op1 < s_op2 ) then
						  res <= "00000001";
						  else res <= "00000000";
						  end if;
						 when "1110" =>
				         if ( signed(op1) > signed(op2) ) then
						  res <= "00000001";
						  else res <= "00000000";
						  end if;
						 when "1111" => 
						  if ( s_op1 > s_op2 ) then
						  res <= "00000001";
						  else res <= "00000000";
						  end if;
						end case;
				 
			end process;	 

end Behavioral;