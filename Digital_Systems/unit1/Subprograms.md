## Subprograms and overloading
- sequential algorithm that performs certain computation.
- 2 kinds:
	- functions:
		- used for computing single values
		- executes in zero simulation time
	- procedures:
		- returns zero or more values
		- may or may not execute in zero simulation time
-

```vhdl
subprogram-specification is
	subprogram-item-declaration
begin
	subprogram-statements
end [function/procedure]
```

## Functions:

- returns single value
	```
	return [expression]
	```
- runs in zero simulation time
- common uses are as:
	- resolution functions
	- type conversion funcitons

Example

```vhdl
function to_character (ARG: STD_ULOGIC)
	return character is
begin
	case ARG is
	when 'U' => return 'U';
	when 'X' => return 'x';
	when 'O' => return 'O';
	when 'I' => return 'I';
	when 'Z' => return 'Z';
	when 'W' => return 'W';
	end case;
end to_character
```
### Pure funtions
	Function largest
