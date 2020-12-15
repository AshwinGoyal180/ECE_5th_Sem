library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        a  : in  std_logic;
        b  : in  std_logic;
        ci : in  std_logic;
        s  : out std_logic;
        co : out std_logic);
end;

architecture ADDER of full_adder is
	 signal w_WIRE_1 : std_logic;
	 signal w_WIRE_2 : std_logic;
	 signal w_WIRE_3 : std_logic;
	 signal w_WIRE_4 : std_logic;
	 signal w_WIRE_5 : std_logic;
	 signal w_WIRE_6 : std_logic;
	 signal w_WIRE_7 : std_logic;
begin
	w_WIRE_1 <= a nand b;
	w_WIRE_2 <= w_WIRE_1 nand a;
	w_WIRE_3 <= w_WIRE_1 nand b;
	w_WIRE_4 <= w_WIRE_2 nand w_WIRE_3;
	w_WIRE_5 <= w_WIRE_4 nand ci;
	w_WIRE_6 <= w_WIRE_5 nand w_WIRE_4;
	w_WIRE_7 <= w_WIRE_5 nand ci;

	s <= w_WIRE_6 nand w_WIRE_7;
	co <= w_WIRE_1 nand w_WIRE_5;
end;
