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

-- DATE "05/19/2020 19:52:46"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	shAmount : IN std_logic_vector(2 DOWNTO 0);
	rotate : IN std_logic;
	dirLeft : IN std_logic;
	shArith : IN std_logic;
	dataOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rotate	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shAmount[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shAmount[1]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirLeft	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shArith	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shAmount[2]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_shAmount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dirLeft : std_logic;
SIGNAL ww_shArith : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \shAmount[0]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \shAmount[1]~input_o\ : std_logic;
SIGNAL \RotateRight0~0_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \dirLeft~input_o\ : std_logic;
SIGNAL \shArith~input_o\ : std_logic;
SIGNAL \dataOut~2_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \dataOut~3_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \RotateRight0~1_combout\ : std_logic;
SIGNAL \dataOut~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \dataOut~5_combout\ : std_logic;
SIGNAL \shAmount[2]~input_o\ : std_logic;
SIGNAL \dataOut~6_combout\ : std_logic;
SIGNAL \dataOut~14_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \RotateRight0~2_combout\ : std_logic;
SIGNAL \RotateRight0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \dataOut~8_combout\ : std_logic;
SIGNAL \dataOut~7_combout\ : std_logic;
SIGNAL \dataOut~9_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \dataOut~10_combout\ : std_logic;
SIGNAL \dataOut~12_combout\ : std_logic;
SIGNAL \dataOut~11_combout\ : std_logic;
SIGNAL \dataOut~13_combout\ : std_logic;
SIGNAL \dataOut~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \RotateRight0~6_combout\ : std_logic;
SIGNAL \RotateRight0~7_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \RotateRight0~4_combout\ : std_logic;
SIGNAL \RotateRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \dataOut~16_combout\ : std_logic;
SIGNAL \dataOut~17_combout\ : std_logic;
SIGNAL \dataOut~18_combout\ : std_logic;
SIGNAL \dataOut~19_combout\ : std_logic;
SIGNAL \RotateLeft0~17_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateLeft0~16_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \dataOut~20_combout\ : std_logic;
SIGNAL \dataOut~21_combout\ : std_logic;
SIGNAL \dataOut~22_combout\ : std_logic;
SIGNAL \dataOut~23_combout\ : std_logic;
SIGNAL \dataOut~24_combout\ : std_logic;
SIGNAL \dataOut~25_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \dataOut~27_combout\ : std_logic;
SIGNAL \dataOut~26_combout\ : std_logic;
SIGNAL \dataOut~28_combout\ : std_logic;
SIGNAL \dataOut~29_combout\ : std_logic;
SIGNAL \dataOut~32_combout\ : std_logic;
SIGNAL \dataOut~33_combout\ : std_logic;
SIGNAL \dataOut~34_combout\ : std_logic;
SIGNAL \dataOut~35_combout\ : std_logic;
SIGNAL \dataOut~31_combout\ : std_logic;
SIGNAL \dataOut~30_combout\ : std_logic;
SIGNAL \dataOut~36_combout\ : std_logic;
SIGNAL \dataOut~37_combout\ : std_logic;
SIGNAL \dataOut~38_combout\ : std_logic;
SIGNAL \dataOut~39_combout\ : std_logic;
SIGNAL \dataOut~40_combout\ : std_logic;
SIGNAL \dataOut~41_combout\ : std_logic;
SIGNAL \dataOut~42_combout\ : std_logic;
SIGNAL \dataOut~43_combout\ : std_logic;
SIGNAL \dataOut~45_combout\ : std_logic;
SIGNAL \dataOut~44_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dataIn <= dataIn;
ww_shAmount <= shAmount;
ww_rotate <= rotate;
ww_dirLeft <= dirLeft;
ww_shArith <= shArith;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y41_N9
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~6_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~15_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~19_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~25_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~29_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~37_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~41_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~44_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOIBUF_X115_Y40_N1
\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\shAmount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(0),
	o => \shAmount[0]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\shAmount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(1),
	o => \shAmount[1]~input_o\);

-- Location: LCCOMB_X114_Y39_N20
\RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~0_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \RotateRight0~0_combout\);

-- Location: IOIBUF_X115_Y35_N15
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: LCCOMB_X114_Y39_N2
\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[7]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X114_Y39_N22
\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\shAmount[0]~input_o\ & ((\ShiftRight0~0_combout\))) # (!\shAmount[0]~input_o\ & (\RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \RotateRight0~0_combout\,
	datac => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\dirLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirLeft,
	o => \dirLeft~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\shArith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shArith,
	o => \shArith~input_o\);

-- Location: LCCOMB_X114_Y40_N8
\dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~2_combout\ = (\dirLeft~input_o\) # ((!\rotate~input_o\ & !\shArith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datad => \shArith~input_o\,
	combout => \dataOut~2_combout\);

-- Location: IOIBUF_X115_Y46_N8
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LCCOMB_X112_Y39_N8
\RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[3]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~0_combout\);

-- Location: IOIBUF_X115_Y45_N15
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: LCCOMB_X114_Y39_N24
\RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \RotateLeft0~1_combout\);

-- Location: LCCOMB_X113_Y39_N24
\RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\RotateLeft0~0_combout\) # ((!\shAmount[0]~input_o\ & \RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateLeft0~1_combout\,
	combout => \RotateLeft0~2_combout\);

-- Location: LCCOMB_X114_Y40_N10
\dataOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~3_combout\ = (\dataOut~2_combout\ & (\rotate~input_o\ & ((\RotateLeft0~2_combout\)))) # (!\dataOut~2_combout\ & (((\ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \ShiftRight0~1_combout\,
	datac => \dataOut~2_combout\,
	datad => \RotateLeft0~2_combout\,
	combout => \dataOut~3_combout\);

-- Location: LCCOMB_X112_Y39_N18
\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\shAmount[1]~input_o\ & (\dataIn[3]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[3]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[1]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: IOIBUF_X115_Y36_N8
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: LCCOMB_X112_Y39_N28
\RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~1_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \RotateRight0~1_combout\);

-- Location: LCCOMB_X114_Y40_N20
\dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~4_combout\ = (!\dataOut~2_combout\ & ((\shAmount[0]~input_o\ & (\ShiftRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \dataOut~2_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateRight0~1_combout\,
	combout => \dataOut~4_combout\);

-- Location: LCCOMB_X112_Y39_N0
\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\dataIn[0]~input_o\ & (!\shAmount[1]~input_o\ & !\shAmount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X112_Y39_N30
\RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~3_combout\);

-- Location: LCCOMB_X114_Y39_N16
\RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[7]~input_o\,
	combout => \RotateLeft0~4_combout\);

-- Location: LCCOMB_X113_Y39_N2
\RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\RotateLeft0~3_combout\) # ((\shAmount[0]~input_o\ & \RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~3_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~5_combout\);

-- Location: LCCOMB_X114_Y40_N30
\dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~5_combout\ = (\dataOut~2_combout\ & ((\rotate~input_o\ & ((\RotateLeft0~5_combout\))) # (!\rotate~input_o\ & (\ShiftLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \RotateLeft0~5_combout\,
	datac => \dataOut~2_combout\,
	datad => \rotate~input_o\,
	combout => \dataOut~5_combout\);

-- Location: IOIBUF_X115_Y46_N1
\shAmount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(2),
	o => \shAmount[2]~input_o\);

-- Location: LCCOMB_X114_Y40_N0
\dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~6_combout\ = (\shAmount[2]~input_o\ & (\dataOut~3_combout\)) # (!\shAmount[2]~input_o\ & (((\dataOut~4_combout\) # (\dataOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~3_combout\,
	datab => \dataOut~4_combout\,
	datac => \dataOut~5_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~6_combout\);

-- Location: LCCOMB_X114_Y40_N24
\dataOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~14_combout\ = (!\dirLeft~input_o\ & (!\shAmount[2]~input_o\ & ((\rotate~input_o\) # (\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datac => \shArith~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~14_combout\);

-- Location: LCCOMB_X114_Y39_N8
\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: LCCOMB_X114_Y40_N18
\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\shAmount[0]~input_o\ & ((\ShiftRight0~5_combout\))) # (!\shAmount[0]~input_o\ & (\ShiftRight0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \ShiftRight0~5_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X112_Y39_N12
\RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~2_combout\ = (\shAmount[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \RotateRight0~2_combout\);

-- Location: LCCOMB_X113_Y39_N4
\RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~3_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~2_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \ShiftRight0~0_combout\,
	combout => \RotateRight0~3_combout\);

-- Location: LCCOMB_X112_Y39_N14
\RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & ((\dataIn[6]~input_o\))) # (!\shAmount[0]~input_o\ & (\dataIn[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~6_combout\);

-- Location: LCCOMB_X112_Y39_N2
\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \shAmount[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X112_Y40_N8
\RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (\RotateLeft0~6_combout\) # (\ShiftLeft0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~6_combout\,
	datad => \ShiftLeft0~1_combout\,
	combout => \RotateLeft0~7_combout\);

-- Location: LCCOMB_X114_Y39_N10
\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[5]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X114_Y39_N4
\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\ShiftRight0~3_combout\) # ((\shAmount[1]~input_o\ & \dataIn[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[7]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X112_Y40_N2
\dataOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~8_combout\ = (\rotate~input_o\ & \dirLeft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~8_combout\);

-- Location: LCCOMB_X114_Y40_N2
\dataOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~7_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\) # (!\dirLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~7_combout\);

-- Location: LCCOMB_X113_Y40_N16
\dataOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~9_combout\ = (\dataOut~8_combout\ & ((\RotateLeft0~7_combout\) # ((\dataOut~7_combout\)))) # (!\dataOut~8_combout\ & (((\ShiftRight0~4_combout\ & !\dataOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~7_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \dataOut~8_combout\,
	datad => \dataOut~7_combout\,
	combout => \dataOut~9_combout\);

-- Location: LCCOMB_X114_Y39_N6
\RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[3]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \RotateLeft0~8_combout\);

-- Location: LCCOMB_X113_Y39_N22
\RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\shAmount[0]~input_o\ & ((\RotateLeft0~1_combout\))) # (!\shAmount[0]~input_o\ & (\RotateLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateLeft0~1_combout\,
	combout => \RotateLeft0~9_combout\);

-- Location: LCCOMB_X113_Y40_N26
\dataOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~10_combout\ = (\dataOut~9_combout\ & (((\RotateLeft0~9_combout\) # (!\dataOut~7_combout\)))) # (!\dataOut~9_combout\ & (\RotateRight0~3_combout\ & ((\dataOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~3_combout\,
	datab => \dataOut~9_combout\,
	datac => \RotateLeft0~9_combout\,
	datad => \dataOut~7_combout\,
	combout => \dataOut~10_combout\);

-- Location: LCCOMB_X114_Y40_N14
\dataOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~12_combout\ = (!\rotate~input_o\ & (!\shAmount[2]~input_o\ & ((\dirLeft~input_o\) # (!\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datac => \shArith~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~12_combout\);

-- Location: LCCOMB_X114_Y40_N4
\dataOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~11_combout\ = (\dirLeft~input_o\ & (\rotate~input_o\)) # (!\dirLeft~input_o\ & (\shAmount[2]~input_o\ & ((\rotate~input_o\) # (\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datac => \shArith~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~11_combout\);

-- Location: LCCOMB_X113_Y40_N4
\dataOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~13_combout\ = (\dataOut~10_combout\ & ((\dataOut~11_combout\) # ((\dataOut~12_combout\ & \ShiftLeft0~1_combout\)))) # (!\dataOut~10_combout\ & (\dataOut~12_combout\ & (\ShiftLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~10_combout\,
	datab => \dataOut~12_combout\,
	datac => \ShiftLeft0~1_combout\,
	datad => \dataOut~11_combout\,
	combout => \dataOut~13_combout\);

-- Location: LCCOMB_X113_Y40_N30
\dataOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~15_combout\ = (\dataOut~13_combout\) # ((\dataOut~14_combout\ & \ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~14_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \dataOut~13_combout\,
	combout => \dataOut~15_combout\);

-- Location: LCCOMB_X112_Y39_N24
\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \shAmount[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X112_Y39_N26
\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\ShiftLeft0~2_combout\) # ((\dataIn[1]~input_o\ & (!\shAmount[1]~input_o\ & \shAmount[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \ShiftLeft0~2_combout\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X114_Y39_N12
\RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~6_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[3]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \RotateRight0~6_combout\);

-- Location: LCCOMB_X114_Y39_N30
\RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~7_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~6_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~6_combout\,
	datab => \ShiftRight0~5_combout\,
	datac => \shAmount[0]~input_o\,
	combout => \RotateRight0~7_combout\);

-- Location: LCCOMB_X112_Y39_N10
\RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~10_combout\);

-- Location: LCCOMB_X112_Y39_N20
\RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\RotateLeft0~10_combout\) # (\ShiftLeft0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~10_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \RotateLeft0~11_combout\);

-- Location: LCCOMB_X114_Y39_N18
\RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \RotateLeft0~12_combout\);

-- Location: LCCOMB_X113_Y39_N26
\RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\shAmount[0]~input_o\ & ((\RotateLeft0~8_combout\))) # (!\shAmount[0]~input_o\ & (\RotateLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~12_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateLeft0~8_combout\,
	combout => \RotateLeft0~13_combout\);

-- Location: LCCOMB_X112_Y39_N22
\RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~4_combout\ = (\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\))) # (!\shAmount[1]~input_o\ & (\dataIn[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[7]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[1]~input_o\,
	combout => \RotateRight0~4_combout\);

-- Location: LCCOMB_X113_Y39_N0
\RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~5_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~4_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~4_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateRight0~2_combout\,
	combout => \RotateRight0~5_combout\);

-- Location: LCCOMB_X112_Y39_N16
\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X113_Y40_N24
\dataOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~16_combout\ = (\dataOut~7_combout\ & ((\RotateRight0~5_combout\) # ((\dataOut~8_combout\)))) # (!\dataOut~7_combout\ & (((!\dataOut~8_combout\ & \ShiftRight0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~7_combout\,
	datab => \RotateRight0~5_combout\,
	datac => \dataOut~8_combout\,
	datad => \ShiftRight0~7_combout\,
	combout => \dataOut~16_combout\);

-- Location: LCCOMB_X113_Y40_N2
\dataOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~17_combout\ = (\dataOut~8_combout\ & ((\dataOut~16_combout\ & ((\RotateLeft0~13_combout\))) # (!\dataOut~16_combout\ & (\RotateLeft0~11_combout\)))) # (!\dataOut~8_combout\ & (((\dataOut~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~11_combout\,
	datab => \dataOut~8_combout\,
	datac => \RotateLeft0~13_combout\,
	datad => \dataOut~16_combout\,
	combout => \dataOut~17_combout\);

-- Location: LCCOMB_X113_Y40_N20
\dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~18_combout\ = (\RotateRight0~7_combout\ & ((\dataOut~14_combout\) # ((\dataOut~17_combout\ & \dataOut~11_combout\)))) # (!\RotateRight0~7_combout\ & (\dataOut~17_combout\ & ((\dataOut~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~7_combout\,
	datab => \dataOut~17_combout\,
	datac => \dataOut~14_combout\,
	datad => \dataOut~11_combout\,
	combout => \dataOut~18_combout\);

-- Location: LCCOMB_X113_Y40_N6
\dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~19_combout\ = (\dataOut~18_combout\) # ((\ShiftLeft0~3_combout\ & \dataOut~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~3_combout\,
	datac => \dataOut~12_combout\,
	datad => \dataOut~18_combout\,
	combout => \dataOut~19_combout\);

-- Location: LCCOMB_X113_Y39_N12
\RotateLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~17_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~12_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~12_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~17_combout\);

-- Location: LCCOMB_X112_Y39_N6
\RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & ((\dataIn[2]~input_o\))) # (!\shAmount[0]~input_o\ & (\dataIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => \shAmount[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \RotateLeft0~15_combout\);

-- Location: LCCOMB_X112_Y39_N4
\RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \shAmount[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \dataIn[1]~input_o\,
	combout => \RotateLeft0~14_combout\);

-- Location: LCCOMB_X112_Y40_N4
\RotateLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~16_combout\ = (\RotateLeft0~15_combout\) # (\RotateLeft0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~15_combout\,
	datad => \RotateLeft0~14_combout\,
	combout => \RotateLeft0~16_combout\);

-- Location: LCCOMB_X111_Y39_N0
\RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~1_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateRight0~4_combout\,
	combout => \RotateRight0~8_combout\);

-- Location: LCCOMB_X114_Y39_N0
\RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (\shAmount[0]~input_o\ & ((\RotateRight0~0_combout\))) # (!\shAmount[0]~input_o\ & (\RotateRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~6_combout\,
	datab => \RotateRight0~0_combout\,
	datac => \shAmount[0]~input_o\,
	combout => \RotateRight0~9_combout\);

-- Location: LCCOMB_X112_Y40_N22
\dataOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~20_combout\ = (\shAmount[2]~input_o\ & ((\RotateRight0~8_combout\) # ((\dirLeft~input_o\)))) # (!\shAmount[2]~input_o\ & (((\RotateRight0~9_combout\ & !\dirLeft~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \RotateRight0~9_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~20_combout\);

-- Location: LCCOMB_X112_Y40_N0
\dataOut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~21_combout\ = (\dataOut~20_combout\ & ((\RotateLeft0~17_combout\) # ((!\dirLeft~input_o\)))) # (!\dataOut~20_combout\ & (((\RotateLeft0~16_combout\ & \dirLeft~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~17_combout\,
	datab => \RotateLeft0~16_combout\,
	datac => \dataOut~20_combout\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~21_combout\);

-- Location: LCCOMB_X112_Y40_N10
\dataOut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~22_combout\ = (!\dirLeft~input_o\ & \shArith~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datac => \shArith~input_o\,
	combout => \dataOut~22_combout\);

-- Location: LCCOMB_X112_Y40_N28
\dataOut~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~23_combout\ = (\dataOut~22_combout\ & (((\RotateRight0~9_combout\)))) # (!\dataOut~22_combout\ & ((\RotateLeft0~15_combout\) # ((\RotateLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~22_combout\,
	datab => \RotateLeft0~15_combout\,
	datac => \RotateRight0~9_combout\,
	datad => \RotateLeft0~14_combout\,
	combout => \dataOut~23_combout\);

-- Location: LCCOMB_X112_Y40_N14
\dataOut~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~24_combout\ = (\shAmount[2]~input_o\ & (\dataOut~22_combout\ & ((\dataIn[7]~input_o\)))) # (!\shAmount[2]~input_o\ & (((\dataOut~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~22_combout\,
	datab => \dataOut~23_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \dataIn[7]~input_o\,
	combout => \dataOut~24_combout\);

-- Location: LCCOMB_X112_Y40_N16
\dataOut~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~25_combout\ = (\rotate~input_o\ & (\dataOut~21_combout\)) # (!\rotate~input_o\ & ((\dataOut~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut~21_combout\,
	datac => \dataOut~24_combout\,
	datad => \rotate~input_o\,
	combout => \dataOut~25_combout\);

-- Location: LCCOMB_X114_Y40_N6
\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \RotateRight0~1_combout\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X114_Y40_N16
\dataOut~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~27_combout\ = (\dirLeft~input_o\ & (((\RotateLeft0~5_combout\) # (!\shAmount[2]~input_o\)))) # (!\dirLeft~input_o\ & (\ShiftRight0~8_combout\ & ((\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \RotateLeft0~5_combout\,
	datac => \dirLeft~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~27_combout\);

-- Location: LCCOMB_X114_Y40_N28
\dataOut~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~26_combout\ = (\dataOut~22_combout\ & ((\dataIn[7]~input_o\) # ((!\shAmount[2]~input_o\)))) # (!\dataOut~22_combout\ & (((\ShiftLeft0~0_combout\ & \shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataOut~22_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~26_combout\);

-- Location: LCCOMB_X114_Y40_N26
\dataOut~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~28_combout\ = (\rotate~input_o\ & (\dataOut~27_combout\ $ (((!\shAmount[2]~input_o\))))) # (!\rotate~input_o\ & (((\dataOut~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \dataOut~27_combout\,
	datac => \dataOut~26_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~28_combout\);

-- Location: LCCOMB_X114_Y40_N12
\dataOut~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~29_combout\ = (\dataOut~28_combout\ & (((\ShiftRight0~1_combout\) # (\shAmount[2]~input_o\)))) # (!\dataOut~28_combout\ & (\RotateLeft0~2_combout\ & ((!\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~28_combout\,
	datab => \RotateLeft0~2_combout\,
	datac => \ShiftRight0~1_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~29_combout\);

-- Location: LCCOMB_X112_Y40_N12
\dataOut~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~32_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\) # (\dirLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~32_combout\);

-- Location: LCCOMB_X112_Y40_N6
\dataOut~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~33_combout\ = (\dirLeft~input_o\) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~33_combout\);

-- Location: LCCOMB_X113_Y40_N8
\dataOut~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~34_combout\ = (\dataOut~32_combout\ & (\dataOut~33_combout\)) # (!\dataOut~32_combout\ & ((\dataOut~33_combout\ & (\ShiftLeft0~1_combout\)) # (!\dataOut~33_combout\ & ((\RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~32_combout\,
	datab => \dataOut~33_combout\,
	datac => \ShiftLeft0~1_combout\,
	datad => \RotateRight0~3_combout\,
	combout => \dataOut~34_combout\);

-- Location: LCCOMB_X113_Y40_N18
\dataOut~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~35_combout\ = (\dataOut~32_combout\ & ((\dataOut~34_combout\ & ((\RotateLeft0~7_combout\))) # (!\dataOut~34_combout\ & (\ShiftRight0~6_combout\)))) # (!\dataOut~32_combout\ & (((\dataOut~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~32_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \dataOut~34_combout\,
	datad => \RotateLeft0~7_combout\,
	combout => \dataOut~35_combout\);

-- Location: LCCOMB_X112_Y40_N26
\dataOut~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~31_combout\ = (!\dirLeft~input_o\ & (!\rotate~input_o\ & \shArith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datac => \shArith~input_o\,
	combout => \dataOut~31_combout\);

-- Location: LCCOMB_X114_Y40_N22
\dataOut~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~30_combout\ = (\dirLeft~input_o\ & (((!\shAmount[2]~input_o\)))) # (!\dirLeft~input_o\ & (!\rotate~input_o\ & (\shArith~input_o\ $ (!\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datac => \shArith~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~30_combout\);

-- Location: LCCOMB_X113_Y40_N12
\dataOut~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~36_combout\ = (\dataOut~31_combout\ & (((\ShiftRight0~4_combout\) # (\dataOut~30_combout\)))) # (!\dataOut~31_combout\ & (\dataOut~35_combout\ & ((!\dataOut~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~35_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \dataOut~31_combout\,
	datad => \dataOut~30_combout\,
	combout => \dataOut~36_combout\);

-- Location: LCCOMB_X113_Y40_N22
\dataOut~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~37_combout\ = (\dataOut~36_combout\ & (((\dataIn[7]~input_o\) # (!\dataOut~30_combout\)))) # (!\dataOut~36_combout\ & (\RotateLeft0~9_combout\ & ((\dataOut~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~36_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \dataIn[7]~input_o\,
	datad => \dataOut~30_combout\,
	combout => \dataOut~37_combout\);

-- Location: LCCOMB_X113_Y40_N0
\dataOut~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~38_combout\ = (\dataOut~32_combout\ & ((\dataOut~33_combout\) # ((\RotateRight0~7_combout\)))) # (!\dataOut~32_combout\ & (!\dataOut~33_combout\ & ((\RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~32_combout\,
	datab => \dataOut~33_combout\,
	datac => \RotateRight0~7_combout\,
	datad => \RotateRight0~5_combout\,
	combout => \dataOut~38_combout\);

-- Location: LCCOMB_X113_Y40_N10
\dataOut~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~39_combout\ = (\dataOut~33_combout\ & ((\dataOut~38_combout\ & (\RotateLeft0~11_combout\)) # (!\dataOut~38_combout\ & ((\ShiftLeft0~3_combout\))))) # (!\dataOut~33_combout\ & (((\dataOut~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~11_combout\,
	datab => \dataOut~33_combout\,
	datac => \ShiftLeft0~3_combout\,
	datad => \dataOut~38_combout\,
	combout => \dataOut~39_combout\);

-- Location: LCCOMB_X113_Y40_N28
\dataOut~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~40_combout\ = (\dataOut~31_combout\ & (((\dataOut~30_combout\)))) # (!\dataOut~31_combout\ & ((\dataOut~30_combout\ & ((\RotateLeft0~13_combout\))) # (!\dataOut~30_combout\ & (\dataOut~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~39_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \dataOut~31_combout\,
	datad => \dataOut~30_combout\,
	combout => \dataOut~40_combout\);

-- Location: LCCOMB_X113_Y40_N14
\dataOut~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~41_combout\ = (\dataOut~31_combout\ & ((\dataOut~40_combout\ & (\dataIn[7]~input_o\)) # (!\dataOut~40_combout\ & ((\ShiftRight0~7_combout\))))) # (!\dataOut~31_combout\ & (\dataOut~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~31_combout\,
	datab => \dataOut~40_combout\,
	datac => \dataIn[7]~input_o\,
	datad => \ShiftRight0~7_combout\,
	combout => \dataOut~41_combout\);

-- Location: LCCOMB_X112_Y40_N24
\dataOut~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~42_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\ & ((\RotateRight0~9_combout\))) # (!\shAmount[2]~input_o\ & (\RotateRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \RotateRight0~9_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~42_combout\);

-- Location: LCCOMB_X112_Y40_N18
\dataOut~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~43_combout\ = (\dataOut~42_combout\) # ((\dataIn[7]~input_o\ & !\rotate~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut~42_combout\,
	datac => \dataIn[7]~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~43_combout\);

-- Location: LCCOMB_X112_Y40_N30
\dataOut~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~45_combout\ = (\shAmount[2]~input_o\ & ((\RotateLeft0~14_combout\) # ((\RotateLeft0~15_combout\)))) # (!\shAmount[2]~input_o\ & (((\RotateLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~14_combout\,
	datab => \RotateLeft0~15_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \RotateLeft0~17_combout\,
	combout => \dataOut~45_combout\);

-- Location: LCCOMB_X112_Y40_N20
\dataOut~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~44_combout\ = (\dataOut~31_combout\ & (\dataOut~43_combout\)) # (!\dataOut~31_combout\ & ((\dataOut~33_combout\ & ((\dataOut~45_combout\))) # (!\dataOut~33_combout\ & (\dataOut~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~31_combout\,
	datab => \dataOut~43_combout\,
	datac => \dataOut~45_combout\,
	datad => \dataOut~33_combout\,
	combout => \dataOut~44_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


