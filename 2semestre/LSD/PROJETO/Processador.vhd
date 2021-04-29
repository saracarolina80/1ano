library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Processador is 
   port ( clk : in std_logic;
	       reset : in std_logic;
		  EnPc     : in  std_logic;
		  RegWr    : in  std_logic;
		  RI       : in  std_logic;
		  RegDst   : in  std_logic;
        MemWr    : in  std_logic;
		  MemtoReg : in  std_logic;
		  ALUSrc   : in  std_logic;
		  ALUOp    : in  std_logic_vector(3 downto 0);
		  func     : out std_logic_vector(3 downto 0);
		  opcode   : out std_logic_vector(2 downto 0));
end Processador;

architecture Structural of Processador is 
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

  dataPath: entity work.DataPath(Structural) 
           port map ( clk   => clk,  
							 reset => reset,
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
	
	controlUnit: entity work.ControlUnit(Behavioral) 
              port map( clk   => clk,  
							   reset => reset,
							  EnPc  => s_EnPc,
							 RegWr => s_RegWr,
							 RI    => s_RI,
							 RegDst=> s_RegDst,
							 MemWr => s_MemWr,
							 MemtoReg => s_MemtoReg,
							 ALUSrc  => s_ALUSrc,
							 ALUOp   => s_ALUOp,
						    func(3 downto 0)   => s_func,
							 opcode(2 downto 0)  => s_opcode);
							 
							 
end Structural;