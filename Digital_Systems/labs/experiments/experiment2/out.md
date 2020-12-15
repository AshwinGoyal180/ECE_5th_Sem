## Half Adder

A half adder is an arithmetic combinational logic circuit that adds two
1-bit inputs to give the sum and the carry generated as the output.

The half adder circuit adds two single bits and ignores any carry if
generated. Since any addition where a carry is present isn't complete
without adding the carry, the operation is not complete. Hence the
circuit is known as a half-adder. Let's write the truth table using
general boolean
logic
0 + 0 = 0

    0 + 1 = 1

    1 + 0 = 1

    1 + 1 = 0, carry 1

---

## Truth table for a half adder

| **A** | **B** | **SUM** | **CARRY** |
| ----- | ----- | ------- | --------- |
| 0     | 0     | 0       | 0         |
| 0     | 1     | 1       | 0         |
| 1     | 0     | 1       | 0         |
| 1     | 1     | 0       | 1         |

---

From the above table, SUM is one when A=0 _And_ B=1 _Or _(not and
because A and B can have only one value at a time) when A=1 _And_ B=0.
So we can say that

$SUM = A'B + AB'$

Similarly, for the CARRY output, it is 1 only when A=1 and B=1. Hence,

$CARRY = AB$

From the equations above, it is clear that the circuit consists of an
EXOR gate and an AND gate.

## Full Adder

The only difference between a full adder and a half adder is that in a
full adder, we also consider the carry input. So we have three inputs
instead of two. Let's plot the truth table using three inputs and
general.

### Truth table for a full adder

---

| **A** | **B** | **Y** | **SUM** | **CARRY** |
| ----- | ----- | ----- | ------- | --------- |
| 0     | 0     | 0     | 0       | 0         |
| 0     | 0     | 1     | 1       | 0         |
| 0     | 1     | 0     | 1       | 0         |
| 0     | 1     | 1     | 0       | 1         |
| 1     | 0     | 0     | 1       | 0         |
| 1     | 0     | 1     | 0       | 1         |
| 1     | 1     | 0     | 0       | 1         |
| 1     | 1     | 1     | 1       | 1         |

---

$
SUM = A'B'Y + A'BY' + ABY + AB'Y' = Y(A'B'+AB) + Y'(A'B+AB') = YX'+Y'X
= Y \bigoplus X = A \bigoplus B \bigoplus Y
$

Where X is the equation for EXOR and X' is the equation for EXNOR.

$CARRY = AB + BY + AY = Y(A+B) + AB$

From the two equations of SUM and CARRY, we can design the following
combinational logic circuit for a full adder.

## Half Subtractor

Quite similar to the half adder, a half subtractor subtracts two 1-bit
binary numbers to give two outputs, difference and borrow. Since it
neglects any borrow inputs and essentially performs half the function of
a subtractor, it is known as the half subtractor. Let's write the truth
table based on this information and general binary subtraction
rules

    0 -- 0 = 0

    0 -- 1 = 1, borrow 1

    1 -- 0 = 1

    1 -- 1 = 0

### Truth table for a half subtractor

---

| **A** | **B** | **DIFFERENCE** | **BORROW** |
| ----- | ----- | -------------- | ---------- |
| 0     | 0     | 0              | 0          |
| 0     | 1     | 1              | 1          |
| 1     | 0     | 1              | 0          |
| 1     | 1     | 0              | 0          |

---

DIFFERENCE is high when A=0 _and_ B=1 _or_ when A=1 _and_ B=0. Hence

$
DIFFERENCE= A'B + AB' = A \bigoplus B
$

BORROW is high when A=0 _and_ B=1. Hence

$
BORROW = A'B
$

## Full Subtractor

A full subtractor accounts for the borrow that a half subtractor
neglects. Hence it has three inputs and two outputs. We will write the
truth table for the full subtractor based on this information.

### Truth table for a full subtractor

---

| **A** | **B** | **D** | **DIFFERENCE** | **BORROW** |
| ----- | ----- | ----- | -------------- | ---------- |
| 0     | 0     | 0     | 0              | 0          |
| 0     | 0     | 1     | 1              | 1          |
| 0     | 1     | 0     | 1              | 1          |
| 0     | 1     | 1     | 0              | 1          |
| 1     | 0     | 0     | 1              | 0          |
| 1     | 0     | 1     | 0              | 0          |
| 1     | 1     | 0     | 0              | 0          |
| 1     | 1     | 1     | 1              | 1          |

---

This is similar to the Kmap for SUM for the full adder. The equation for
DIFFERENCE is thus

$DIFFERENCE = A \bigoplus B \bigoplus Y $

Deriving the equation for BORROW

$BORROW = A'D + BD + A'B = A'(B+D) + BD$
