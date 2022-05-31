library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY exercicio_2 IS
	PORT ( 
            a, b, c: IN std_logic_vector (7 downto 0);
            max: OUT std_logic_vector (7 downto 0)
         );
END;

ARCHITECTURE architecture_exercicio_2 OF exercicio_2 is

    SIGNAL temp_max : std_logic_vector(7 downto 0);

BEGIN
PROCESS (a, b, c, temp_max)
BEGIN

    temp_max <= "00000000";

    IF (a(7) = b(7)) THEN
        IF (a(6) = b(6)) THEN
            IF (a(5) = b(5)) THEN
                IF (a(4) = b(4)) THEN
                    IF (a(3) = b(3)) THEN
                        IF (a(2) = b(2)) THEN
                            IF (a(1) = b(1)) THEN
                                IF (a(0) = b(0)) THEN
                                    temp_max <= a;
                                ELSIF (a(0) > b(0)) THEN
                                    temp_max <= a;
                                ELSE
                                    temp_max <= b;
                                END IF;
                            ELSIF (a(1) > b(1)) THEN
                                temp_max <= a;
                            ELSE
                                temp_max <= b;
                            END IF;
                        ELSIF (a(2) > b(2)) THEN
                            temp_max <= a;
                        ELSE
                            temp_max <= b;
                        END IF;
                    ELSIF (a(3) > b(3)) THEN
                        temp_max <= a;
                    ELSE
                        temp_max <= b;
                    END IF;
                ELSIF (a(4) > b(4)) THEN
                    temp_max <= a;
                ELSE
                    temp_max <= b;
                END IF;
            ELSIF (a(5) > b(5)) THEN
                temp_max <= a;
            ELSE
                temp_max <= b;
            END IF;
        ELSIF (a(6) > b(6)) THEN
            temp_max <= a;
        ELSE
            temp_max <= b;
        END IF;
    ELSIF (a(7) > b(7)) THEN
        temp_max <= a;
    ELSE
        temp_max <= b;
    END IF;


    IF (temp_max(7) = c(7)) THEN
        IF (temp_max(6) = c(6)) THEN
            IF (temp_max(5) = c(5)) THEN
                IF (temp_max(4) = c(4)) THEN
                    IF (temp_max(3) = c(3)) THEN
                        IF (temp_max(2) = c(2)) THEN
                            IF (temp_max(1) = c(1)) THEN
                                IF (temp_max(0) = c(0)) THEN
                                    max <= temp_max;
                                ELSIF (temp_max(0) > c(0)) THEN
                                    max <= temp_max;
                                ELSE
                                    max <= c;
                                END IF;
                            ELSIF (temp_max(1) > c(1)) THEN
                                max <= temp_max;
                            ELSE
                                max <= c;
                            END IF;
                        ELSIF (temp_max(2) > c(2)) THEN
                            max <= temp_max;
                        ELSE
                            max <= c;
                        END IF;
                    ELSIF (temp_max(3) > c(3)) THEN
                        max <= temp_max;
                    ELSE
                        max <= c;
                    END IF;
                ELSIF (temp_max(4) > c(4)) THEN
                    max <= temp_max;
                ELSE
                    max <= c;
                END IF;
            ELSIF (temp_max(5) > c(5)) THEN
                max <= temp_max;
            ELSE
                max <= c;
            END IF;
        ELSIF (temp_max(6) > c(6)) THEN
            max <= temp_max;
        ELSE
            max <= c;
        END IF;
    ELSIF (temp_max(7) > c(7)) THEN
        max <= temp_max;
    ELSE
        max <= c;
    END IF;

END PROCESS;
END architecture_exercicio_2;