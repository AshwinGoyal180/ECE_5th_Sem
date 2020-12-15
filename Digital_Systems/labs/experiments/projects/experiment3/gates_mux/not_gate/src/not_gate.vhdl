library ieee;
use ieee.std_logic_1164.all;
entity notgate is
port(
	A:IN std_logic;
	B:IN std_logic;
	Y:OUT std_logic
);
end notgate;

architecture sms of notgate is
component mux is
port(
	I0:IN std_logic;
	I1:IN std_logic;
	S1:IN std_logic;
	y: OUT std_logic
);
end component;

begin
	mux1:mux port map(I0=>'1',I1=>'0',S1=>B,y=>Y);
end sms;

library IEEE;
use IEEE.std_logic_1164.all;
entity mux is
port(
	I0:IN std_logic;
	I1:IN std_logic;
	S1:IN std_logic;
	y:OUT std_logic
);
end mux;
architecture notgate_arch of mux is
	begin
	y<= I0 when S1='0' Else
	I1;
end notgate_arch;
