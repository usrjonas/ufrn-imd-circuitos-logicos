library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY trabalho3_3 IS
	PORT ( 
            e1, e2          : IN std_logic;
            clk             : IN std_logic;
            i               : IN std_logic_vector(15 downto 0);
            d1, d2, d3, d4  : OUT std_logic_vector(6 downto 0);
            l1, l2          : OUT std_logic;
            aout, bout      : OUT std_logic_vector(15 downto 0);
            f1out, f2out    : OUT std_logic;
            counterOut      : OUT std_logic_vector(15 downto 0);
            isRunnigOut     : OUT std_logic
		  );
END;

ARCHITECTURE hardware OF trabalho3_3 is

    COMPONENT display_sete_seg IS
    PORT ( 
            i : IN std_logic_vector (3 downto 0);
            o : OUT std_logic_vector (6 downto 0)
		  );
    END COMPONENT;

    SIGNAL a, b   : std_logic_vector(15 downto 0);
    SIGNAL f1, f2 : std_logic := '0';

    SIGNAL o      : std_logic_vector(15 downto 0) := "0000000000000000";
    SIGNAL counter: std_logic_vector(15 downto 0) := "0000000000000000";

    SIGNAL isRunnig: std_logic := '0';
    SIGNAL tempisRunnig: std_logic := '0';

BEGIN
    -- clk <= not clk after ClockPeriod / 2;
PROCESS (e1, e2, i, a, b, f1, f2, o, counter, clk, isRunnig)
BEGIN
    -- Clock na borda de subida
    IF rising_edge(clk) THEN
        -- Para mostrar valores em tempo real
        o <= i;

        -- Recebe os valores de A
        IF (e1 = '0' and isRunnig = '0') THEN
            a   <= i;
            f1  <= '1';
            l1  <= '1';
            -- add code: wait 50 ms
        ELSE
            l1  <= '0';
        END IF;

        -- Recebe os valores de B
        IF (e2 = '0' and isRunnig = '0') THEN
            b   <= i;
            f2  <= '1';
            l2  <= '1';
            -- add code: wait 50 ms
        ELSE
            l2  <= '0';
        END IF;

        -- Calcula o quociente
        IF (f1  = '1' and f2  = '1' and isRunnig = '0') THEN
            IF (a >= b) THEN
                a       <= a - b;
                counter <= counter + '1';
            ELSE
                tempisRunnig <= '1';
            END IF;

            -- Finalizou a divisão, então flags são zeradas 
            IF (tempisRunnig = '1') THEN
                f1  <= '0';
                f2  <= '0';

                -- Se A < B, então da erro
                IF (counter = "0000000000000000") THEN
                    o   <= "1110111011101110";
                ELSE
                    o <= counter;
                END IF;

                -- Zera o contador
                counter <= "0000000000000000";
                isRunnig <= '1';
            END IF;
        END IF;
    END IF;

END PROCESS;

ent0: display_sete_seg PORT MAP (o(15 downto 12), d1);
ent1: display_sete_seg PORT MAP (o(11 downto 8), d2);
ent2: display_sete_seg PORT MAP (o(7 downto 4), d3);
ent3: display_sete_seg PORT MAP (o(3 downto 0), d4);

f1out <= f1;
f2out <= f2;
isRunnigOut <= isRunnig;
aout <= a;
bout <= b;
counterOut <= counter;

END hardware;