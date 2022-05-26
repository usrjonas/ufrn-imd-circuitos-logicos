library ieee;
use ieee.std_logic_1164.all;

ENTITY questao_2_estrutural IS
	PORT ( 
			 a, b, c, d : IN std_logic;
			 x : OUT std_logic
		  );
END;

ARCHITECTURE estrutural OF questao_2_estrutural IS

    COMPONENT c_not IS
        PORT (
                a: IN std_logic;
                s: OUT std_logic
            );
    END COMPONENT;

    COMPONENT c_and IS
        PORT (
                a, b: IN std_logic;
                s: OUT std_logic
            );
    END COMPONENT;

    COMPONENT c_or IS
        PORT (
                a, b: IN std_logic;
                s: OUT std_logic
            );
    END COMPONENT;

    SIGNAL temp_vector : std_logic_vector(0 to 11);
BEGIN
    instancia_0 : c_and PORT MAP (a, b, temp_vector(0));                            -- a and b
    instancia_1 : c_and PORT MAP (a, c, temp_vector(1));                            -- a and c
    instancia_2 : c_not PORT MAP (b, temp_vector(2));                               -- not b
    instancia_3 : c_not PORT MAP (c, temp_vector(3));                               -- not c
    instancia_4 : c_not PORT MAP (d, temp_vector(4));                               -- not d
    instancia_5 : c_and PORT MAP (temp_vector(2), temp_vector(3), temp_vector(5));  -- (not b) and (not c)
    instancia_6 : c_or PORT MAP (temp_vector(5), c, temp_vector(6));                -- ((not b) and (not c)) or c
    instancia_7 : c_not PORT MAP (temp_vector(6), temp_vector(7));                  -- not expressao_2
    instancia_8 : c_and PORT MAP (temp_vector(7), temp_vector(4), temp_vector(8));  -- (not expressao_2) and (not d)
    instancia_9 : c_not PORT MAP (temp_vector(1), temp_vector(9));                  -- not (a and c)
    instancia_10 : c_or PORT MAP (temp_vector(0), temp_vector(9), temp_vector(10)); -- (a and b) or (not (a and c))
    instancia_11 : c_or PORT MAP (temp_vector(10), temp_vector(8), temp_vector(11));-- expressao_1 or expressao_3

    x <= temp_vector(11);
END estrutural;