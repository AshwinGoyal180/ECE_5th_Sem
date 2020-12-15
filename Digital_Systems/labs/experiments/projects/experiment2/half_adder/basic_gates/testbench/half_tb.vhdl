
library ieee;
use ieee.std_logic_1164.all;

entity half_tb is
end half_tb;

architecture HALF_ADDER of half_tb is
    component half_adder is
        port (
            a  : in  std_logic;
            b  : in  std_logic;
            s  : out std_logic;
            co : out std_logic);
    end component;
    signal input  : std_logic_vector(1 downto 0);
    signal output : std_logic_vector(1 downto 0);
begin
    uut: half_adder port map (
        a => input(1),
        b => input(0),
        s => output(0),
        co => output(1)
    );

    stim_proc: process
    begin
        input <= "00"; wait for 10 ns;
        input <= "01"; wait for 10 ns;
        input <= "10"; wait for 10 ns;
        input <= "11"; wait for 10 ns;
        report "Half adder testbench finished";
        wait;
    end process;
end;
