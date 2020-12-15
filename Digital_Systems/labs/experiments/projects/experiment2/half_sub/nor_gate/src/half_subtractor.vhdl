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
	 signal w_WIRE_1 : std_logic;
	 signal w_WIRE_2 : std_logic;
	 signal w_WIRE_3 : std_logic;
begin
	w_WIRE_1 <= a nor b;
	w_WIRE_2 <= a nor w_WIRE_1;
	w_WIRE_3 <= b nor w_WIRE_1;

	d <= (w_WIRE_2 nor w_WIRE_3) nor (w_WIRE_2 and w_WIRE_3) ;
	bo <= w_WIRE_2;
end;

