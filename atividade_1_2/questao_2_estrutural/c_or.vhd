library ieee;
use ieee.std_logic_1164.all;

ENTITY c_or IS
    PORT (
            a, b: IN std_logic;
            s: OUT std_logic
         );
END ENTITY;

ARCHITECTURE arch OF c_or IS
BEGIN
    s <= a or b;
END arch;