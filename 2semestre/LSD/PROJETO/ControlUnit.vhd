library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity ControlUnit is 
 
   port(clk      : in  std_logic;
		  reset    : in  std_logic;
		  func     : in std_logic_vector(3 downto 0);
		  opcode   : in std_logic_vector(2 downto 0);
		  EnPc     : out  std_logic;
		  RegWr    : out  std_logic;
		  RI       : out  std_logic;
		  RegDst   : out  std_logic;
        MemWr    : out  std_logic;
		  MemtoReg : out  std_logic;
		  ALUSrc   : out  std_logic;
		  ALUOp    : out  std_logic_vector(3 downto 0));
		  
end ControlUnit;
		  
architecture Behavioral of ControlUnit is 

    type type_fstate is (ResT,Fetch,Decode,Execute,RegUpdate,WriteMem);
	 Signal f_state : type_fstate;
	 Signal reg_fstate : type_fstate;
  
  begin  
  
    sync : process(clk)
	 begin 
	     if ( rising_edge(clk)) then 
		    if ( reset = '1') then
		      f_state <= ResT;
			 else
			   f_state <= reg_fstate;
			 end if;
		  end if;
	 end process;

	 comb: process (f_state, opcode, func)
    begin 
        case (f_state) is
		    
		     when ResT => 
			      EnPc  	<= '0';
				   RegWr 	<= '0';
					RI	   	<= '0';
					RegDst   <= '0';
					MemWr    <= '0';
					MemtoReg <= '0';
			      ALUSrc   <= '0';
		   
					
					reg_fstate <= Fetch;
					
				when Fetch => 
				  RI   <= '1';
				  EnPc <= '1';  
			     
				  reg_fstate <= Decode;
				  
				when Decode => 
				
				  reg_fstate <= Execute;
				
				when Execute => 
				  
				  if ( opcode = "000" ) then
				   reg_fstate <= RegUpdate;
				  
				  elsif ( opcode = "001") then
					ALUSrc <= '0';
					ALUOp <= func;
					
					reg_fstate <= RegUpdate;
					
				  elsif ( opcode = "110" ) then
				   ALUSrc <= '1';
			      ALUOp <= "0000";
			      
			      reg_fstate <= WriteMem;
				 
				  elsif ( opcode = "111" ) then 
			      ALUSrc <= '1';
				   ALUOp <= "0000";
				
		         reg_fstate <= RegUpdate;
				 
				  elsif ( opcode = "100") then 
				   ALUSrc <= '1';
				   ALUOp <= "0000";
				  
				   reg_fstate <= RegUpdate;
				 
				  end if; 
				 
			  when WriteMem => 
			   ALUSrc <= '1';
			   MemWr <= '1';
			   ALUOp <= "0000";
			  
			   reg_fstate <= Fetch;
			  
			  when RegUpdate => 
			   RegWr <= '1';
				
				if ( opcode = "000" ) then 
				   
				
				elsif ( opcode = "001") then 
				  MemtoReg <= '0';
				
				elsif(opcode = "111" ) then 
				  MemWr    <= '0';
				  MemtoReg <= '0';
				  RegDst   <= '1';
				
				end if;
			
				reg_fstate <= Fetch;	
			end case;
		end process;
	 end Behavioral;
			  
				
				  
				  
			