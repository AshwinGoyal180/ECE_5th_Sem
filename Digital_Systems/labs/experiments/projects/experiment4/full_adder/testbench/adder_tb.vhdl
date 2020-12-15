library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end adder_tb;

architecture behavior of adder_tb is
    component fulladder is
        port (
            A  : in  std_logic;
            B  : in  std_logic;
            C : in  std_logic;
            S  : out std_logic;
            CA : out std_logic);
    end component;
    signal input  : std_logic_vector(2 downto 0);
    signal output : std_logic_vector(1 downto 0);
begin
    uut: fulladder port map (
        A => input(2),
        B => input(1),
        C => input(0),
        S => output(0),
        CA => output(1)
    );

    stim_proc: process
    begin
        input <= "000"; wait for 10 ns; assert output = "00" report "0+0+0 failed";
        input <= "001"; wait for 10 ns; assert output = "01" report "0+0+1 failed";
        input <= "010"; wait for 10 ns; assert output = "01" report "0+1+0 failed";
        input <= "011"; wait for 10 ns; assert output = "10" report "0+1+1 failed";
        input <= "100"; wait for 10 ns; assert output = "01" report "1+0+0 failed";
        input <= "101"; wait for 10 ns; assert output = "10" report "1+0+1 failed";
        input <= "110"; wait for 10 ns; assert output = "10" report "1+1+0 failed";
        input <= "111"; wait for 10 ns; assert output = "11" report "1+1+1 failed";
        report "Full adder testbench finished";
        wait;
    end process;
end;
