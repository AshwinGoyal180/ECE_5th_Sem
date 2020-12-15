library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX is
Port (
	     I : in STD_LOGIC;
	     S : in STD_LOGIC_VECTOR (1 downto 0);
	     Y : out STD_LOGIC_VECTOR (3 downto 0)
     );
end DEMUX;

architecture demux of DEMUX is
begin
	with S select Y <=
              ("000" & I) when "00",
              ("00" & I & "0") when "01",
              ("0" & I & "00") when "10",
              (I & "000") when others;

end demux;
