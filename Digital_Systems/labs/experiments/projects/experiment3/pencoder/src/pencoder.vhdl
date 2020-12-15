library ieee;
use ieee.std_logic_1164.all;

entity pencoder is
	port(
		i : in STD_LOGIC_VECTOR (3 downto 0);
		a0,a1,v: out std_logic);
end pencoder;

architecture enc of pencoder is
begin
	a1<=i(3) or i(2);
	a0<=i(3) or (not(i(3)) and not(i(2))and i(1));
	v<= i(0) or i(1) or i(2) or i(3);
end enc;
