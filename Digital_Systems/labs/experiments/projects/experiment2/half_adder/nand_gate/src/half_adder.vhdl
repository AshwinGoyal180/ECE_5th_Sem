library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        s  : out std_logic;
        co : out std_logic);
end;

architecture behavioral of half_adder is
	 signal w_WIRE_1 : std_logic;
	 signal w_WIRE_2 : std_logic;
	 signal w_WIRE_3 : std_logic;
begin
	w_WIRE_1 <= a nand b;
	w_WIRE_2 <= w_WIRE_1 nand a;
	w_WIRE_3 <= w_WIRE_1 nand b;

	s <= w_WIRE_2 nand w_WIRE_3;
	co <= w_WIRE_1 nand w_WIRE_1;
end;

