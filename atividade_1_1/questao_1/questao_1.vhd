library ieee;
use ieee.std_logic_1164.all;

type byte is std_logic_vector(7 downto 0);
type barramento is array (3 downto 0) of byte;