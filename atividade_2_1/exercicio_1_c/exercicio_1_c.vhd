library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_1_c IS
	PORT ( 
            i, s : IN std_logic_vector (1 downto 0);
            a, b, c, d : OUT std_logic_vector (1 downto 0)
		  );
END;

ARCHITECTURE if_then_else OF exercicio_1_c is
BEGIN
PROCESS (i)
BEGIN

    a <= "00";
    b <= "00";
    c <= "00";
    d <= "00";

    IF      (s = "00") THEN a <= i;
    ELSIF   (s = "01") THEN b <= i;
    ELSIF   (s = "10") THEN c <= i;
    ELSE                    d <= i;
    END IF;

END PROCESS;
END if_then_else;