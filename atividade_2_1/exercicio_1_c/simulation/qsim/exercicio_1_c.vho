-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/24/2022 14:06:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio_1_c IS
    PORT (
	i : IN std_logic_vector(1 DOWNTO 0);
	s : IN std_logic_vector(1 DOWNTO 0);
	a : BUFFER std_logic_vector(1 DOWNTO 0);
	b : BUFFER std_logic_vector(1 DOWNTO 0);
	c : BUFFER std_logic_vector(1 DOWNTO 0);
	d : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END exercicio_1_c;

-- Design Ports Information
-- a[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio_1_c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \d~1_combout\ : std_logic;
SIGNAL \ALT_INV_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i[1]~input_o\ : std_logic;

BEGIN

ww_i <= i;
ww_s <= s;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s[0]~input_o\ <= NOT \s[0]~input_o\;
\ALT_INV_i[0]~input_o\ <= NOT \i[0]~input_o\;
\ALT_INV_s[1]~input_o\ <= NOT \s[1]~input_o\;
\ALT_INV_i[1]~input_o\ <= NOT \i[1]~input_o\;

-- Location: IOOBUF_X89_Y36_N22
\a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => ww_a(0));

-- Location: IOOBUF_X89_Y36_N5
\a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~1_combout\,
	devoe => ww_devoe,
	o => ww_a(1));

-- Location: IOOBUF_X89_Y38_N56
\b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X89_Y37_N22
\b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~1_combout\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X89_Y37_N39
\c[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => ww_c(0));

-- Location: IOOBUF_X89_Y37_N56
\c[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~1_combout\,
	devoe => ww_devoe,
	o => ww_c(1));

-- Location: IOOBUF_X89_Y35_N62
\d[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => ww_d(0));

-- Location: IOOBUF_X89_Y37_N5
\d[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~1_combout\,
	devoe => ww_devoe,
	o => ww_d(1));

-- Location: IOIBUF_X89_Y36_N55
\i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~0_combout\ = ( !\s[1]~input_o\ & ( (\i[0]~input_o\ & !\s[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i[0]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	combout => \a~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\a~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~1_combout\ = ( !\s[1]~input_o\ & ( \i[1]~input_o\ & ( !\s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	dataf => \ALT_INV_i[1]~input_o\,
	combout => \a~1_combout\);

-- Location: LABCELL_X88_Y36_N45
\b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~0_combout\ = ( !\s[1]~input_o\ & ( (\s[0]~input_o\ & \i[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_i[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	combout => \b~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\b~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~1_combout\ = ( !\s[1]~input_o\ & ( \i[1]~input_o\ & ( \s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	dataf => \ALT_INV_i[1]~input_o\,
	combout => \b~1_combout\);

-- Location: LABCELL_X88_Y36_N54
\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \s[1]~input_o\ & ( (\i[0]~input_o\ & !\s[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i[0]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	combout => \c~0_combout\);

-- Location: LABCELL_X88_Y36_N30
\c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \s[1]~input_o\ & ( \i[1]~input_o\ & ( !\s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	dataf => \ALT_INV_i[1]~input_o\,
	combout => \c~1_combout\);

-- Location: LABCELL_X88_Y36_N39
\d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~0_combout\ = ( \s[1]~input_o\ & ( (\s[0]~input_o\ & \i[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_i[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	combout => \d~0_combout\);

-- Location: LABCELL_X88_Y36_N15
\d~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~1_combout\ = ( \s[1]~input_o\ & ( \i[1]~input_o\ & ( \s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_s[1]~input_o\,
	dataf => \ALT_INV_i[1]~input_o\,
	combout => \d~1_combout\);

-- Location: LABCELL_X80_Y6_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


