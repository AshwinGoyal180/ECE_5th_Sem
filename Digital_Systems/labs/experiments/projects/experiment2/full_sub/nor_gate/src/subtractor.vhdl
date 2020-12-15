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
	 signal w_WIRE_1 : std_logic;
	 signal w_WIRE_2 : std_logic;
	 signal w_WIRE_3 : std_logic;
	 signal w_WIRE_4 : std_logic;
	 signal w_WIRE_5 : std_logic;
	 signal w_WIRE_6 : std_logic;
	 signal w_WIRE_7 : std_logic;
	 signal w_WIRE_8 : std_logic;
	 signal w_WIRE_9 : std_logic;

begin
	w_WIRE_1 <= a nor b;
	w_WIRE_2 <= w_WIRE_1 nor a;
	w_WIRE_3 <= w_WIRE_1 nor b;
	w_WIRE_4 <= w_WIRE_2 nor w_WIRE_3;
	w_WIRE_5 <= w_WIRE_4 nor w_WIRE_4;
	w_WIRE_6 <= w_WIRE_5 nor bi;
	w_WIRE_7 <= w_WIRE_5 nor w_WIRE_6;
	w_WIRE_8 <= w_WIRE_6 nor bi;
	w_WIRE_9 <= w_WIRE_8 nor w_WIRE_7;


	d <= w_WIRE_9 nor w_WIRE_9;
	bo <= (w_WIRE_2 nor w_WIRE_7) nor (w_WIRE_2 nor w_WIRE_7);
end;
