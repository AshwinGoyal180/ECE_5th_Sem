library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        s  : out std_logic;
        co : out std_logic);
end;

architecture HALF_ADDER of half_adder is
begin
	s <= ((not a) and b) or (a and (not b));
	co <= a and b;
end;

