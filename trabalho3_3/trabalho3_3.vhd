library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY trabalho3_3 IS
	PORT ( 
            e1, e2          : IN std_logic;
            i               : IN std_logic_vector(15 downto 0);
            d1, d2, d3, d4  : OUT std_logic_vector(6 downto 0);
            l1, l2          : OUT std_logic
		  );
END;

ARCHITECTURE hardware OF trabalho3_3 is

    COMPONENT display_sete_seg IS
    PORT ( 
            i : IN std_logic_vector (3 downto 0);
            o : OUT std_logic_vector (6 downto 0)
		  );
    END COMPONENT;

    CONSTANT ClockFrequency : integer := 1e3;
    CONSTANT ClockPeriod    : time    := 100 ms / ClockFrequency;

    SIGNAL a, b   : std_logic_vector(15 downto 0);
    SIGNAL f1, f2 : std_logic;

    SIGNAL o      : std_logic_vector(15 downto 0);
    SIGNAL counter: std_logic_vector(15 downto 0);

    SIGNAL clk : std_logic := '1';

BEGIN
    clk <= not clk after ClockPeriod / 2;
PROCESS (e1, e2, i, a, b, f1, f2, o, counter, clk)
BEGIN
    -- Para mostrar valores em tempo real
    o <= i;

    -- Recebe os valores de A
    IF (e1 = '0') THEN
        a   <= i;
        f1  <= '1';
        l1  <= '1';
    ELSE
        l1  <= '0';
    END IF;

    -- Recebe os valores de B
    IF (e2 = '0') THEN
        b   <= i;
        f2  <= '1';
        l2  <= '1';
    ELSE
        l2  <= '0';
    END IF;

    -- Calcula o quociente
    IF (f1  = '1' and f2  = '1') THEN
        counter <= "0000000000000000";

        -- Loop para encontrar o quociente
        -- IF (rising_edge(clk) and a >= b) THEN
        IF (a >= b) THEN
        IF rising_edge(clk) THEN
            a       <= a - b;
            counter <= counter + '1';
            ELSE 
            counter <= counter + '0';
            END IF;
            END IF;


        -- Se A < B, então da erro
        IF (counter = "0000000000000000") THEN
            o <= "1110111011101110";
        -- Se counter = 9999 então da erro por limitação do quartus.
        ELSIF (counter = "0010011100001111") THEN
            o <= "1111111111111111";
        ELSE
            o <= counter;
        END IF;

    END IF;

END PROCESS;

ent0: display_sete_seg PORT MAP (o(15 downto 12), d1);
ent1: display_sete_seg PORT MAP (o(11 downto 8), d2);
ent2: display_sete_seg PORT MAP (o(7 downto 4), d3);
ent3: display_sete_seg PORT MAP (o(3 downto 0), d4);

END hardware;