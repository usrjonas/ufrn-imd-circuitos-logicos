library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY extensor_logico IS
	PORT ( 
            a, b, m     : IN std_logic;
            s           : IN std_logic_vector (1 downto 0);
            x           : OUT std_logic
         );
END;

ARCHITECTURE architecture_extensor_logico OF extensor_logico is

    SIGNAL temp : std_logic_vector(4 downto 0);

BEGIN

    temp(0) <= (not m) and a;
    temp(1) <= m and (not s(0)) and s(1)        and (not b);
    temp(2) <= m and s(0)       and s(1)        and b;
    temp(3) <= m and (not s(1)) and (not a)     and (not b);
    temp(4) <= m and (not s(0)) and (not s(1))  and b;

    x <= temp(0) or temp(1) or temp(2) or temp(3) or temp(4);

END architecture_extensor_logico;