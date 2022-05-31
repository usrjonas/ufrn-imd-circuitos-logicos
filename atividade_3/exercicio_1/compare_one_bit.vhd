library ieee;
use ieee.std_logic_1164.all;

ENTITY compare_one_bit IS
	PORT (
            a, b: IN std_logic;
            i_x, i_y, i_z: IN std_logic;
            x, y, z: OUT std_logic
         );
END;

ARCHITECTURE architecture_compare_one_bit OF compare_one_bit is
BEGIN
PROCESS (a, b, i_x, i_y, i_z)
BEGIN

    x <= '0';
    y <= '0';
    z <= '0';

    IF (i_x = '1') THEN
        x <= a xnor b;
        y <= a and (not b);
        z <= (not a) and b;
    ELSIF (i_y = '1') THEN
        y <= '1';
    ELSIF (i_z = '1') THEN
        z <= '1';
    END IF;


END PROCESS;
END architecture_compare_one_bit;