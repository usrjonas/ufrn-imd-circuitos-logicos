library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY componente_logico IS
	PORT ( 
            a, b        : IN std_logic_vector (7 downto 0);
            m           : IN std_logic;
            s           : IN std_logic_vector (1 downto 0);
            o_a, o_b    : OUT std_logic_vector (7 downto 0);
            carry       : OUT std_logic
         );
END;

ARCHITECTURE architecture_componente_logico OF componente_logico is

    SIGNAL temp_max : std_logic_vector(7 downto 0);

BEGIN
PROCESS (a, b, s)
BEGIN

    

END PROCESS;
END architecture_componente_logico;