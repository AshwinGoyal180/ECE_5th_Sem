library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decoder is
end entity;

architecture tb of tb_decoder is
	component decoder is
		Port (
		i0: in STD_LOGIC;
		i1: in STD_LOGIC;
		i2: in STD_LOGIC;
		E : in STD_LOGIC;
		d : out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	signal input: std_logic_vector(3 downto 0);
	signal d : STD_LOGIC_VECTOR (7 downto 0);

begin
	uut: decoder port map(
		i0 =>input(3),
		i1 =>input(2),
		i2 =>input(1),
		E  =>input(0),
		d  => d

	);

	stim: process
		begin
			input <= "---0"; wait for 10 ns;
		        input <= "0001"; wait for 10 ns;
			input <= "0011"; wait for 10 ns;
			input <= "0101"; wait for 10 ns;
			input <= "0111"; wait for 10 ns;
			input <= "1001"; wait for 10 ns;
			input <= "1011"; wait for 10 ns;
			input <= "1101"; wait for 10 ns;
			input <= "1111"; wait for 10 ns;

		wait;

end process;
end tb;
