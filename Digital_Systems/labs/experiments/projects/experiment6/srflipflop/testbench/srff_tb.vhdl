LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY srff_tb iS
END srff_tb;

ARCHITECTURE behavior OF srff_tb iS

    COMPONENT sr_flp
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;

   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal q : std_logic;
   signal qb : std_logic;

   constant clk_period : time := 10 ns;

BEGIN

   uut: sr_flp PORT MAP (
          s => s,
          r => r,
          clk => clk,
          rst => rst,
          q => q,
          qb => qb
        );

   clk_process :process
   begin
   clk <= '0';
   wait for clk_period/2;
   clk <= '1';
   wait for clk_period/2;
   end process;

  stim_proc: process
  begin

  rst <= '1';
  wait for 50 ns;

  rst <= '0';
  s <= '1';
  r <= '1';
  wait for 50 ns;

  rst <= '0';
  s <= '1';
  r <= '0';
  wait for 50 ns;

  rst <= '0';
  s <= '0';
  r <= '0';
  wait for 50 ns;

  rst <= '0';
  s <= '0';
  r <= '0';
  wait;

  end process;

END;
