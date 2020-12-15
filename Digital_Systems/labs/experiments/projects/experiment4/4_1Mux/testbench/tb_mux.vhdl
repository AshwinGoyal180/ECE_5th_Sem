library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end tb_mux;

architecture behavior of tb_mux is

    component mux4_1
    port(
         a : in  std_logic;
         b : in  std_logic;
         c : in  std_logic;
         d : in  std_logic;
         s0 : in  std_logic;
         s1 : in  std_logic;
         z : out  std_logic
        );
    end component;

   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
 	--outputs
   signal z : std_logic;

begin

   uut: mux4_1 port map (
         a => a,
          b => b,
          c => c,
          d => d,
          s0 => s0,
          s1 => s1,
          z => z
        );

   stim_proc: process
   begin
      wait for 100 ns;
	a <= '1';
	b <= '0';
	c <= '1';
	d <= '0';
	s0 <= '0'; s1 <= '0';
      wait for 100 ns;
	s0 <= '1'; s1 <= '0';
      wait for 100 ns;
	s0 <= '0'; s1 <= '1';
		wait for 100 ns;
	s0 <= '1'; s1 <= '1';
		wait for 100 ns;
	end process;
end;

