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

-- DATE "03/18/2020 12:38:00"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	r : BUFFER std_logic_vector(3 DOWNTO 0);
	m : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU4;

-- Design Ports Information
-- r[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \m~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \m~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \m~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \m~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
r <= ww_r;
m <= ww_m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~8_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~9_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~10_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~11_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOIBUF_X28_Y0_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X24_Y18_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: IOIBUF_X28_Y24_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X25_Y19_N8
\Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\b[0]~input_o\ & (!\a[2]~input_o\ & \b[1]~input_o\)) # (!\b[0]~input_o\ & ((!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: IOIBUF_X23_Y24_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X25_Y19_N10
\Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\a[3]~input_o\ & ((\b[3]~input_o\) # ((\Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \a[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\b[3]~input_o\) # ((\b[2]~input_o\) # ((\b[1]~input_o\ & !\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X25_Y19_N6
\Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\a[2]~input_o\ & ((\Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: IOIBUF_X28_Y24_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X24_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[1]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X24_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\b[1]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X24_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X24_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\b[3]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\b[3]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \b[3]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\b[3]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X24_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\b[3]~input_o\ & (((\a[1]~input_o\)))) # (!\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\a[1]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \a[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\b[1]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X24_Y18_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X24_Y18_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\b[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X24_Y18_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: IOIBUF_X34_Y18_N15
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X24_Y18_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\a[0]~input_o\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\op[0]~input_o\ & ((\a[0]~input_o\))) # (!\op[0]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \a[0]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & (\Mux3~0_combout\ & ((\b[0]~input_o\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X25_Y18_N10
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[1]~input_o\ & ((\b[0]~input_o\ & ((!\a[0]~input_o\) # (!\Mux3~1_combout\))) # (!\b[0]~input_o\ & ((\a[0]~input_o\))))) # (!\op[1]~input_o\ & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \a[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X28_Y19_N28
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \b[0]~input_o\ $ (\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X28_Y18_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X28_Y18_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\a[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\a[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\a[0]~input_o\ & (!\Add0~2_cout\)) # (!\a[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\a[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: IOIBUF_X16_Y24_N8
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X28_Y19_N18
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\op[1]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X25_Y18_N2
\Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\b[1]~input_o\ $ (((\b[0]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X26_Y19_N14
\Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\Mult0|auto_generated|le3a\(0) & (\b[1]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|le3a\(0) & (\b[1]~input_o\ & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\Mult0|auto_generated|le3a\(0) & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \b[1]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X28_Y19_N16
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\op[2]~input_o\) # ((\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X28_Y19_N30
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\Mult0|auto_generated|op_3~0_combout\) # (\Mux3~3_combout\)))) # (!\Mux3~4_combout\ & (\Add0~3_combout\ & ((!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mult0|auto_generated|op_3~0_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X25_Y19_N18
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\a[1]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[1]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X25_Y19_N20
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\b[1]~input_o\ 
-- & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X25_Y19_N22
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X25_Y19_N24
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\b[3]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\b[3]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \b[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\b[3]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\b[3]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \b[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\b[3]~input_o\ & (((\a[1]~input_o\)))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\a[1]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \a[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X25_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X25_Y18_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X25_Y18_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\b[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X25_Y18_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X25_Y18_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X25_Y18_N12
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (!\Mux3~3_combout\)))) # (!\Mux3~5_combout\ & (\Mux3~2_combout\ & (\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux3~5_combout\,
	datac => \Mux3~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X28_Y18_N16
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \b[1]~input_o\ $ (\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\a[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\a[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\a[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\);

-- Location: LCCOMB_X28_Y18_N4
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\b[1]~input_o\ & ((\op[1]~input_o\ $ (\a[1]~input_o\)) # (!\op[0]~input_o\))) # (!\b[1]~input_o\ & ((\op[1]~input_o\ & (\a[1]~input_o\)) # (!\op[1]~input_o\ & ((!\op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\op[1]~input_o\) # ((\Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\,
	datac => \Mux2~2_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X28_Y18_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~4_combout\ & (((\Mux3~3_combout\)))) # (!\Mux3~4_combout\ & ((\Mux3~3_combout\ & ((\Mux2~3_combout\))) # (!\Mux3~3_combout\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X25_Y18_N28
\Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\b[0]~input_o\ & ((\b[1]~input_o\ $ (\a[1]~input_o\)))) # (!\b[0]~input_o\ & (!\a[0]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X26_Y19_N16
\Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X28_Y19_N8
\Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(10) = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \b[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X28_Y19_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((!\Mux3~4_combout\) # (!\Div0|auto_generated|divider|divider|selnose\(10))))) # (!\Mux2~0_combout\ & (\Mult0|auto_generated|op_3~2_combout\ & ((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose\(10),
	datad => \Mux3~4_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\a[2]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \b[2]~input_o\ $ (\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X28_Y18_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\a[2]~input_o\ & (\Add0~7\ & VCC)) # (!\a[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\a[2]~input_o\ & (!\Add0~7\)) # (!\a[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\a[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X25_Y18_N30
\Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\b[3]~input_o\ $ (((\b[2]~input_o\ & ((\a[0]~input_o\) # (\b[1]~input_o\))) # (!\b[2]~input_o\ & (\a[0]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X25_Y18_N14
\Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL(\b[3]~input_o\ $ (((\b[2]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X28_Y18_N20
\Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\b[0]~input_o\ & ((\a[2]~input_o\ $ (\b[1]~input_o\)))) # (!\b[0]~input_o\ & (!\a[1]~input_o\ & ((\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X26_Y19_N0
\Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le4a\(5) & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X26_Y19_N18
\Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X28_Y18_N0
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux3~4_combout\ & (((\Mult0|auto_generated|op_3~4_combout\) # (\Mux3~3_combout\)))) # (!\Mux3~4_combout\ & (\Add0~9_combout\ & ((!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\b[2]~input_o\ & ((\op[1]~input_o\ $ (\a[2]~input_o\)) # (!\op[0]~input_o\))) # (!\b[2]~input_o\ & ((\op[1]~input_o\ & (\a[2]~input_o\)) # (!\op[1]~input_o\ & ((!\op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X28_Y18_N26
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\op[1]~input_o\) # ((\Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((!\Mux3~3_combout\)) # (!\Mod0|auto_generated|divider|divider|selnose[5]~1_combout\))) # (!\Mux1~0_combout\ & (((\Mux1~3_combout\ & \Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = \b[2]~input_o\ $ (\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X26_Y22_N16
\Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|le4a\(5) $ (((\a[1]~input_o\))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|le4a\(5) & (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X28_Y18_N22
\Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\b[0]~input_o\ & (\a[3]~input_o\ $ (((\b[1]~input_o\))))) # (!\b[0]~input_o\ & (((!\a[2]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X26_Y19_N2
\Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X26_Y19_N20
\Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_1~2_combout\ & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X28_Y19_N22
\Mod0|auto_generated|divider|divider|selnose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ = (!\b[2]~input_o\ & !\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: LCCOMB_X28_Y19_N0
\Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(0) = ((\b[1]~input_o\) # ((\b[0]~input_o\ & !\a[3]~input_o\))) # (!\Mod0|auto_generated|divider|divider|selnose[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datad => \b[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X28_Y19_N12
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\b[3]~input_o\ & ((\op[1]~input_o\ $ (\a[3]~input_o\)) # (!\op[0]~input_o\))) # (!\b[3]~input_o\ & ((\op[1]~input_o\ & (\a[3]~input_o\)) # (!\op[1]~input_o\ & ((!\op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X28_Y19_N6
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & ((\op[1]~input_o\) # ((\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \op[1]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datad => \op[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \b[3]~input_o\ $ (\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X28_Y18_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \a[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add0~11_combout\,
	cin => \Add0~10\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X28_Y19_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux3~4_combout\ & (((\Mux3~3_combout\)))) # (!\Mux3~4_combout\ & ((\Mux3~3_combout\ & (\Mux0~3_combout\)) # (!\Mux3~3_combout\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux3~4_combout\,
	datac => \Add0~12_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((!\Mux3~4_combout\) # (!\Mod0|auto_generated|divider|divider|selnose\(0))))) # (!\Mux0~0_combout\ & (\Mult0|auto_generated|op_3~6_combout\ & ((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|selnose\(0),
	datac => \Mux0~0_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y18_N4
\Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\a[0]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X26_Y19_N12
\Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Mult0|auto_generated|le4a\(5) $ (\a[2]~input_o\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\a[1]~input_o\ & (\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Mult0|auto_generated|le4a\(5),
	datac => \a[2]~input_o\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X25_Y19_N16
\Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\b[1]~input_o\ & ((\b[0]~input_o\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X26_Y19_N4
\Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|le3a\(4) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|le3a\(4)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le4a\(2) & (\Mult0|auto_generated|le3a\(4) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X26_Y19_N22
\Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|op_1~4_combout\) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|op_1~4_combout\ & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X28_Y19_N20
\m~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~8_combout\ = (\Mult0|auto_generated|op_3~8_combout\ & (!\op[2]~input_o\ & (\op[1]~input_o\ & !\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~8_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \m~8_combout\);

-- Location: LCCOMB_X26_Y19_N30
\Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\a[3]~input_o\ $ (\Mult0|auto_generated|le4a\(5))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\a[2]~input_o\ & ((\Mult0|auto_generated|le4a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \a[3]~input_o\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X25_Y18_N6
\Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\a[1]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X26_Y19_N6
\Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|le5a\(1) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le4a\(3) 
-- & ((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|le5a\(1) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(3),
	datab => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X26_Y20_N8
\Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL(\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X26_Y19_N24
\Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X28_Y19_N14
\m~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~9_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|op_3~10_combout\ & (!\op[2]~input_o\ & !\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|op_3~10_combout\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \m~9_combout\);

-- Location: LCCOMB_X25_Y19_N12
\Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\a[2]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X25_Y19_N2
\Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\a[3]~input_o\ & (\b[3]~input_o\ & (\b[1]~input_o\ $ (\b[2]~input_o\)))) # (!\a[3]~input_o\ & (\b[3]~input_o\ $ (((\b[1]~input_o\ & \b[2]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X26_Y19_N8
\Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le5a\(2) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le5a\(2) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le5a\(2) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X26_Y19_N26
\Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|op_1~8_combout\ $ (\Mult0|auto_generated|le3a\(5) $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|op_1~8_combout\ & ((\Mult0|auto_generated|le3a\(5)) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|op_1~8_combout\ & (\Mult0|auto_generated|le3a\(5) & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X28_Y19_N24
\m~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~10_combout\ = (\Mult0|auto_generated|op_3~12_combout\ & (!\op[2]~input_o\ & (\op[1]~input_o\ & !\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~12_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \m~10_combout\);

-- Location: LCCOMB_X25_Y19_N14
\Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\a[3]~input_o\ & ((\b[3]~input_o\) # ((\b[1]~input_o\ & \b[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X26_Y19_N10
\Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le4a\(5) $ (\Mult0|auto_generated|op_1~9\ $ (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le4a\(5),
	datad => \Mult0|auto_generated|le5a\(3),
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X26_Y19_N28
\Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = \Mult0|auto_generated|op_1~10_combout\ $ (\Mult0|auto_generated|op_3~13\ $ (!\Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datad => \Mult0|auto_generated|le3a\(5),
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X28_Y19_N10
\m~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~11_combout\ = (\Mult0|auto_generated|op_3~14_combout\ & (!\op[2]~input_o\ & (\op[1]~input_o\ & !\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \m~11_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;
END structure;


