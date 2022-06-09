library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY extensor_aritmetico IS
	PORT ( 
            b, m: IN std_logic;
            s   : IN std_logic_vector (1 downto 0);
            y   : OUT std_logic
         );
END;

ARCHITECTURE architecture_extensor_aritmetico OF extensor_aritmetico is

    SIGNAL temp : std_logic_vector(2 downto 0);

BEGIN

    temp(0) <= (not m) and b and (not s(0)) and (not s(1));
    temp(1) <= (not m) and (not b) and s(0);
    temp(2) <= (not m) and s(0) and s(1);

    y <= temp(0) or temp(1) or temp(2);

END architecture_extensor_aritmetico;