library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DataPath is 
	port(clk      : in  std_logic;
		  reset    : in  std_logic;
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
		  
end DataPath;

architecture Structural of Datapath is 

	signal s_cnt      : std_logic_vector(3 downto 0);   -- cnt 4 bits COUNTER
	signal s_RD : std_logic_vector(15 downto 0);        -- RD 16 bits IMEMORY
	signal s_WA : std_logic_vector(2 downto 0);         -- WA 3 BITS REGISTER
	signal s_WD: std_logic_vector(7 downto 0);          -- WD 8 BITS REGISTER
	signal s_RD1: std_logic_vector(7 downto 0);         -- RD1 8 BITS REGISTER
	signal s_RD2: std_logic_vector(7 downto 0);         -- RD2 8 BITS REGISTER
	signal s_SE  : std_logic_vector(7 downto 0);        -- SE  8 BITS SIGNEXTEND
	signal s_op2      : std_logic_vector(7 downto 0);   -- OP2 8 BITS ALU 
	signal s_addr     : std_logic_vector(7 downto 0);   -- ADDR 8 BITS DMEMORY
	signal s_data1   : std_logic_vector(7 downto 0);   -- dataIn1 mux
	
begin 

   SignExtend : entity work.SignExtend(Behavioral)
			port map( wI => s_RD (6 downto 0),   -- 7 bits
			          wE => s_SE);          
			

	PC : entity work.Counter(Behav)
		  generic map(N => 4)
		  port map(	clk    => clk,
		            reset  => reset,
		            enable => EnPc,
						cnt    => s_cnt);
			
	IMemory : entity work.ROM(Behavioral)
			generic map(N  => 16)
			port map(  En    => RI,
						  RA	  => s_cnt,
						  RD    => s_RD);

			
	ALU  : entity work.ALU(Behavioral)
			port map( AluOp => ALUOp,
			          op1   => s_RD1,
						 op2   => s_op2,
			          res   => s_addr);
						 
	DMemory : entity work.RAM(Behavioral)
	      generic map(N => 8)
			port map( writeClk   => clk, 
	                wE         => MemWr,
						 wD         => s_RD2,
					    Addr       => s_addr,
						 RD         => s_data1);
						 
	RegisterBlock : entity work.Registers(Behavioral)
			generic map(N 		=> 8)
			port map( clk    => clk,
						 RA1    => s_RD(12 downto 10),
						 RA2    => s_RD(9 downto 7),
						 RD1    => s_RD1,
						 RD2    => s_RD2,
						 WA     => s_WA,
						 WD     => s_wD,
			          WE     => RegWr,
					    reset  => reset);
			
	 mux1 : entity work.Mux2_1(Behavioral)
			generic map(N => 3)
			port map( sel     => RegDst,
						 dataIn  => s_RD(6 downto 4),
						 dataIn1 => s_RD(9 downto 7),
			          y       => s_WA);		
	
	 mux2 : entity work.Mux2_1(Behavioral)
			generic map(N => 8)
			port map( sel     => ALUSrc,
						 dataIn  => s_RD2,
						 dataIn1 => s_SE,
			          y       => S_op2);		
	
    mux3 : entity work.Mux2_1(Behavioral)
			generic map(N => 8)
			port map(sel     => MemtoReg,
			         dataIn  => s_data1,
		            dataIn1 => s_addr,
			         y       => s_WD);			
	
 opcode <= s_RD(15 downto 13);
 func	 <= s_RD(3 downto 0);
 
end Structural;