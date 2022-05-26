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

-- DATE "05/24/2022 12:08:57"

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

ENTITY 	exercicio IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	c_in : IN std_logic;
	c_out : OUT std_logic;
	f : OUT std_logic_vector(7 DOWNTO 0)
	);
END exercicio;

-- Design Ports Information
-- c_out	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c_in : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_f : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \instancia_0|s~0_combout\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \instancia_1|s~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \instancia_1|c_out~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \instancia_2|s~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \instancia_3|s~combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \instancia_4|s~0_combout\ : std_logic;
SIGNAL \instancia_4|s~combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \instancia_3|c_out~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \instancia_5|s~combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \instancia_6|s~0_combout\ : std_logic;
SIGNAL \instancia_6|s~combout\ : std_logic;
SIGNAL \instancia_5|c_out~combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \instancia_7|s~combout\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \instancia_5|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \instancia_6|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \instancia_3|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \instancia_4|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \instancia_1|ALT_INV_c_out~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c_in <= c_in;
c_out <= ww_c_out;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_c_in~input_o\ <= NOT \c_in~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\instancia_5|ALT_INV_c_out~combout\ <= NOT \instancia_5|c_out~combout\;
\instancia_6|ALT_INV_s~0_combout\ <= NOT \instancia_6|s~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\instancia_3|ALT_INV_c_out~combout\ <= NOT \instancia_3|c_out~combout\;
\instancia_4|ALT_INV_s~0_combout\ <= NOT \instancia_4|s~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\instancia_1|ALT_INV_c_out~combout\ <= NOT \instancia_1|c_out~combout\;

-- Location: IOOBUF_X89_Y8_N39
\c_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_0|s~0_combout\,
	devoe => ww_devoe,
	o => ww_c_out);

-- Location: IOOBUF_X89_Y6_N56
\f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_0|s~0_combout\,
	devoe => ww_devoe,
	o => ww_f(0));

-- Location: IOOBUF_X89_Y37_N5
\f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_1|s~combout\,
	devoe => ww_devoe,
	o => ww_f(1));

-- Location: IOOBUF_X89_Y8_N22
\f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_2|s~combout\,
	devoe => ww_devoe,
	o => ww_f(2));

-- Location: IOOBUF_X89_Y6_N5
\f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_3|s~combout\,
	devoe => ww_devoe,
	o => ww_f(3));

-- Location: IOOBUF_X89_Y38_N39
\f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_4|s~combout\,
	devoe => ww_devoe,
	o => ww_f(4));

-- Location: IOOBUF_X89_Y38_N22
\f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_5|s~combout\,
	devoe => ww_devoe,
	o => ww_f(5));

-- Location: IOOBUF_X89_Y8_N5
\f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_6|s~combout\,
	devoe => ww_devoe,
	o => ww_f(6));

-- Location: IOOBUF_X89_Y38_N56
\f[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_7|s~combout\,
	devoe => ww_devoe,
	o => ww_f(7));

-- Location: IOIBUF_X89_Y36_N4
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y35_N0
\instancia_0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_0|s~0_combout\ = !\a[0]~input_o\ $ (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	combout => \instancia_0|s~0_combout\);

-- Location: IOIBUF_X89_Y8_N55
\c_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X88_Y35_N3
\instancia_1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_1|s~combout\ = ( \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((\b[0]~input_o\ & (!\a[0]~input_o\ $ (!\c_in~input_o\))))) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\b[0]~input_o\) # (!\a[0]~input_o\ $ (\c_in~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011101101000100101110110111101101000100101110110100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_c_in~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \instancia_1|s~combout\);

-- Location: IOIBUF_X89_Y9_N38
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X88_Y35_N39
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = !\c_in~input_o\ $ (!\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X88_Y35_N36
\instancia_1|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_1|c_out~combout\ = ( \a[1]~input_o\ & ( (!\b[0]~input_o\ & (((\b[1]~input_o\)) # (\c_in~input_o\))) # (\b[0]~input_o\ & ((!\c_in~input_o\ $ (!\b[1]~input_o\)) # (\a[0]~input_o\))) ) ) # ( !\a[1]~input_o\ & ( (!\b[0]~input_o\ & (\c_in~input_o\ & 
-- ((!\b[1]~input_o\)))) # (\b[0]~input_o\ & (\a[0]~input_o\ & (!\c_in~input_o\ $ (!\b[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010010010100000001001001011111011110110101111101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \instancia_1|c_out~combout\);

-- Location: IOIBUF_X89_Y35_N44
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y35_N12
\instancia_2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_2|s~combout\ = !\comb~0_combout\ $ (!\instancia_1|c_out~combout\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \instancia_1|ALT_INV_c_out~combout\,
	datad => \ALT_INV_a[2]~input_o\,
	combout => \instancia_2|s~combout\);

-- Location: IOIBUF_X89_Y36_N38
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y35_N21
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = !\c_in~input_o\ $ (!\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	combout => \comb~1_combout\);

-- Location: IOIBUF_X89_Y36_N55
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y35_N24
\instancia_3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_3|s~combout\ = ( \a[3]~input_o\ & ( !\comb~1_combout\ $ (((!\comb~0_combout\ & (\instancia_1|c_out~combout\ & \a[2]~input_o\)) # (\comb~0_combout\ & ((\a[2]~input_o\) # (\instancia_1|c_out~combout\))))) ) ) # ( !\a[3]~input_o\ & ( 
-- !\comb~1_combout\ $ (((!\comb~0_combout\ & ((!\instancia_1|c_out~combout\) # (!\a[2]~input_o\))) # (\comb~0_combout\ & (!\instancia_1|c_out~combout\ & !\a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \instancia_1|ALT_INV_c_out~combout\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \instancia_3|s~combout\);

-- Location: IOIBUF_X89_Y35_N78
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LABCELL_X88_Y35_N18
\instancia_4|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_4|s~0_combout\ = ( \b[4]~input_o\ & ( !\c_in~input_o\ $ (\a[4]~input_o\) ) ) # ( !\b[4]~input_o\ & ( !\c_in~input_o\ $ (!\a[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datab => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \instancia_4|s~0_combout\);

-- Location: LABCELL_X88_Y35_N30
\instancia_4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_4|s~combout\ = ( \instancia_1|c_out~combout\ & ( \a[3]~input_o\ & ( !\instancia_4|s~0_combout\ $ (((!\comb~1_combout\ & (!\comb~0_combout\ & !\a[2]~input_o\)))) ) ) ) # ( !\instancia_1|c_out~combout\ & ( \a[3]~input_o\ & ( 
-- !\instancia_4|s~0_combout\ $ (((!\comb~1_combout\ & ((!\comb~0_combout\) # (!\a[2]~input_o\))))) ) ) ) # ( \instancia_1|c_out~combout\ & ( !\a[3]~input_o\ & ( !\instancia_4|s~0_combout\ $ (((!\comb~1_combout\) # ((!\comb~0_combout\ & !\a[2]~input_o\)))) ) 
-- ) ) # ( !\instancia_1|c_out~combout\ & ( !\a[3]~input_o\ & ( !\instancia_4|s~0_combout\ $ (((!\comb~1_combout\) # ((!\comb~0_combout\) # (!\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000111100101101001011010011110000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \instancia_4|ALT_INV_s~0_combout\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \instancia_1|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \instancia_4|s~combout\);

-- Location: IOIBUF_X89_Y9_N21
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LABCELL_X88_Y35_N6
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = !\c_in~input_o\ $ (!\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datac => \ALT_INV_b[5]~input_o\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X88_Y35_N27
\instancia_3|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_3|c_out~combout\ = ( \a[3]~input_o\ & ( ((!\comb~0_combout\ & (\a[2]~input_o\ & \instancia_1|c_out~combout\)) # (\comb~0_combout\ & ((\instancia_1|c_out~combout\) # (\a[2]~input_o\)))) # (\comb~1_combout\) ) ) # ( !\a[3]~input_o\ & ( 
-- (\comb~1_combout\ & ((!\comb~0_combout\ & (\a[2]~input_o\ & \instancia_1|c_out~combout\)) # (\comb~0_combout\ & ((\instancia_1|c_out~combout\) # (\a[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \instancia_1|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \instancia_3|c_out~combout\);

-- Location: LABCELL_X88_Y35_N15
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \b[4]~input_o\ & ( !\c_in~input_o\ ) ) # ( !\b[4]~input_o\ & ( \c_in~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X88_Y35_N42
\instancia_5|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_5|s~combout\ = ( \a[4]~input_o\ & ( !\a[5]~input_o\ $ (!\comb~3_combout\ $ (((\comb~2_combout\) # (\instancia_3|c_out~combout\)))) ) ) # ( !\a[4]~input_o\ & ( !\a[5]~input_o\ $ (!\comb~3_combout\ $ (((\instancia_3|c_out~combout\ & 
-- \comb~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_comb~3_combout\,
	datac => \instancia_3|ALT_INV_c_out~combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \instancia_5|s~combout\);

-- Location: IOIBUF_X89_Y9_N4
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LABCELL_X88_Y35_N9
\instancia_6|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_6|s~0_combout\ = ( \b[6]~input_o\ & ( !\c_in~input_o\ $ (\a[6]~input_o\) ) ) # ( !\b[6]~input_o\ & ( !\c_in~input_o\ $ (!\a[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \instancia_6|s~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\instancia_6|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_6|s~combout\ = ( \comb~2_combout\ & ( \a[4]~input_o\ & ( !\instancia_6|s~0_combout\ $ (((!\a[5]~input_o\ & !\comb~3_combout\))) ) ) ) # ( !\comb~2_combout\ & ( \a[4]~input_o\ & ( !\instancia_6|s~0_combout\ $ (((!\a[5]~input_o\ & 
-- ((!\comb~3_combout\) # (!\instancia_3|c_out~combout\))) # (\a[5]~input_o\ & (!\comb~3_combout\ & !\instancia_3|c_out~combout\)))) ) ) ) # ( \comb~2_combout\ & ( !\a[4]~input_o\ & ( !\instancia_6|s~0_combout\ $ (((!\a[5]~input_o\ & ((!\comb~3_combout\) # 
-- (!\instancia_3|c_out~combout\))) # (\a[5]~input_o\ & (!\comb~3_combout\ & !\instancia_3|c_out~combout\)))) ) ) ) # ( !\comb~2_combout\ & ( !\a[4]~input_o\ & ( !\instancia_6|s~0_combout\ $ (((!\a[5]~input_o\) # (!\comb~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000101111110100000010111111010000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_comb~3_combout\,
	datac => \instancia_3|ALT_INV_c_out~combout\,
	datad => \instancia_6|ALT_INV_s~0_combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \instancia_6|s~combout\);

-- Location: LABCELL_X88_Y35_N45
\instancia_5|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_5|c_out~combout\ = ( \a[4]~input_o\ & ( (!\a[5]~input_o\ & (\comb~3_combout\ & ((\instancia_3|c_out~combout\) # (\comb~2_combout\)))) # (\a[5]~input_o\ & (((\instancia_3|c_out~combout\) # (\comb~2_combout\)) # (\comb~3_combout\))) ) ) # ( 
-- !\a[4]~input_o\ & ( (!\a[5]~input_o\ & (\comb~3_combout\ & (\comb~2_combout\ & \instancia_3|c_out~combout\))) # (\a[5]~input_o\ & (((\comb~2_combout\ & \instancia_3|c_out~combout\)) # (\comb~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_comb~3_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \instancia_3|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \instancia_5|c_out~combout\);

-- Location: IOIBUF_X89_Y37_N38
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LABCELL_X88_Y35_N54
\instancia_7|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \instancia_7|s~combout\ = ( \a[7]~input_o\ & ( \b[7]~input_o\ & ( (!\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & ((\c_in~input_o\))) # (\a[6]~input_o\ & (\b[6]~input_o\)))) # (\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & (\b[6]~input_o\)) # 
-- (\a[6]~input_o\ & ((!\c_in~input_o\))))) ) ) ) # ( !\a[7]~input_o\ & ( \b[7]~input_o\ & ( (!\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & ((!\c_in~input_o\))) # (\a[6]~input_o\ & (!\b[6]~input_o\)))) # (\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ 
-- & (!\b[6]~input_o\)) # (\a[6]~input_o\ & ((\c_in~input_o\))))) ) ) ) # ( \a[7]~input_o\ & ( !\b[7]~input_o\ & ( (!\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & ((!\c_in~input_o\))) # (\a[6]~input_o\ & (!\b[6]~input_o\)))) # 
-- (\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & (!\b[6]~input_o\)) # (\a[6]~input_o\ & ((\c_in~input_o\))))) ) ) ) # ( !\a[7]~input_o\ & ( !\b[7]~input_o\ & ( (!\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & ((\c_in~input_o\))) # (\a[6]~input_o\ & 
-- (\b[6]~input_o\)))) # (\instancia_5|c_out~combout\ & ((!\a[6]~input_o\ & (\b[6]~input_o\)) # (\a[6]~input_o\ & ((!\c_in~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110101110100111000101000101111100010100010110001110101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \instancia_5|ALT_INV_c_out~combout\,
	datac => \ALT_INV_c_in~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \instancia_7|s~combout\);

-- Location: LABCELL_X48_Y36_N3
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


