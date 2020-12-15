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
	 signal w_WIRE_1 : std_logic;
	 signal w_WIRE_2 : std_logic;
	 signal w_WIRE_3 : std_logic;
begin
	w_WIRE_1 <= a nor b;
	w_WIRE_2 <= a nor a;
	w_WIRE_3 <= b nor b;

	co <= w_WIRE_2 nor w_WIRE_3;
	s <= w_WIRE_1 nor (w_WIRE_2 nor w_WIRE_3);
end;

