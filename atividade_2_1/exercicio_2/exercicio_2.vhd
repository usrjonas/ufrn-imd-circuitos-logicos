library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_2 IS
	PORT ( 
            b1, b2, b3, b4, b5, b6, b7, b8: IN std_logic;
            c : OUT character
         );
END;

ARCHITECTURE architecture_exercicio_2 OF exercicio_2 is

    SIGNAL o : std_logic_vector (2 downto 0);

BEGIN

PROCESS (b1, b2, b3, b4, b5, b6, b7, b8)
BEGIN

    IF      (b1 = '1') THEN o <= "001";
    ELSIF   (b2 = '1') THEN o <= "010";
    ELSIF   (b3 = '1') THEN o <= "011";
    ELSIF   (b4 = '1') THEN o <= "100";
    ELSIF   (b5 = '1') THEN o <= "101";
    ELSIF   (b6 = '1') THEN o <= "110";
    ELSIF   (b7 = '1') THEN o <= "111";
    ELSIF   (b8 = '1') THEN o <= "000";
    ELSE                    o <= null;
    END IF;

    IF      (o = "001") THEN c <= 'A';
    ELSIF   (o = "010") THEN c <= 'B';
    ELSIF   (o = "011") THEN c <= 'C';
    ELSIF   (o = "100") THEN c <= 'D';
    ELSIF   (o = "101") THEN c <= 'E';
    ELSIF   (o = "110") THEN c <= 'F';
    ELSIF   (o = "111") THEN c <= 'G';
    ELSIF   (o = "000") THEN c <= 'H';
    ELSE                     c <= 'X';
    END IF;

END PROCESS;

END architecture_exercicio_2;