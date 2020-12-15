entity 3or is
  port (i0, i1, i2 : in bit;
  o0: out bit);
end 3or;

architecture orgate of 3or is
begin
  o0 <= i0 or i1 or i2;
end orgate;
