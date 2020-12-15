library ieee;
use ieee.std_logic_1164.all;

entity sr_flp is
port(
s: in std_logic;
r: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic;
qb: out std_logic);
end sr_flp;

architecture behavioral of sr_flp is
begin
process(s,r,clk,rst)
begin
if(rst='1') then
 q<='0';
 qb<='0';
elsif(rising_edge(clk)) then
 if(s/=r) then
  q<=s;
  qb<=r;
 elsif (s='1' and r='1') then
  q<='Z';
  qb<='Z';
 end if;
end if;
end process;

end behavioral;
