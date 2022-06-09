library ieee;
use ieee.std_logic_1164.all;

entity somador_um_bit is
	port(
			a, b, c_in	    : in  std_logic;
			s, c_out		: out std_logic
	);
end entity;

architecture architecture_somador_um_bit of somador_um_bit is
begin

	s       <= a xor b xor c_in;
	c_out   <= ((a xor b) and c_in) or (a and b);

end architecture_somador_um_bit;