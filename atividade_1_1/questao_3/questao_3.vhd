library ieee;
use ieee.std_logic_1164.all;

ENTITY questao_3 IS
	PORT ( 
			 a : IN std_logic;
			 b : IN std_logic;
			 s : OUT std_logic
		  );
END;

ARCHITECTURE arq OF questao_3 IS
BEGIN
	s <= a nand b;
END arq;