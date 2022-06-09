library ieee;
use ieee.std_logic_1164.all;

ENTITY somador_um_byte IS
	PORT ( 
            a, b    : IN std_logic_vector (7 downto 0);
            c_in    : IN std_logic;
            c_out   : OUT std_logic;
            f       : OUT std_logic_vector (7 downto 0)
         );
END;

ARCHITECTURE architecture_somador_um_byte OF somador_um_byte is

    COMPONENT somador_um_bit IS
        PORT (
                a, b, c_in	    : in  std_logic;
                s, c_out		: out std_logic
            );
    END COMPONENT;

    SIGNAL temp_out_vector      : std_logic_vector(0 to 7);
    SIGNAL temp_carry_vector    : std_logic_vector(0 to 7);

BEGIN

    instancia_0 : somador_um_bit PORT MAP ( a(0), b(0) XOR c_in, c_in, temp_out_vector(7), temp_carry_vector(0) );
    instancia_1 : somador_um_bit PORT MAP ( a(1), b(1) XOR c_in, temp_carry_vector(0), temp_out_vector(6), temp_carry_vector(1) );
    instancia_2 : somador_um_bit PORT MAP ( a(2), b(2) XOR c_in, temp_carry_vector(1), temp_out_vector(5), temp_carry_vector(2) );
    instancia_3 : somador_um_bit PORT MAP ( a(3), b(3) XOR c_in, temp_carry_vector(2), temp_out_vector(4), temp_carry_vector(3) );
    instancia_4 : somador_um_bit PORT MAP ( a(4), b(4) XOR c_in, temp_carry_vector(3), temp_out_vector(3), temp_carry_vector(4) );
    instancia_5 : somador_um_bit PORT MAP ( a(5), b(5) XOR c_in, temp_carry_vector(4), temp_out_vector(2), temp_carry_vector(5) );
    instancia_6 : somador_um_bit PORT MAP ( a(6), b(6) XOR c_in, temp_carry_vector(5), temp_out_vector(1), temp_carry_vector(6) );
    instancia_7 : somador_um_bit PORT MAP ( a(7), b(7) XOR c_in, temp_carry_vector(6), temp_out_vector(0), temp_carry_vector(7) );

    c_out   <= temp_out_vector(7);
    f       <= temp_out_vector;

END architecture_somador_um_byte;