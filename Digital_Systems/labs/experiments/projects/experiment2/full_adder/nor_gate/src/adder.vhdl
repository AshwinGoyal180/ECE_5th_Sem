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
	 signal w_WIRE_8 : std_logic;
	 signal w_WIRE_9 : std_logic;
	 signal w_WIRE_10: std_logic;
begin
	w_WIRE_1 <= a nor b;
	w_WIRE_2 <= a nor a;
	w_WIRE_3 <= b nor b;
	w_WIRE_4 <= w_WIRE_2 nor w_WIRE_3;
	w_WIRE_5 <= w_WIRE_4 nor w_WIRE_1;
	w_WIRE_6 <= w_WIRE_5 nor ci;
	w_WIRE_7 <= w_WIRE_5 nor w_WIRE_5;
	w_WIRE_8 <= ci nor ci;
	w_WIRE_9 <= w_WIRE_8 nor w_WIRE_7;
	w_WIRE_10<= w_WIRE_4 nor w_WIRE_9;

	s <= w_WIRE_9 nor w_WIRE_6;
	co <= w_WIRE_10 nor w_WIRE_10;
end;
