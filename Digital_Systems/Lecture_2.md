# Design Units

- Elements that make large scale design modelling easier
- Nominal propagation delays, min-max delays, setup and hold time
  constraints and spike detection can be described naturally.
- Generic Design
- Back Annotation
- Capability of defining new datatypes


## Hardware Abstratction

- External View:
  Interface of device through which it communicate
- Internal View:
	- Functionality

**This is Called Entity**

![Design Units](img/DesignUnits.png)


## Entity Modelling

Declaration [External Value]

\+

Architecture Body [Internal View]


- Entity has one external view and one or more internal views
- Hardware Device may be represented by on or more entites

### Entity Declaration

![EntityDeclaration](img/EntityDeclaration.png)

- Entity Consists of only ports
- Specifies name of entity being modelled and list of set inerface ports

### Decoder Example
![Decoder Example](img/DecoderEg.png)

\pagebreak

### Encoder Example
![Encoder 4x2](img/Encoder4x2.png)

- z(0) in MSB, z(3) is LSB
- y(0) is MSB

another keyword downto

eg.

> bit_vector(3 downto 0):

	- z(3) will be MSB, z(0) will be LSB


**In entity only I/O ports will be declared**

- Internal Signals will not be declared in entity block

\pagebreak

# Architecture Body

![Architecture Body](img/image_2020-07-22-12-21-01.png)

## Styles of repr
- Structural:
	- interconnection of components
- DataFlow:
	- concurrent assignment statements
- Behavioral:
	- sequential assignment
- Combination of all

\pagebreak

## Structural Style Of Modelling

**Half Adder**

```vhdl
architecture Half_adder of HALF_ADDER is
	component XOR2
		port (x, y: in BIT; z: out BIT);
	end component;

	component AND2
		port(L, M: in BIT; N: out BIT);
	end component;

	begin
		X1: XOR2 portmap(A, B, SUM);
		A1: AND2 portmap(A, B, CARRY);
	end Half_adder;
```

### Internal Signal

**Encode and Decoder Example**

\pagebreak

![](img/lecture2_somehting.png)
![internal signal](img/lecture2_something2.png)
![](img/lecture2_something3.png)


## DataFlow Style of Modelling

- Entity is expressed using concurrent signal assignment statments
- Structure of entity is not specified explicityly byt can be deduced
  implicitly

  ```vhdl
  architecture HA_concurrent of HALF_ADDER is
  	begin
		SUM <= A XOR B after 8ns;
		Carry <= A AND after 4ns;
	end HA_concurrent
```

- concurrent signal assignment are executed when there is ann envent on any
  signal on RHS
- To include time delay 'after' clause is used. architecture HS_concurrent of
  HALF_SUBTRACT is :

  	```vhdl
		architecture HS_concurrent of HALF_SUBTRACT is
		signal BBAR;
		begin
			DIFF <= A xor B after 8ns;
			BORROW <= A and BBAR;
			BBAR <= not B;
		end HS_concurrent;
	```

- order of writing doesn't matter, since all events are executed


## Behavioral Style of Modelling

- Statements are executed sequentially in a specified order


**Syntax**
```vhdl
	process (sensitivity list)
		begin
		--
		--
		--
		end process
```

## Mixed Style

![Mixed Style of Modelling](img/MixelStyle.png)


## Configuration Declaration

- Used to select one of possibly many architecture bodies written for a
  particular entity:
	- change archtecture within same code
- To bind components used in the architecture body:
	- components is the xerox copy of entity
	- used to bind component to entity

## Package Declaration

- used to store a set of common declaration such as components, tupes,
  procedures and functions.
- **use* keyword clause to import the declaration
- similar to header files in c
- primary design unit

## Package body
- used with package declaration always
- used to store the definition of functions in the corressponding package
  declaration
- secondary desing unit
