library ieee;
use ieee.std_logic_1164.all;

entity half_subtractor is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        d  : out std_logic;
        bo : out std_logic);
end;

architecture HALF_SUB of half_subtractor is
begin
	d <= ((not a) and b) or (a and (not b));
	bo <= (not a) and b;
end;

