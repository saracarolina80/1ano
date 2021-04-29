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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/05/2020 11:35:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlUnit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	func : IN std_logic_vector(3 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	EnPc : OUT std_logic;
	RegWr : OUT std_logic;
	RI : OUT std_logic;
	RegDst : OUT std_logic;
	MemWr : OUT std_logic;
	MemtoReg : OUT std_logic;
	ALUSrc : OUT std_logic;
	ALUOp : OUT std_logic_vector(3 DOWNTO 0)
	);
END ControlUnit;

-- Design Ports Information
-- EnPc	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWr	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWr	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_func : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_EnPc : std_logic;
SIGNAL ww_RegWr : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_MemWr : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector13~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector7~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EnPc~output_o\ : std_logic;
SIGNAL \RegWr~output_o\ : std_logic;
SIGNAL \RI~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \MemWr~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \ALUOp[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \f_state.ResT~0_combout\ : std_logic;
SIGNAL \f_state.ResT~q\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~0clkctrl_outclk\ : std_logic;
SIGNAL \reg_fstate.Decode_325~combout\ : std_logic;
SIGNAL \f_state~12_combout\ : std_logic;
SIGNAL \f_state.Decode~q\ : std_logic;
SIGNAL \reg_fstate.Execute_308~combout\ : std_logic;
SIGNAL \f_state~11_combout\ : std_logic;
SIGNAL \f_state.Execute~q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \reg_fstate.WriteMem_277~combout\ : std_logic;
SIGNAL \f_state~10_combout\ : std_logic;
SIGNAL \f_state.WriteMem~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \reg_fstate.RegUpdate_291~combout\ : std_logic;
SIGNAL \f_state~9_combout\ : std_logic;
SIGNAL \f_state.RegUpdate~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \reg_fstate.Fetch_342~combout\ : std_logic;
SIGNAL \f_state~8_combout\ : std_logic;
SIGNAL \f_state.Fetch~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \EnPc$latch~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \RegWr$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \RegDst$latch~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \MemWr$latch~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \ALUSrc$latch~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~1clkctrl_outclk\ : std_logic;
SIGNAL \func[0]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \ALUOp[0]$latch~combout\ : std_logic;
SIGNAL \func[1]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ALUOp[1]$latch~combout\ : std_logic;
SIGNAL \func[2]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \ALUOp[2]$latch~combout\ : std_logic;
SIGNAL \func[3]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \ALUOp[3]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_func <= func;
ww_opcode <= opcode;
EnPc <= ww_EnPc;
RegWr <= ww_RegWr;
RI <= ww_RI;
RegDst <= ww_RegDst;
MemWr <= ww_MemWr;
MemtoReg <= ww_MemtoReg;
ALUSrc <= ww_ALUSrc;
ALUOp <= ww_ALUOp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector13~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector13~0_combout\);

\Selector7~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector7~1_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y42_N9
\EnPc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnPc$latch~combout\,
	devoe => ww_devoe,
	o => \EnPc~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\RegWr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWr$latch~combout\,
	devoe => ww_devoe,
	o => \RegWr~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\RI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnPc$latch~combout\,
	devoe => ww_devoe,
	o => \RI~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\RegDst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDst$latch~combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\MemWr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemWr$latch~combout\,
	devoe => ww_devoe,
	o => \MemWr~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\MemtoReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUSrc$latch~combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\ALUOp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALUOp[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ALUOp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\ALUOp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\ALUOp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALUOp[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y35_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y35_N30
\f_state.ResT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state.ResT~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \f_state.ResT~0_combout\);

-- Location: FF_X1_Y36_N1
\f_state.ResT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \f_state.ResT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.ResT~q\);

-- Location: IOIBUF_X0_Y35_N8
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X1_Y36_N4
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((\opcode[2]~input_o\ & ((\opcode[1]~input_o\) # (!\opcode[0]~input_o\))) # (!\opcode[2]~input_o\ & (!\opcode[1]~input_o\))) # (!\f_state.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \f_state.Execute~q\,
	datad => \opcode[0]~input_o\,
	combout => \Selector13~0_combout\);

-- Location: CLKCTRL_G3
\Selector13~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector13~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector13~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N18
\reg_fstate.Decode_325\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Decode_325~combout\ = (GLOBAL(\Selector13~0clkctrl_outclk\) & ((\f_state.Fetch~q\))) # (!GLOBAL(\Selector13~0clkctrl_outclk\) & (\reg_fstate.Decode_325~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_fstate.Decode_325~combout\,
	datac => \f_state.Fetch~q\,
	datad => \Selector13~0clkctrl_outclk\,
	combout => \reg_fstate.Decode_325~combout\);

-- Location: LCCOMB_X2_Y36_N24
\f_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state~12_combout\ = (!\reset~input_o\ & \reg_fstate.Decode_325~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_fstate.Decode_325~combout\,
	combout => \f_state~12_combout\);

-- Location: FF_X2_Y36_N25
\f_state.Decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.Decode~q\);

-- Location: LCCOMB_X2_Y36_N2
\reg_fstate.Execute_308\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Execute_308~combout\ = (GLOBAL(\Selector13~0clkctrl_outclk\) & ((\f_state.Decode~q\))) # (!GLOBAL(\Selector13~0clkctrl_outclk\) & (\reg_fstate.Execute_308~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_fstate.Execute_308~combout\,
	datac => \f_state.Decode~q\,
	datad => \Selector13~0clkctrl_outclk\,
	combout => \reg_fstate.Execute_308~combout\);

-- Location: LCCOMB_X2_Y36_N10
\f_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state~11_combout\ = (!\reset~input_o\ & \reg_fstate.Execute_308~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_fstate.Execute_308~combout\,
	combout => \f_state~11_combout\);

-- Location: FF_X2_Y36_N11
\f_state.Execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.Execute~q\);

-- Location: LCCOMB_X1_Y36_N10
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\opcode[0]~input_o\) # (((!\opcode[2]~input_o\) # (!\opcode[1]~input_o\)) # (!\f_state.Execute~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \f_state.Execute~q\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X1_Y36_N20
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\f_state.Execute~q\ & (\opcode[1]~input_o\ $ (((\opcode[0]~input_o\ & \opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \f_state.Execute~q\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X1_Y36_N2
\reg_fstate.WriteMem_277\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.WriteMem_277~combout\ = (\comb~2_combout\ & ((\reg_fstate.WriteMem_277~combout\) # (!\comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datac => \comb~2_combout\,
	datad => \reg_fstate.WriteMem_277~combout\,
	combout => \reg_fstate.WriteMem_277~combout\);

-- Location: LCCOMB_X2_Y36_N30
\f_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state~10_combout\ = (\reg_fstate.WriteMem_277~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_fstate.WriteMem_277~combout\,
	datac => \reset~input_o\,
	combout => \f_state~10_combout\);

-- Location: FF_X2_Y36_N31
\f_state.WriteMem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.WriteMem~q\);

-- Location: LCCOMB_X1_Y36_N12
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\opcode[1]~input_o\ $ (((\opcode[0]~input_o\ & \opcode[2]~input_o\)))) # (!\f_state.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \f_state.Execute~q\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X1_Y36_N14
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\f_state.Execute~q\ & ((\opcode[0]~input_o\) # ((!\opcode[2]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \f_state.Execute~q\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y36_N22
\reg_fstate.RegUpdate_291\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RegUpdate_291~combout\ = (\comb~0_combout\ & ((\reg_fstate.RegUpdate_291~combout\) # (!\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \reg_fstate.RegUpdate_291~combout\,
	combout => \reg_fstate.RegUpdate_291~combout\);

-- Location: LCCOMB_X1_Y36_N30
\f_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state~9_combout\ = (\reg_fstate.RegUpdate_291~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_fstate.RegUpdate_291~combout\,
	datad => \reset~input_o\,
	combout => \f_state~9_combout\);

-- Location: FF_X1_Y36_N31
\f_state.RegUpdate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.RegUpdate~q\);

-- Location: LCCOMB_X2_Y36_N12
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ((\f_state.WriteMem~q\) # (\f_state.RegUpdate~q\)) # (!\f_state.ResT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_state.ResT~q\,
	datac => \f_state.WriteMem~q\,
	datad => \f_state.RegUpdate~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X2_Y36_N0
\reg_fstate.Fetch_342\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Fetch_342~combout\ = (GLOBAL(\Selector13~0clkctrl_outclk\) & (\WideOr4~combout\)) # (!GLOBAL(\Selector13~0clkctrl_outclk\) & ((\reg_fstate.Fetch_342~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \reg_fstate.Fetch_342~combout\,
	datad => \Selector13~0clkctrl_outclk\,
	combout => \reg_fstate.Fetch_342~combout\);

-- Location: LCCOMB_X2_Y36_N22
\f_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_state~8_combout\ = (!\reset~input_o\ & \reg_fstate.Fetch_342~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_fstate.Fetch_342~combout\,
	combout => \f_state~8_combout\);

-- Location: FF_X2_Y36_N23
\f_state.Fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_state.Fetch~q\);

-- Location: LCCOMB_X2_Y36_N20
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\f_state.Fetch~q\) # (!\f_state.ResT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_state.Fetch~q\,
	datad => \f_state.ResT~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y36_N26
\EnPc$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \EnPc$latch~combout\ = (\WideOr0~0_combout\ & ((\f_state.Fetch~q\))) # (!\WideOr0~0_combout\ & (\EnPc$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnPc$latch~combout\,
	datac => \f_state.Fetch~q\,
	datad => \WideOr0~0_combout\,
	combout => \EnPc$latch~combout\);

-- Location: LCCOMB_X1_Y36_N24
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\f_state.ResT~q\ & !\f_state.RegUpdate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_state.ResT~q\,
	datad => \f_state.RegUpdate~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y36_N26
\RegWr$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegWr$latch~combout\ = (\WideOr4~0_combout\ & (\RegWr$latch~combout\)) # (!\WideOr4~0_combout\ & ((\f_state.RegUpdate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegWr$latch~combout\,
	datac => \f_state.RegUpdate~q\,
	datad => \WideOr4~0_combout\,
	combout => \RegWr$latch~combout\);

-- Location: LCCOMB_X1_Y36_N28
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\opcode[2]~input_o\ & (\opcode[1]~input_o\ & (\f_state.RegUpdate~q\ & \opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \f_state.RegUpdate~q\,
	datad => \opcode[0]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X1_Y36_N0
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # (!\f_state.ResT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_state.ResT~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X1_Y36_N8
\RegDst$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegDst$latch~combout\ = (\Selector17~1_combout\ & (\f_state.RegUpdate~q\)) # (!\Selector17~1_combout\ & ((\RegDst$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_state.RegUpdate~q\,
	datac => \RegDst$latch~combout\,
	datad => \Selector17~1_combout\,
	combout => \RegDst$latch~combout\);

-- Location: LCCOMB_X1_Y36_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ((\opcode[2]~input_o\ & (\opcode[1]~input_o\ & \opcode[0]~input_o\))) # (!\f_state.RegUpdate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \f_state.RegUpdate~q\,
	datad => \opcode[0]~input_o\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X2_Y36_N6
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (!\f_state.Execute~q\ & (\Selector16~0_combout\ & (!\f_state.Fetch~q\ & !\f_state.Decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_state.Execute~q\,
	datab => \Selector16~0_combout\,
	datac => \f_state.Fetch~q\,
	datad => \f_state.Decode~q\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X2_Y36_N8
\MemWr$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemWr$latch~combout\ = (\Selector16~1_combout\ & (\f_state.WriteMem~q\)) # (!\Selector16~1_combout\ & ((\MemWr$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_state.WriteMem~q\,
	datac => \MemWr$latch~combout\,
	datad => \Selector16~1_combout\,
	combout => \MemWr$latch~combout\);

-- Location: LCCOMB_X1_Y35_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\opcode[2]~input_o\ & (\opcode[0]~input_o\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y36_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\f_state.WriteMem~q\) # ((\f_state.Execute~q\ & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f_state.Execute~q\,
	datac => \Equal2~0_combout\,
	datad => \f_state.WriteMem~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y36_N14
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\opcode[2]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[0]~input_o\)))) # (!\f_state.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \f_state.Execute~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X2_Y36_N28
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (!\f_state.Fetch~q\ & (!\f_state.RegUpdate~q\ & (\Selector14~0_combout\ & !\f_state.Decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_state.Fetch~q\,
	datab => \f_state.RegUpdate~q\,
	datac => \Selector14~0_combout\,
	datad => \f_state.Decode~q\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X2_Y36_N4
\ALUSrc$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUSrc$latch~combout\ = (\Selector14~1_combout\ & ((\Selector0~0_combout\))) # (!\Selector14~1_combout\ & (\ALUSrc$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUSrc$latch~combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector14~1_combout\,
	combout => \ALUSrc$latch~combout\);

-- Location: LCCOMB_X1_Y36_N18
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\f_state.Execute~q\ & (\opcode[2]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \f_state.Execute~q\,
	datad => \opcode[0]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y36_N16
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\f_state.WriteMem~q\) # (\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f_state.WriteMem~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: CLKCTRL_G0
\Selector7~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector7~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector7~1clkctrl_outclk\);

-- Location: IOIBUF_X0_Y30_N8
\func[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(0),
	o => \func[0]~input_o\);

-- Location: LCCOMB_X1_Y33_N4
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\opcode[2]~input_o\ & !\opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y33_N30
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\func[0]~input_o\ & (\opcode[0]~input_o\ & (!\f_state.WriteMem~q\ & \Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func[0]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \f_state.WriteMem~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X1_Y33_N22
\ALUOp[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp[0]$latch~combout\ = (GLOBAL(\Selector7~1clkctrl_outclk\) & ((\Selector5~1_combout\))) # (!GLOBAL(\Selector7~1clkctrl_outclk\) & (\ALUOp[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]$latch~combout\,
	datac => \Selector7~1clkctrl_outclk\,
	datad => \Selector5~1_combout\,
	combout => \ALUOp[0]$latch~combout\);

-- Location: IOIBUF_X0_Y29_N22
\func[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(1),
	o => \func[1]~input_o\);

-- Location: LCCOMB_X1_Y33_N8
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal2~0_combout\ & (\func[1]~input_o\ & !\f_state.WriteMem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \func[1]~input_o\,
	datad => \f_state.WriteMem~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y33_N16
\ALUOp[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp[1]$latch~combout\ = (GLOBAL(\Selector7~1clkctrl_outclk\) & (\Selector4~0_combout\)) # (!GLOBAL(\Selector7~1clkctrl_outclk\) & ((\ALUOp[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datac => \Selector7~1clkctrl_outclk\,
	datad => \ALUOp[1]$latch~combout\,
	combout => \ALUOp[1]$latch~combout\);

-- Location: IOIBUF_X0_Y30_N1
\func[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(2),
	o => \func[2]~input_o\);

-- Location: LCCOMB_X1_Y33_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal2~0_combout\ & (\func[2]~input_o\ & !\f_state.WriteMem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \func[2]~input_o\,
	datad => \f_state.WriteMem~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y33_N10
\ALUOp[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp[2]$latch~combout\ = (GLOBAL(\Selector7~1clkctrl_outclk\) & (\Selector3~0_combout\)) # (!GLOBAL(\Selector7~1clkctrl_outclk\) & ((\ALUOp[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \Selector7~1clkctrl_outclk\,
	datad => \ALUOp[2]$latch~combout\,
	combout => \ALUOp[2]$latch~combout\);

-- Location: IOIBUF_X0_Y29_N15
\func[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(3),
	o => \func[3]~input_o\);

-- Location: LCCOMB_X1_Y33_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\func[3]~input_o\ & (\opcode[0]~input_o\ & (!\f_state.WriteMem~q\ & \Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func[3]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \f_state.WriteMem~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\ALUOp[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp[3]$latch~combout\ = (GLOBAL(\Selector7~1clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\Selector7~1clkctrl_outclk\) & (\ALUOp[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]$latch~combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector7~1clkctrl_outclk\,
	combout => \ALUOp[3]$latch~combout\);

ww_EnPc <= \EnPc~output_o\;

ww_RegWr <= \RegWr~output_o\;

ww_RI <= \RI~output_o\;

ww_RegDst <= \RegDst~output_o\;

ww_MemWr <= \MemWr~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;

ww_ALUOp(3) <= \ALUOp[3]~output_o\;
END structure;


