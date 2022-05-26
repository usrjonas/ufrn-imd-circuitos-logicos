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
-- Generated on "05/24/2022 11:33:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio_1_d
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio_1_d_vhd_vec_tst IS
END exercicio_1_d_vhd_vec_tst;
ARCHITECTURE exercicio_1_d_arch OF exercicio_1_d_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL i : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT exercicio_1_d
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	i : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : exercicio_1_d
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	i => i
	);
-- i[1]
t_prcs_i_1: PROCESS
BEGIN
LOOP
	i(1) <= '0';
	WAIT FOR 4000 ps;
	i(1) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_1;
-- i[0]
t_prcs_i_0: PROCESS
BEGIN
LOOP
	i(0) <= '0';
	WAIT FOR 2000 ps;
	i(0) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_0;
END exercicio_1_d_arch;
