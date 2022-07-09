library ieee;
use ieee.std_logic_1164.all;

ENTITY trabalho3_1 IS
	PORT ( 
            i : IN std_logic_vector (3 downto 0);
            o : OUT std_logic_vector (6 downto 0)
		  );
END;

ARCHITECTURE decod_display_sete_seg OF trabalho3_1 is
BEGIN
PROCESS (i)
BEGIN

    o <= "0000000";                    -- default value 

    CASE i IS
        WHEN "0000" => o <= "1111110"; -- 0
        WHEN "0001" => o <= "0110000"; -- 1
        WHEN "0010" => o <= "1101101"; -- 2
        WHEN "0011" => o <= "1111001"; -- 3
        WHEN "0100" => o <= "0110011"; -- 4
        WHEN "0101" => o <= "1011011"; -- 5
        WHEN "0110" => o <= "1011111"; -- 6
        WHEN "0111" => o <= "1110000"; -- 7
        WHEN "1000" => o <= "1111111"; -- 8
        WHEN "1001" => o <= "1111011"; -- 9
        WHEN "1010" => o <= "1110111"; -- a
        WHEN "1011" => o <= "0011111"; -- b
        WHEN "1100" => o <= "1001110"; -- c
        WHEN "1101" => o <= "0111101"; -- d
        WHEN "1110" => o <= "1001111"; -- e
        WHEN "1111" => o <= "1000111"; -- f
    END CASE;

END PROCESS;
END decod_display_sete_seg;