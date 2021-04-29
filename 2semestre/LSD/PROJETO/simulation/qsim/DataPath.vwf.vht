-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/05/2020 11:27:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DataPath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DataPath_vhd_vec_tst IS
END DataPath_vhd_vec_tst;
ARCHITECTURE DataPath_arch OF DataPath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL EnPc : STD_LOGIC;
SIGNAL func : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWr : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWr : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL RI : STD_LOGIC;
COMPONENT DataPath
	PORT (
	ALUOp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUSrc : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	EnPc : IN STD_LOGIC;
	func : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	MemtoReg : IN STD_LOGIC;
	MemWr : IN STD_LOGIC;
	opcode : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegDst : IN STD_LOGIC;
	RegWr : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	RI : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DataPath
	PORT MAP (
-- list connections between master ports and signals
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	clk => clk,
	EnPc => EnPc,
	func => func,
	MemtoReg => MemtoReg,
	MemWr => MemWr,
	opcode => opcode,
	RegDst => RegDst,
	RegWr => RegWr,
	reset => reset,
	RI => RI
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 510000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- ALUOp[3]
t_prcs_ALUOp_3: PROCESS
BEGIN
	ALUOp(3) <= '0';
	WAIT FOR 230000 ps;
	ALUOp(3) <= '1';
	WAIT FOR 130000 ps;
	ALUOp(3) <= '0';
	WAIT FOR 180000 ps;
	ALUOp(3) <= '1';
	WAIT FOR 230000 ps;
	ALUOp(3) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_3;
-- ALUOp[2]
t_prcs_ALUOp_2: PROCESS
BEGIN
	ALUOp(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_2;
-- ALUOp[1]
t_prcs_ALUOp_1: PROCESS
BEGIN
	ALUOp(1) <= '0';
	WAIT FOR 360000 ps;
	ALUOp(1) <= '1';
	WAIT FOR 410000 ps;
	ALUOp(1) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_1;
-- ALUOp[0]
t_prcs_ALUOp_0: PROCESS
BEGIN
	ALUOp(0) <= '0';
	WAIT FOR 230000 ps;
	ALUOp(0) <= '1';
	WAIT FOR 130000 ps;
	ALUOp(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_0;

-- ALUSrc
t_prcs_ALUSrc: PROCESS
BEGIN
	ALUSrc <= '0';
	WAIT FOR 10000 ps;
	ALUSrc <= '1';
	WAIT FOR 180000 ps;
	ALUSrc <= '0';
	WAIT FOR 350000 ps;
	ALUSrc <= '1';
	WAIT FOR 230000 ps;
	ALUSrc <= '0';
WAIT;
END PROCESS t_prcs_ALUSrc;

-- EnPc
t_prcs_EnPc: PROCESS
BEGIN
	EnPc <= '0';
	WAIT FOR 230000 ps;
	EnPc <= '1';
	WAIT FOR 90000 ps;
	EnPc <= '0';
	WAIT FOR 220000 ps;
	EnPc <= '1';
	WAIT FOR 120000 ps;
	EnPc <= '0';
WAIT;
END PROCESS t_prcs_EnPc;

-- MemtoReg
t_prcs_MemtoReg: PROCESS
BEGIN
	MemtoReg <= '0';
	WAIT FOR 10000 ps;
	MemtoReg <= '1';
	WAIT FOR 150000 ps;
	MemtoReg <= '0';
	WAIT FOR 70000 ps;
	MemtoReg <= '1';
	WAIT FOR 90000 ps;
	MemtoReg <= '0';
	WAIT FOR 220000 ps;
	MemtoReg <= '1';
	WAIT FOR 120000 ps;
	MemtoReg <= '0';
WAIT;
END PROCESS t_prcs_MemtoReg;

-- MemWr
t_prcs_MemWr: PROCESS
BEGIN
	MemWr <= '1';
WAIT;
END PROCESS t_prcs_MemWr;

-- RegDst
t_prcs_RegDst: PROCESS
BEGIN
	RegDst <= '1';
	WAIT FOR 760000 ps;
	RegDst <= '0';
WAIT;
END PROCESS t_prcs_RegDst;

-- RegWr
t_prcs_RegWr: PROCESS
BEGIN
	RegWr <= '0';
	WAIT FOR 40000 ps;
	RegWr <= '1';
	WAIT FOR 500000 ps;
	RegWr <= '0';
WAIT;
END PROCESS t_prcs_RegWr;

-- RI
t_prcs_RI: PROCESS
BEGIN
	RI <= '0';
	WAIT FOR 400000 ps;
	RI <= '1';
	WAIT FOR 530000 ps;
	RI <= '0';
WAIT;
END PROCESS t_prcs_RI;
END DataPath_arch;
