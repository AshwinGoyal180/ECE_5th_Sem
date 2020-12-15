-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY controller_tb IS
END controller_tb;

ARCHITECTURE behavior OF controller_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT traffic
    PORT(
         clk : IN  std_logic;
         green : OUT  std_logic_vector(3 downto 0);
         yellow : OUT  std_logic_vector(3 downto 0);
         red : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal clk : std_logic := '0';

   signal green : std_logic_vector(3 downto 0);
   signal yellow : std_logic_vector(3 downto 0);
   signal red : std_logic_vector(3 downto 0);

   constant clk_period : time := 2 ns;

BEGIN

   uut: traffic PORT MAP (
          clk => clk,
          green => green,
          yellow => yellow,
          red => red
        );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
END;
