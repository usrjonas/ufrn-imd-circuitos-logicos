library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_1_b IS
	PORT ( 
            i, s : IN std_logic_vector (1 downto 0);
            a, b, c, d : OUT std_logic_vector (1 downto 0)
		  );
END;

ARCHITECTURE with_select OF exercicio_1_b is
BEGIN

    with s select a <=  i WHEN "00", "00" WHEN OTHERS;
    with s select b <=  i WHEN "01", "00" WHEN OTHERS;
    with s select c <=  i WHEN "10", "00" WHEN OTHERS;
    with s select d <=  i WHEN "11", "00" WHEN OTHERS;

END with_select;