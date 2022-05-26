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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/24/2022 11:40:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio_2_vhd_vec_tst IS
END exercicio_2_vhd_vec_tst;
ARCHITECTURE exercicio_2_arch OF exercicio_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL b4 : STD_LOGIC;
SIGNAL b5 : STD_LOGIC;
SIGNAL b6 : STD_LOGIC;
SIGNAL b7 : STD_LOGIC;
SIGNAL b8 : STD_LOGIC;
SIGNAL o : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT exercicio_2
	PORT (
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	b3 : IN STD_LOGIC;
	b4 : IN STD_LOGIC;
	b5 : IN STD_LOGIC;
	b6 : IN STD_LOGIC;
	b7 : IN STD_LOGIC;
	b8 : IN STD_LOGIC;
	o : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : exercicio_2
	PORT MAP (
-- list connections between master ports and signals
	b1 => b1,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b5 => b5,
	b6 => b6,
	b7 => b7,
	b8 => b8,
	o => o
	);

-- b1
t_prcs_b1: PROCESS
BEGIN
	b1 <= '1';
	WAIT FOR 2000 ps;
	b1 <= '0';
WAIT;
END PROCESS t_prcs_b1;

-- b2
t_prcs_b2: PROCESS
BEGIN
	b2 <= '0';
	WAIT FOR 2000 ps;
	b2 <= '1';
	WAIT FOR 2000 ps;
	b2 <= '0';
WAIT;
END PROCESS t_prcs_b2;

-- b3
t_prcs_b3: PROCESS
BEGIN
	b3 <= '0';
	WAIT FOR 4000 ps;
	b3 <= '1';
	WAIT FOR 2000 ps;
	b3 <= '0';
WAIT;
END PROCESS t_prcs_b3;

-- b4
t_prcs_b4: PROCESS
BEGIN
	b4 <= '0';
	WAIT FOR 6000 ps;
	b4 <= '1';
	WAIT FOR 2000 ps;
	b4 <= '0';
WAIT;
END PROCESS t_prcs_b4;

-- b5
t_prcs_b5: PROCESS
BEGIN
	b5 <= '0';
	WAIT FOR 8000 ps;
	b5 <= '1';
	WAIT FOR 2000 ps;
	b5 <= '0';
WAIT;
END PROCESS t_prcs_b5;

-- b6
t_prcs_b6: PROCESS
BEGIN
	b6 <= '0';
	WAIT FOR 10000 ps;
	b6 <= '1';
	WAIT FOR 2000 ps;
	b6 <= '0';
WAIT;
END PROCESS t_prcs_b6;

-- b7
t_prcs_b7: PROCESS
BEGIN
	b7 <= '0';
	WAIT FOR 12000 ps;
	b7 <= '1';
	WAIT FOR 2000 ps;
	b7 <= '0';
WAIT;
END PROCESS t_prcs_b7;

-- b8
t_prcs_b8: PROCESS
BEGIN
	b8 <= '0';
	WAIT FOR 14000 ps;
	b8 <= '1';
	WAIT FOR 2000 ps;
	b8 <= '0';
WAIT;
END PROCESS t_prcs_b8;
END exercicio_2_arch;
