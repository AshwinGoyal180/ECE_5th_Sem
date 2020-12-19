library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        c  : in  std_logic;
        co : out std_logic);
end;

architecture ADDER of full_adder is
begin
    co <= (a and b) or (not a and c);
end;
