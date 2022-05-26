library ieee;
use ieee.std_logic_1164.all;


entity full_adder is

	port(
			a, b, c_in	    : in  std_logic;
			s, c_out		: out std_logic
	);
	
end entity;


architecture impl of full_adder is

begin

	s <= a xor b xor c_in;
	c_out <= ((a xor b) and c_in) or (a and b);

end architecture;