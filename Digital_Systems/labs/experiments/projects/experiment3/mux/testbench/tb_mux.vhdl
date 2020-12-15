library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux is
end entity;

architecture tb of tb_mux is
	component MUX4_1 is
		Port (
		i : in STD_LOGIC_VECTOR (3 downto 0);
		s : in STD_LOGIC_VECTOR (1 downto 0);
		y : out STD_LOGIC);
	end component;
	signal i : STD_LOGIC_VECTOR (3 downto 0);
	signal s : STD_LOGIC_VECTOR (1 downto 0);
	signal y : STD_LOGIC;

begin

	uut: MUX4_1 port map(
		i => i,
		s => s,
		y => y
	);

	stim: process
		begin
		i <= "1010";
		s <= "00";
		wait for 20 ns;
		s <= "01";
		wait for 20 ns;
		s <= "10";
		wait for 20 ns;
		s <= "11";
		wait for 20 ns;
		wait;

end process;
end tb;
