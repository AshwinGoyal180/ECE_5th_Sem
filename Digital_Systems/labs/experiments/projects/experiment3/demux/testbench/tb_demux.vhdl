library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_demux is
end entity;

architecture tb of tb_demux is
	component demux is
		Port (
		I : in STD_LOGIC;
	        S : in STD_LOGIC_VECTOR (1 downto 0);
	        Y : out STD_LOGIC_VECTOR (3 downto 0)
	);
	end component;
	signal I : STD_LOGIC;
	signal S : STD_LOGIC_VECTOR(1 downto 0);
	signal Y : STD_LOGIC_VECTOR(3 downto 0);

begin

	uut: demux port map(
		I => I,
		S => S,
		Y => Y
	);

	stim: process
		begin
			I <= '1';
			S <= "00";
			wait for 20 ns;
			S <= "01";
			wait for 20 ns;
			S <= "10";
			wait for 20 ns;
			S <= "11";
			wait for 20 ns;
		wait;

end process;
end tb;
