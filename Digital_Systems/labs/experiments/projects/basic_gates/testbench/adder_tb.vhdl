library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end adder_tb;

architecture ADDER of adder_tb is
    component full_adder is
        port (
            a  : in  std_logic;
            b  : in  std_logic;
            c : in  std_logic;
            co : out std_logic);
    end component;
    signal input  : std_logic_vector(2 downto 0);
    signal output : std_logic;
begin
    uut: full_adder port map (
        c => input(2),
        b => input(1),
        a => input(0),
        co => output
    );

    stim_proc: process
    begin
        input <= "000"; wait for 10 ns;
        input <= "001"; wait for 10 ns;
        input <= "010"; wait for 10 ns;
        input <= "011"; wait for 10 ns;
        input <= "100"; wait for 10 ns;
        input <= "101"; wait for 10 ns;
        input <= "110"; wait for 10 ns;
        input <= "111"; wait for 10 ns;
        report "Full adder testbench finished";
        wait;
    end process;
end;
