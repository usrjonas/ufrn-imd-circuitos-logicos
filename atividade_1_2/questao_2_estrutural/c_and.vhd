library ieee;
use ieee.std_logic_1164.all;

ENTITY c_and IS
    PORT (
            a, b: IN std_logic;
            s: OUT std_logic
         );
END ENTITY;

ARCHITECTURE arch OF c_and IS
BEGIN
    s <= a and b;
END arch;