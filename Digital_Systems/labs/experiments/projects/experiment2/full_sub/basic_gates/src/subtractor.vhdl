library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        bi : in  std_logic;
        d  : out std_logic;
        bo : out std_logic);
end;

architecture SUB of full_subtractor is
begin
    d <= ((not a) and (not b) and bi) or (a and (not b) and (not bi)) or ((not
	 a) and b and (not bi)) or (a and b and bi);
    bo <= (b and bi) or ((not a) and b) or ((not a) and bi);
end;
