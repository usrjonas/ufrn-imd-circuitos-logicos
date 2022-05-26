library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_1_d IS
	PORT ( 
            i, s : IN std_logic_vector (1 downto 0);
            a, b, c, d : OUT std_logic_vector (1 downto 0)
		  );
END;

ARCHITECTURE architecture_for_case OF exercicio_1_d is
BEGIN
PROCESS (i)
BEGIN

    a <= "00";
    b <= "00";
    c <= "00";
    d <= "00";

    CASE s IS
        WHEN "00" => a <= i;
        WHEN "01" => b <= i;
        WHEN "10" => c <= i;
        WHEN "11" => d <= i;
    END CASE;

END PROCESS;
END architecture_for_case;