library ieee;
use ieee.std_logic_1164.all;
entity decoder is
port(
	i0,i1,i2,E: in std_logic;
	d : out STD_LOGIC_VECTOR (7 downto 0));
end decoder;

architecture decod of decoder is
begin
	d(0)<=(not i0) and (not i1) and (not i2) and E;
	d(1)<=(not i0) and (not i1) and i2 and E;
	d(2)<=(not i0) and i1 and (not i2) and E;
	d(3)<=(not i0) and i1 and i2 and E;
	d(4)<=i0 and (not i1) and (not i2) and E;
	d(5)<=i0 and (not i1) and i2 and E;
	d(6)<=i0 and i1 and (not i2) and E;
	d(7)<=i0 and i1 and i2 and E;
end decod;
