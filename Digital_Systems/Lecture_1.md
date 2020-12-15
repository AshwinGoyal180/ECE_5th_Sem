# Digital System Design Flow

![Digital Design Flow](img/DSF.png)

- Requirements
- Function Design:
	- Behavioral Simulation
- Register Transfer Level Design:
	- RTL Simulation validation
- Logic Design:
	- Logic simulation
	- Verifaction
	- Fault Simulation
- Circuit Design:
	- Timing simulation
	- Circuit Analysis
- Physical Design :
	- Design Rule Checking
	- MUXes, Flip-flops, Circuit level Desinging
	- Copper cloded path
	- CAD tools are used

\pagebreak

## A simple Synthesis Design

![synthesisDesingFlow](img/sdf.png)

\pagebreak

## Y-Chart

![Y-Chart or Gajski Chart](img/Y-chart.png)


## Alternatives

- Verilog
- SystemC



- Exchange media between chip vendors and CAD Tools uses
- Support a wide range of abstraction levels, desing, modelling styles:
	- behavioral
	- Dataflow
	- Structural
	- Mixed
- Clear Separation of component's architecuter and interfaces
- supports both synchronous and asynchronous timing models


## VHDL Primary Constructs

#### Design Units
1. Entity:
   The interface of a logic circuits is represented by entity
2. Architecture:
	Architecture describes a particular implementation of an entity
3. Configuration:
	Configuration binds entites, architecture, and component
	declatations.
4. Package Declaration:
	Package allows a convenient way to defince and group function,
	procedures, types, components, etc.
5. Package Body:
	Package body contains the implementation of the functionality
	exposed by package declaration
