```vhdl
entity xor is
  port (i0, i1 : in bit;
  o0: out bit);
end xor;
architecture xorgate of xor is
begin
  o0 <= ((not i0) and i1) or ((not i1) and i0);
end xorgate;
```
