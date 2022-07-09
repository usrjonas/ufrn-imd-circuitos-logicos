library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY exercicio_1 IS
	PORT ( 
            a, b: IN std_logic_vector (7 downto 0);
            s   : IN std_logic_vector (3 downto 0);
            f   : OUT std_logic_vector (7 downto 0)
         );
END;

ARCHITECTURE architecture_ula OF exercicio_1 is

    COMPONENT somador_um_byte IS
	PORT ( 
            a, b    : IN std_logic_vector (7 downto 0);
            c_in    : IN std_logic;
            c_out   : OUT std_logic;
            f       : OUT std_logic_vector (7 downto 0)
         );
    END COMPONENT;

    COMPONENT extensor_aritmetico IS
	PORT ( 
            b           : IN std_logic;
            m           : IN std_logic;
            s           : IN std_logic_vector (1 downto 0);
            y           : OUT std_logic
         );
    END COMPONENT;

    COMPONENT extensor_logico IS
	PORT ( 
            a, b        : IN std_logic;
            m           : IN std_logic;
            s           : IN std_logic_vector (1 downto 0);
            x           : OUT std_logic
         );
    END COMPONENT;

    COMPONENT somador_um_bit IS
	PORT (
            a, b, c_in	    : in  std_logic;
            s, c_out		: out std_logic
         );
    END COMPONENT;

    SIGNAL m        : std_logic;
    SIGNAL seletor  : std_logic_vector(1 downto 0);

    SIGNAL out_y_extensor_aritmetico: std_logic_vector(7 downto 0);
    SIGNAL out_x_extensor_logico    : std_logic_vector(7 downto 0);

    SIGNAL carry                    : std_logic_vector(7 downto 0);
    SIGNAL out_f_somador_um_bit     : std_logic_vector(7 downto 0);
    
    SIGNAL out_f_somador_um_byte    : std_logic_vector(7 downto 0);
    SIGNAL carry_out                : std_logic;
    SIGNAL first_carry              : std_logic;

BEGIN

    m           <= s(0); 
    seletor(1)  <= s(1);
    seletor(0)  <= s(2);

    first_carry <= (not m) and ( ( seletor(1) and (not seletor(0)) ) or ( (not seletor(1) and seletor(0)) ) );

    extensor_aritmetico_0   : extensor_aritmetico   PORT MAP ( b(0), m, seletor, out_y_extensor_aritmetico(0) );
    extensor_aritmetico_1   : extensor_aritmetico   PORT MAP ( b(1), m, seletor, out_y_extensor_aritmetico(1) );
    extensor_aritmetico_2   : extensor_aritmetico   PORT MAP ( b(2), m, seletor, out_y_extensor_aritmetico(2) );
    extensor_aritmetico_3   : extensor_aritmetico   PORT MAP ( b(3), m, seletor, out_y_extensor_aritmetico(3) );
    extensor_aritmetico_4   : extensor_aritmetico   PORT MAP ( b(4), m, seletor, out_y_extensor_aritmetico(4) );
    extensor_aritmetico_5   : extensor_aritmetico   PORT MAP ( b(5), m, seletor, out_y_extensor_aritmetico(5) );
    extensor_aritmetico_6   : extensor_aritmetico   PORT MAP ( b(6), m, seletor, out_y_extensor_aritmetico(6) );
    extensor_aritmetico_7   : extensor_aritmetico   PORT MAP ( b(7), m, seletor, out_y_extensor_aritmetico(7) );
    
    extensor_logico_0       : extensor_logico       PORT MAP ( a(0), b(0), m, seletor, out_x_extensor_logico(0) );
    extensor_logico_1       : extensor_logico       PORT MAP ( a(1), b(1), m, seletor, out_x_extensor_logico(1) );
    extensor_logico_2       : extensor_logico       PORT MAP ( a(2), b(2), m, seletor, out_x_extensor_logico(2) );
    extensor_logico_3       : extensor_logico       PORT MAP ( a(3), b(3), m, seletor, out_x_extensor_logico(3) );
    extensor_logico_4       : extensor_logico       PORT MAP ( a(4), b(4), m, seletor, out_x_extensor_logico(4) );
    extensor_logico_5       : extensor_logico       PORT MAP ( a(5), b(5), m, seletor, out_x_extensor_logico(5) );
    extensor_logico_6       : extensor_logico       PORT MAP ( a(6), b(6), m, seletor, out_x_extensor_logico(6) );
    extensor_logico_7       : extensor_logico       PORT MAP ( a(7), b(7), m, seletor, out_x_extensor_logico(7) );

    somador_um_byte_0       : somador_um_byte       PORT MAP ( out_y_extensor_aritmetico, out_x_extensor_logico, first_carry, carry_out, out_f_somador_um_byte );

    f <= out_f_somador_um_byte;

END architecture_ula;