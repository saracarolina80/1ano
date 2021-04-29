library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Processador_Tb is 
end Processador_Tb;

architecture Stimulus of Processador_Tb is 
	
	signal s_reset : std_logic;
   signal s_clk : std_logic;
	
	signal s_EnPc: std_logic;
	signal S_RI: std_logic;
	Signal s_RegDst: std_logic;
	signal s_RegWr : std_logic;
	signal s_MemWr , s_MemtoReg : std_logic;
	signal s_ALUSrc: std_logic;       
	signal s_ALUOp      : std_logic_vector(3 downto 0); 
   signal s_func : std_logic_vector(3 downto 0);
   signal s_opcode: std_logic_vector(2 downto 0);		

	begin
	
	uut : entity work.Processador(Structural)
	      port map ( clk   => s_clk,  
							 reset => s_reset,
							 EnPc  => s_EnPc,
							 RegWr => s_RegWr,
							 RI    => s_RI,
							 RegDst=> s_RegDst,
							 MemWr => s_MemWr,
							 MemtoReg => s_MemtoReg,
							 ALUSrc  => s_ALUSrc,
							 ALUOp   => s_ALUOp,
						    func    => s_func,
							 opcode  => s_opcode);
	
	clock_proc : process 
   begin 
        s_clk <= '0';
		  wait for 100 ns;
		  s_clk <= '1';
	     wait for 100 ns;
		  
	end process;
	
	stim_proc : process 
	
	begin 
	  s_reset <= '1';
	  wait for 50 ns;
	  s_reset <= '0';
	  wait for 750 ns;
	end process;
	
end Stimulus;

	
	
	