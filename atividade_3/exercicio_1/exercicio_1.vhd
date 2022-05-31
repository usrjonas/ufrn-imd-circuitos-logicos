library ieee;
use ieee.std_logic_1164.all;

ENTITY exercicio_1 IS
	PORT ( 
            a, b: IN std_logic_vector (4 downto 0);
            x, y, z: OUT std_logic
         );
END;

ARCHITECTURE architecture_compare_five_bits OF exercicio_1 is

    COMPONENT compare_one_bit IS
	PORT (
            a, b: IN std_logic;
            i_x, i_y, i_z: IN std_logic;
            x, y, z: OUT std_logic
         );
    END COMPONENT;

    SIGNAL temp_x_vector : std_logic_vector(0 to 4);
    SIGNAL temp_y_vector : std_logic_vector(0 to 4);
    SIGNAL temp_z_vector : std_logic_vector(0 to 4);

BEGIN

    instancia_0 : compare_one_bit PORT MAP ( a(4), b(4), '1', '0', '0',
                                                         temp_x_vector(4), temp_y_vector(4), temp_z_vector(4) );

    instancia_1 : compare_one_bit PORT MAP ( a(3), b(3), temp_x_vector(4), temp_y_vector(4), temp_z_vector(4),
                                                         temp_x_vector(3), temp_y_vector(3), temp_z_vector(3) );

    instancia_2 : compare_one_bit PORT MAP ( a(2), b(2), temp_x_vector(3), temp_y_vector(3), temp_z_vector(3),
                                                         temp_x_vector(2), temp_y_vector(2), temp_z_vector(2) );

    instancia_3 : compare_one_bit PORT MAP ( a(1), b(1), temp_x_vector(2), temp_y_vector(2), temp_z_vector(2),
                                                         temp_x_vector(1), temp_y_vector(1), temp_z_vector(1) );

    instancia_4 : compare_one_bit PORT MAP ( a(0), b(0), temp_x_vector(1), temp_y_vector(1), temp_z_vector(1),
                                                         temp_x_vector(0), temp_y_vector(0), temp_z_vector(0) );
    
    x <= temp_x_vector(0);
    y <= temp_y_vector(0);
    z <= temp_z_vector(0);

END architecture_compare_five_bits;