library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_tb is
end entity;

architecture tb of nand_tb is
	component nandgate is
		Port (
			     A:IN std_logic;
			     B:IN std_logic;
			     Y:OUT std_logic
	);
	end component;
	signal INPUT : STD_LOGIC_VECTOR ( 1 downto 0);
	signal Y : STD_LOGIC;

begin

	uut: nandgate port map(
		A => INPUT(1),
		B => INPUT(0),
		Y => Y
	);

	stim: process
		begin
			INPUT <= "00"; wait for 10 ns;
			INPUT <= "01"; wait for 10 ns;
			INPUT <= "10"; wait for 10 ns;
			INPUT <= "11"; wait for 10 ns;
		wait;
end process;
end tb;
