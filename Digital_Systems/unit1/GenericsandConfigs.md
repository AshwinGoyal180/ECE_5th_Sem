
## Generics

used to generalise programme.

```vhdl
entity AND_GATE is
	generic(N natural);
	port(A: in bit_vector(1 to N ); z: out bit);
end AND_GATE;

architecutre gen of AND_GATE is
begin
	process(A)
	variable AND_OUT : Bit;
	begin
		AND_OUT := '1';
	for K in 1 to N loop
		AND_OUT := AND_OUT and A(K);
	exit when AND_OUT = '0';
	end loop;
	z < = AND+OUT;
end gen;
```

## Configurations

