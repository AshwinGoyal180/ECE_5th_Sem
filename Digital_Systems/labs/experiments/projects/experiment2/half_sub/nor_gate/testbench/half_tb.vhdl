
library ieee;
use ieee.std_logic_1164.all;

entity half_tb is
end half_tb;

architecture HALF_SUB of half_tb is
    component half_subtractor is
        port (
            a  : in  std_logic;
            b  : in  std_logic;
            d  : out std_logic;
            bo : out std_logic);
    end component;
    signal input  : std_logic_vector(1 downto 0);
    signal output : std_logic_vector(1 downto 0);
begin
    uut: half_subtractor port map (
        a => input(1),
        b => input(0),
        d => output(0),
        bo => output(1)
    );

    stim_proc: process
    begin
        input <= "00"; wait for 10 ns;
        input <= "01"; wait for 10 ns;
        input <= "10"; wait for 10 ns;
        input <= "11"; wait for 10 ns;
        report "Half subtractor testbench finished";
        wait;
    end process;
end;
