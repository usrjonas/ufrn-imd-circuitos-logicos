library ieee;
use ieee.std_logic_1164.all;

ENTITY questao1b IS
	PORT ( 
			 a : IN std_logic;
			 b : IN std_logic;
			 s : OUT std_logic
		  );
END;
ARCHITECTURE arq1b OF questao1b IS
BEGIN
	s <= a nand b;
END arq1b;