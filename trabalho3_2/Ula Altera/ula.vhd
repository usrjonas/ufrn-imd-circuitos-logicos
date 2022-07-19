library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

ENTITY ula IS
	PORT ( 
            e1, e2: IN std_logic;
            s: IN std_logic_vector(2  downto 0);
            i: IN std_logic_vector(15 downto 0);
            d1, d2, d3, d4: OUT std_logic_vector(6 downto 0)
		  );
END;

ARCHITECTURE bits_16 OF ula is

    COMPONENT display_sete_seg IS
    PORT ( 
            i : IN std_logic_vector (3 downto 0);
            o : OUT std_logic_vector (6 downto 0)
		  );
    END COMPONENT;

    SIGNAL a, b   : std_logic_vector(15 downto 0);
    SIGNAL o      : std_logic_vector(15 downto 0);
    SIGNAL f1, f2 : std_logic;

BEGIN
PROCESS (e1, e2, i, a, b, s, f1, f2)
BEGIN
    IF (e1 = '0') THEN
        a <= i;
        f1 <= '1';
    END IF

    IF (e2 = '0') THEN
        b <= i;
        f2 <= '1';
    END IF

    IF (f1 = '1' AND f2 = '1') THEN
        CASE s IS
            WHEN "000" => o <= a + b;
            WHEN "001" => o <= a - b;
            WHEN "010" => o <= std_logic_vector(shift_left (unsigned(a), 1));
            WHEN "011" => o <= std_logic_vector(shift_right(unsigned(a), 1));
            WHEN "100" => o <= a and  b;
            WHEN "101" => o <= a  or  b;
            WHEN "110" => o <= a xor  b;
            WHEN "111" => o <= a xnor b;
            WHEN others => o <= "0000000000000000";
        END CASE;
    END IF;
END PROCESS;

ent0: display_sete_seg PORT MAP (o(15 downto 12), d1);
  
ent1: display_sete_seg PORT MAP (o(11 downto 8), d2);

ent2: display_sete_seg PORT MAP (o(7 downto 4), d3);

ent3: display_sete_seg PORT MAP (o(3 downto 0), d4);
END bits_16;