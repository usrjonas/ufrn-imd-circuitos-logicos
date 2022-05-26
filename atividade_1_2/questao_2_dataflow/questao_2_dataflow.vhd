library ieee;
use ieee.std_logic_1164.all;

ENTITY questao_2_dataflow IS
	PORT ( 
			 a, b, c, d : IN std_logic;
			 x : OUT std_logic
		  );
END;

ARCHITECTURE dataflow OF questao_2_dataflow IS
    SIGNAL expressao_1 : std_logic;
    SIGNAL expressao_2 : std_logic;
    SIGNAL expressao_3 : std_logic;
BEGIN
    expressao_1 <= (a and b) or (not (a and c));
    expressao_2 <= ((not b) and (not c)) or c;
    expressao_3 <= (not expressao_2) and (not d);

    x <= expressao_1 or expressao_3;
END dataflow;