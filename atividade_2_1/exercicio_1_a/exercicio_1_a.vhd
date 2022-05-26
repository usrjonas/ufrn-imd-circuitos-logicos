library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_1_a IS
	PORT ( 
			 i, s : IN std_logic_vector (1 downto 0);
			 a, b, c, d : OUT std_logic_vector (1 downto 0)
		  );
END;

ARCHITECTURE when_else OF exercicio_1_a is
BEGIN

    a <= i WHEN s = "00" ELSE "00";
    b <= i WHEN s = "01" ELSE "00";
    c <= i WHEN s = "10" ELSE "00";
    d <= i WHEN s = "11" ELSE "00";

END when_else;