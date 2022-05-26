library ieee;
use ieee.std_logic_1164.all;

ENTITY c_not IS
    PORT (
            a: IN std_logic;
            s: OUT std_logic
         );
END ENTITY;

ARCHITECTURE arch OF c_not IS
BEGIN
    s <= not a;
END arch;