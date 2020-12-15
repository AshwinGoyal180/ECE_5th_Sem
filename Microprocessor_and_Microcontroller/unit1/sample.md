Instruction Set In 8085 {#instruction-set-in-8085 .reader-title}

1.  Control
2.  Logical
3.  Branching
4.  Arithmetic
5.  Data Transfer

### Control Instructions

---

+-----------------+-----------------+-----------------+-----------------+
| **Opcode** | **Operand** | **Explanation | * |
| | | of Instruction\ | * Description** |
| | | ** | |
+-----------------+-----------------+-----------------+-----------------+
|  **NOP** | **none** | No operation | No operation is |
| | | | performed. The |
| | | | instruction is |
| | | | fetched and |
| | | | decoded. |
| | | | However no |
| | | | operation is |
| | | | executed. |
| | | | |
| | | | `Example: NOP` |
+-----------------+-----------------+-----------------+-----------------+
| **HLT** | **none** | Halt and enter | The CPU |
| | | wait state | finishes |
| | | | executing the |
| | | | current |
| | | | instruction and |
| | | | halts any |
| | | | further |
| | | | execution. An |
| | | | interrupt or |
| | | | reset is |
| | | | necessary to |
| | | | exit from the |
| | | | halt state. |
| | | | |
| | | | `Example: HLT` |
| | | | |
| | | | `` |
+-----------------+-----------------+-----------------+-----------------+
| ** DI** | **none** | Disable | The interrupt |
| | | interrupts | enable |
| | | | flip-flop is |
| | | | reset and all |
| | | | the interrupts |
| | | | except the TRAP |
| | | | are disabled. |
| | | | No flags are |
| | | | affected. |
| | | | |
| | | | `Example: DI` |
+-----------------+-----------------+-----------------+-----------------+
| **EI** | **none** | Enable | The interrupt |
| | | interrupts | enable |
| | | | flip-flop is |
| | | | set and all |
| | | | interrupts are |
| | | | enabled. No |
| | | | flags are |
| | | | affected. After |
| | | | a system reset |
| | | | or the |
| | | | acknowledgement |
| | | | of an |
| | | | interrupt, the |
| | | | interrupt |
| | | | enable flipflop |
| | | | is reset, thus |
| | | | disabling the |
| | | | interrupts. |
| | | | This |
| | | | instruction is\ |
| | | | necessary to |
| | | | reenable the |
| | | | interrupts |
| | | | (except TRAP). |
| | | | |
| | | | `Example: EI` |
| | | | |
| | | | `` |
+-----------------+-----------------+-----------------+-----------------+
| ** RIM** | **none** | Read interrupt | This is a |
| | | mas | multipurpose |
| | | | instruction |
| | | | used to read |
| | | | the status of |
| | | | interrupts 7.5, |
| | | | 6.5, 5.5 and |
| | | | read serial |
| | | | data input bit. |
| | | | The instruction |
| | | | loads eight |
| | | | bits in the |
| | | | accumulator |
| | | | with the |
| | | | following |
| | | | i |
| | | | nterpretations. |
| | | | |
| | | | `Example: RIM` |
+-----------------+-----------------+-----------------+-----------------+
| **SIM** | **none\*\* | Set interrupt | This is a |
| | | mask | multipurpose |
| | | | instruction and |
| | | | used to |
| | | | implement the |
| | | | 8085 interrupts |
| | | | 7.5, 6.5, 5.5, |
| | | | and serial data |
| | | | output. The |
| | | | instruction |
| | | | interprets the |
| | | | accumulator |
| | | | contents as |
| | | | follows. |
| | | | |
| | | | `Example: SIM` |
+-----------------+-----------------+-----------------+-----------------+

### LOGICAL INSTRUCTIONS

---

+-----------------+-----------------+-----------------+-----------------+
| ** Opcode** | ** Operand** | **Explanation | * |
| | | of Instruction\ | * Description** |
| | | ** | |
+-----------------+-----------------+-----------------+-----------------+
|  **CMP** | **R** | Compare | The contents of |
| | | register or | the operand |
| | **M** | memory with | (register or |
| | | accumulator | memory) are M |
| | | | compared with |
| | | | the contents of |
| | | | the |
| | | | accumulator. |
| | | | Both contents |
| | | | are preserved . |
| | | | The result of |
| | | | the comparison |
| | | | is shown by |
| | | | setting the |
| | | | flags of the |
| | | | PSW as follows: |
| | | | |
| | | | if (A) \< |
| | | | (reg/mem): |
| | | | carry flag is |
| | | | set\ |
| | | | if (A) = |
| | | | (reg/mem): zero |
| | | | flag is set\ |
| | | | if (A) \> |
| | | | (reg/mem): |
| | | | carry and zero |
| | | | flags are reset |
| | | | |
| | | | `Example: | | | | | CMP B or CMP M` |
+-----------------+-----------------+-----------------+-----------------+
| **CPI** | **8-bit data** | Compare | The second byte |
| | | immediate with | (8-bit data) is |
| | | accumulator | compared with |
| | | | the contents of |
| | | | the |
| | | | accumulator. |
| | | | The values |
| | | | being compared |
| | | | remain |
| | | | unchanged. The |
| | | | result of the |
| | | | comparison is |
| | | | shown by |
| | | | setting the |
| | | | flags of the |
| | | | PSW as follows: |
| | | | |
| | | | if (A) \< data: |
| | | | carry flag is |
| | | | set\ |
| | | | if (A) = data: |
| | | | zero flag is |
| | | | set\ |
| | | | if (A) \> data: |
| | | | carry and zero |
| | | | flags are reset |
| | | | |
| | | | `Ex | | | | | ample: CPI 89H` |
+-----------------+-----------------+-----------------+-----------------+
| ** ANA** | **R** | Logical AND | The contents of |
| | | register or | the accumulator |
| | **M** | memory with | are logically |
| | | accumulator | ANDed with M |
| | | | the contents of |
| | | | the operand |
| | | | (register or |
| | | | memory), and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | address is |
| | | | specified by |
| | | | the contents of |
| | | | HL registers. |
| | | | S, Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | operation. CY |
| | | | is reset. AC is |
| | | | set. |
| | | | |
| | | | `Example: | | | | | ANA B or ANA M` |
+-----------------+-----------------+-----------------+-----------------+
| ** ANI** | ** 8-bit data** | Logical AND | The contents of |
| | | immediate with | the accumulator |
| | | accumulator | are logically |
| | | | ANDed with the\ |
| | | | 8-bit data |
| | | | (operand) and |
| | | | the result is |
| | | | placed in the\ |
| | | | accumulator. S, |
| | | | Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the\ |
| | | | operation. CY |
| | | | is reset. AC is |
| | | | set. |
| | | | |
| | | | `Ex | | | | | ample: ANI 86H` |
+-----------------+-----------------+-----------------+-----------------+
| ** XRA** | **R** | Exclusive OR | The contents of |
| | | register or | the accumulator |
| | **M** | memory with | are Exclusive |
| | | accumulator | ORed with M the |
| | | | contents of the |
| | | | operand |
| | | | (register or |
| | | | memory), and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | address is |
| | | | specified by |
| | | | the contents of |
| | | | HL registers. |
| | | | S, Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | operation. CY |
| | | | and AC are |
| | | | reset. |
| | | | |
| | | | `Example: | | | | | XRA B or XRA M` |
+-----------------+-----------------+-----------------+-----------------+
| ** XRI** | ** 8-bit data** | Exclusive OR | The contents of |
| | | immediate with | the accumulator |
| | | accumulator | are Exclusive |
| | | | ORed with the |
| | | | 8-bit data |
| | | | (operand) and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. S, |
| | | | Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | operation. CY |
| | | | and AC are |
| | | | reset. |
| | | | |
| | | | `Ex | | | | | ample: XRI 86H` |
+-----------------+-----------------+-----------------+-----------------+
| **ORA** | **R** | Logical OR | The contents of |
| | | register or | the accumulator |
| | **M** | memory with | are logically |
| | | accumulator | ORed with M the |
| | | | contents of the |
| | | | operand |
| | | | (register or |
| | | | memory), and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | address is |
| | | | specified by |
| | | | the contents of |
| | | | HL registers. |
| | | | S, Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | operation. CY |
| | | | and AC are |
| | | | reset. |
| | | | |
| | | | `Example: | | | | | ORA B or ORA M` |
+-----------------+-----------------+-----------------+-----------------+
| **ORI** | ** 8-bit data** | Logical OR | The contents of |
| | | immediate with | the accumulator |
| | | accumulator | are logically |
| | | | ORed with the |
| | | | 8-bit data |
| | | | (operand) and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. S, |
| | | | Z, P are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | operation. CY |
| | | | and AC are |
| | | | reset. |
| | | | |
| | | | `Ex | | | | | ample: ORI 86H` |
+-----------------+-----------------+-----------------+-----------------+
| **RLC\ | ** none** | Rotate | Each binary bit |
| ** | | accumulator | of the |
| | | left | accumulator is |
| | | | rotated left by |
| | | | one position. |
| | | | Bit D7 is |
| | | | placed in the |
| | | | position of D0 |
| | | | as well as in |
| | | | the Carry flag. |
| | | | CY is modified |
| | | | according to |
| | | | bit D7. S, Z, |
| | | | P, AC are not |
| | | | affected. |
| | | | |
| | | | `Example: RLC` |
+-----------------+-----------------+-----------------+-----------------+
| **RRC** | **none\ | Rotate | Each binary bit |
| | ** | accumulator | of the |
| | | right | accumulator is |
| | | | rotated right |
| | | | by one |
| | | | position. Bit |
| | | | D0 is placed in |
| | | | the position of |
| | | | D7 as well as |
| | | | in the Carry |
| | | | flag. CY is |
| | | | modified |
| | | | according to |
| | | | bit D0. S, Z, |
| | | | P, AC are not |
| | | | affected. |
| | | | |
| | | | `Example: RRC` |
+-----------------+-----------------+-----------------+-----------------+
| ** RAL** | ** none** | Rotate | Each binary bit |
| | | accumulator | of the |
| | | left through | accumulator is |
| | | carry | rotated left by |
| | | | one position |
| | | | through the |
| | | | Carry flag. Bit |
| | | | D7 is placed in |
| | | | the Carry flag, |
| | | | and the Carry |
| | | | flag is placed |
| | | | in the least |
| | | | significant |
| | | | position D0. CY |
| | | | is modified |
| | | | according to |
| | | | bit D7. S, Z, |
| | | | P, AC are not |
| | | | affected. |
| | | | |
| | | | `Example: RAL` |
+-----------------+-----------------+-----------------+-----------------+
| ** RAR** | ** \*\* **none** | Rotate | Each binary bit |
| | | accumulator | of the |
| | | right through | accumulator is |
| | | carry | rotated right |
| | | | by one position |
| | | | through the |
| | | | Carry flag. Bit |
| | | | D0 is placed in |
| | | | the Carry flag, |
| | | | and the Carry |
| | | | flag is placed |
| | | | in the most |
| | | | significant |
| | | | position D7. CY |
| | | | is modified |
| | | | according to |
| | | | bit D0. S, Z, |
| | | | P, AC are not |
| | | | affected. |
| | | | |
| | | | `Example: RAR` |
+-----------------+-----------------+-----------------+-----------------+
| ** CMA** | ** none** | Complement | The contents of |
| | | accumulator | the accumulator |
| | | | are |
| | | | complemented. |
| | | | No flags are |
| | | | affected. |
| | | | |
| | | | `Example: CMA` |
+-----------------+-----------------+-----------------+-----------------+
| **CMC\ | ** none** | Complement | The Carry flag |
| ** | | carry | is |
| | | | complemented. |
| | | | No other flags |
| | | | are affected. |
| | | | |
| | | | `Example: CMC` |
+-----------------+-----------------+-----------------+-----------------+
| ** STC** | ** none** | Set Carry | Set Carry |
| | | | |
| | | | `Example: STC` |
+-----------------+-----------------+-----------------+-----------------+

### BRANCHING INSTRUCTIONS

---

+-----------------+-----------------+-----------------+-----------------+
| ** Opcode** | ** Operand** | **Explanation | `Description` |
| | | of Instruction\ | |
| | | ** | |
+-----------------+-----------------+-----------------+-----------------+
|  **JMP** | **16-bit | Jump | The program |
| | address** | unconditionally | sequence is |
| | | | transferred to |
| | | | the memory |
| | | | location |
| | | | specified by |
| | | | the 16-bit |
| | | | address given |
| | | | in the operand. |
| | | | |
| | | | `| | | | | Example: JMP 20 | | | | | 34H or JMP XYZ` |
+-----------------+-----------------+-----------------+-----------------+
| ---- | ** 16-bit | Jump | The program |
| ----- --------- | address** | conditionally | sequence is |
| --------------- | | | transferred to |
| - ------------- | | | the memory |
| Op | | | location |
| code Descrip | | | specified by |
| tion | | | the 16-bit |
| Flag Status | | | address given |
| * | | | in the operand |
| *JC\*_ **Jump | | | based on the |
| on Carry** | | | specified flag |
| **CY = 1** | | | of the PSW as |
| _ | | | described |
| _JNC\*\* **Jump | | | below. |
| on no Carry** | | | |
| **CY = 0** | | | `Example: JZ 2 | | | | | 034H or JZ XYZ` |
| **JP** **Jum | | | |
| p on positive** | | | |
| **S = 0** | | | |
| | | | |
| **JM** **Jum | | | |
| p on minus** | | | |
| **S = 1** | | | |
| | | | |
| **JZ** **Jum | | | |
| p on zero** | | | |
| **Z = 1** | | | |
| | | | |
| **JNZ** **Jum | | | |
| p on no zero** | | | |
| **Z = 0** | | | |
| | | | |
| **JPE** **Jum | | | |
| p on parity eve | | | |
| n** **P = 1** | | | |
| | | | |
| **JPO** **Jum | | | |
| p on parity odd | | | |
| ** **P = 0** | | | |
| ---- | | | |
| ----- --------- | | | |
| --------------- | | | |
| - ------------- | | | |
+-----------------+-----------------+-----------------+-----------------+
| --------- -- | ** 16-bit | Unconditional | The program |
| --------------- | address** | subroutine call | sequence is |
| --------------- | | | transferred to |
| - ------------- | | | the memory |
| Opcode | | | location |
| Description | | | specified by |
| | | | the 16-bit |
| Flag Status | | | address given |
| **CC** | | | in the operand. |
| **Call on Carr | | | Before the |
| y** | | | transfer, the |
| **CY = 1** | | | address of the |
| **CNC** | | | next |
| \***\*Call\*\*** _ | | | instruction |
| _on no Carry** | | | after CALL (the |
| **CY = 0** | | | contents of the |
| **CP** | | | program |
| \*\***Call\***\* | | | counter) is |
| **on positive** | | | pushed onto the |
| **S = 0** | | | stack. |
| **CM** | | | |
| \*\***Call\***\* | | | `Ex |
| **on minus** | | | ample: CALL 203 |
| **S = 1** | | | 4H or CALL XYZ` |
| **CZ** | | | |
| \*\***Call\***\* | | | |
| **on zero** | | | |
| **Z = 1** | | | |
| **CNZ** | | | |
| \*\***Call\***\* | | | |
| **on no zero** | | | |
| **Z = 0** | | | |
| **CPE** | | | |
| \*\***Call\***\* | | | |
| **on parity eve | | | |
| n\*\* **P = 1** | | | |
| **CPO** | | | |
| \***\*Call\*\*** | | | |
| **on parity odd | | | |
| ** **P = 0** | | | |
| --------- -- | | | |
| --------------- | | | |
| --------------- | | | |
| - ------------- | | | |
+-----------------+-----------------+-----------------+-----------------+
| ** RET** | **none** | Return from | The program |
| | | subroutine | sequence is |
| | | unconditionally | transferred |
| | | | from the |
| | | | subroutine to |
| | | | the calling |
| | | | program. The |
| | | | two bytes from |
| | | | the top of the |
| | | | stack are |
| | | | copied into the |
| | | | program |
| | | | counter,and |
| | | | program |
| | | | execution |
| | | | begins at the |
| | | | new address. |
| | | | |
| | | | `Example: RET` |
+-----------------+-----------------+-----------------+-----------------+
| ---------- | **none** | Return from | The program |
| -- ------------ | | subroutine | sequence is |
| --------------- | | conditionally | transferred |
| --------------- | | | from the |
| - ------------- | | | subroutine to |
| Opcode | | | the calling |
| Descriptio | | | program based |
| n | | | on the |
| | | | specified flag |
| Flag Status | | | of the PSW as |
| **RC** | | | described |
| **Return | | | below. The two |
| on Carry** | | | bytes from the |
| | | | top of the |
| **CY = 1** | | | stack are |
| **RNC** | | | copied into the |
| \***\*Retur | | | program |
| n\*\*** **on no C | | | counter, and |
| arry** | | | program |
| **CY = 0** | | | execution |
| **RP** | | | begins at the |
| \***\*Retu | | | new address. |
| rn\*\*** **on pos | | | |
| itive** | | | `Example: RZ` |
| **S = 0** | | | |
| **RM** | | | |
| \***\*Retu | | | |
| rn\*\*** **on min | | | |
| us** | | | |
| **S = 1** | | | |
| \***\*RZ | | | |
| \*\*** **\*\***Re | | | |
| turn\***\* **on z | | | |
| ero\***\* | | | |
| **Z = 1** | | | |
| **RNZ_ | | | |
| _ **\*\*\*\*** | | | |
| Return**\*\*\*\*** | | | |
| **on no zero** | | | |
| **Z = 0** | | | |
| \*\*RPE_ | | | |
| _ **\*\*\*\*** | | | |
| Return**\*\*\*\*** | | | |
| **on parity eve | | | |
| n** **P = 1** | | | |
| \*\*RPO_ | | | |
| _ **\*\*\*\*** | | | |
| Return**\*\*\*\*** | | | |
| **on parity odd | | | |
| ** **P = 0** | | | |
| ---------- | | | |
| -- ------------ | | | |
| --------------- | | | |
| --------------- | | | |
| - ------------- | | | |
+-----------------+-----------------+-----------------+-----------------+
| ** PCHL** | ** none** | Load program |  The contents |
| | | counter with HL | of registers H |
| | | contents | and L are |
| | | | copied into the |
| | | | program |
| | | | counter. The |
| | | | contents of H |
| | | | are placed as |
| | | | the high-order |
| | | | byte and the |
| | | | contents of L |
| | | | as the |
| | | | low-order byte. |
| | | | |
| | | | `Example: PCHL` |
+-----------------+-----------------+-----------------+-----------------+
| ** RST** | **0-7** | Restart | The RST |
| | | | instruction is |
| | | | equivalent to a |
| | | | 1-byte call |
| | | | instruction to |
| | | | one of eight |
| | | | memory |
| | | | locations |
| | | | depending upon |
| | | | the number. The |
| | | | instructions |
| | | | are generally |
| | | | used in |
| | | | conjunction |
| | | | with interrupts |
| | | | and inserted |
| | | | using external |
| | | | hardware. |
| | | | However these |
| | | | can be used as |
| | | | software |
| | | | instructions in |
| | | | a program to |
| | | | transfer |
| | | | program |
| | | | execution to |
| | | | one of the |
| | | | eight |
| | | | locations. The |
| | | | addresses are: |
| | | | |
| | | | ------- |
| | | | ------ -------- |
| | | | --------------- |
| | | | |
| | | | Instruction |
| | | | Restart Address |
| | | | |
| | | | \*\*RST 0_ |
| | | | _ **0000H** |
| | | | |
| | | | **RST1** |
| | | | \***\*0008H\*\*** |
| | | | |
| | | | **RST 2\ |
| | | | \*\***0010H\***\* |
| | | | |
| | | | ** |
| | | | |
| | | | **RST 3\ |
| | | | \*\***0018H\***\* |
| | | | |
| | | | ** |
| | | | |
| | | | _ |
| | | | **\*RST 4\ ** |
| | | | \***\*0020H\*\*\*\*** |
| | | | |
| | | | \***\* |
| | | | |
| | | | **RST |
| | | | 5\ **\*\*** |
| | | | **0028H**\*\***** |
| | | | |
| | | | ** |
| | | | |
| | | | **RST |
| | | | 6\ **\*\*** |
| | | | **0030H**\*\***** |
| | | | |
| | | | ** |
| | | | |
| | | | **RST |
| | | | 7\ **\*\*** |
| | | | **0038H**\*\***** |
| | | | |
| | | | ** |
| | | | ------- |
| | | | ------ -------- |
| | | | --------------- |
| | | | |
| | | | The 8085 has |
| | | | four additional |
| | | | interrupts and |
| | | | these |
| | | | interrupts |
| | | | generate RST |
| | | | instructions |
| | | | internally and |
| | | | thus do not |
| | | | require any |
| | | | external |
| | | | hardware. These |
| | | | instructions |
| | | | and their |
| | | | Restart |
| | | | addresses are: |
| | | | |
| | | | ----------- |
| | | | --------------- |
| | | | Interrupt |
| | | | Restart Address |
| | | | |
| | | | **TRAP |
| | | | \*_ **0024H** |
| | | | |
| | | | \*\*RST 5.5_ |
| | | | \* \***\*002CH\*\*** |
| | | | |
| | | | **RST 6.5\ |
| | | | \*\***0034H\***\* |
| | | | ** |
| | | | |
| | | | **RST 7.5\ |
| | | | \*\***003CH\***\* |
| | | | ** |
| | | | ----------- |
| | | | --------------- |
+-----------------+-----------------+-----------------+-----------------+

### Arithmetic Instructions

---

+-----------------+-----------------+-----------------+-----------------+
| ** Opcode** | ** Operand** | **Explanation | * |
| | | of Instruction\ | * Description** |
| | | ** | |
+-----------------+-----------------+-----------------+-----------------+
|  **ADD** |  **R** | Add register or | The contents of |
| | | memory, to | the operand |
| | **M** | accumulator | (register or |
| | | | memory) are |
| | | | added to the |
| | | | contents of the |
| | | | accumulator and |
| | | | the result is |
| | | | stored in the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. All |
| | | | flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | addition. |
| | | | |
| | | | `Example: | | | | | ADD B or ADD M` |
+-----------------+-----------------+-----------------+-----------------+
| ** ADC** | ** R** | Add register to | The contents of |
| | | accumulator | the operand |
| | **M** | with carry | (register or |
| | | | memory) and M |
| | | | the Carry flag |
| | | | are added to |
| | | | the contents of |
| | | | the accumulator |
| | | | and the result |
| | | | is stored in |
| | | | the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. All |
| | | | flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | addition. |
| | | | |
| | | | `Example: | | | | | ADC B or ADC M` |
+-----------------+-----------------+-----------------+-----------------+
| ** ADI** | ** 8-bit data** | Add immediate | The 8-bit data |
| | | to accumulator | (operand) is |
| | | | added to the |
| | | | contents of the |
| | | | accumulator and |
| | | | the result is |
| | | | stored in the |
| | | | accumulator. |
| | | | All flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | addition. |
| | | | |
| | | | `Ex | | | | | ample: ADI 45H` |
| | | | |
| | | | `` |
+-----------------+-----------------+-----------------+-----------------+
| ** ACI** | **8-bit data** | Add immediate | The 8-bit data |
| | | to accumulator | (operand) and |
| | | with carry | the Carry flag |
| | | | are added to |
| | | | the contents of |
| | | | the accumulator |
| | | | and the result |
| | | | is stored in |
| | | | the |
| | | | accumulator. |
| | | | All flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | addition. |
| | | | |
| | | | `Ex | | | | | ample: ACI 45H` |
+-----------------+-----------------+-----------------+-----------------+
| ** LXI** | ** Reg. pair, | Load register | The instruction |
| | 16-bit data** | pair immediate | loads 16-bit |
| | | | data in the |
| | | | register pair |
| | | | designated in |
| | | | the operand. |
| | | | |
| | | | `Exampl | | | | | e: LXI H, 2034H | | | | | or LXI H, XYZ` |
+-----------------+-----------------+-----------------+-----------------+
| ** DAD** | ** Reg. pair** | Add register | The 16-bit |
| | | pair to H and L | contents of the |
| | | registers | specified |
| | | | register pair |
| | | | are added to |
| | | | the contents of |
| | | | the HL register |
| | | | and the sum is |
| | | | stored in the |
| | | | HL register. |
| | | | The contents of |
| | | | the source |
| | | | register pair |
| | | | are not |
| | | | altered. If the |
| | | | result is |
| | | | larger than 16 |
| | | | bits, the CY |
| | | | flag is set. No |
| | | | other flags are |
| | | | affected. |
| | | | |
| | | | `| | | | | Example: DAD H` |
+-----------------+-----------------+-----------------+-----------------+
| **SUB** | ** R** | Subtract | The contents of |
| | | register or | the operand |
| | **M\ | memory from | (register or |
| | ** | accumulator | memory ) are |
| | | | subtracted from |
| | | | the contents of |
| | | | the |
| | | | accumulator, |
| | | | and the result |
| | | | is stored in |
| | | | the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. All |
| | | | flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | subtraction. |
| | | | |
| | | | `Example: | | | | | SUB B or SUB M` |
+-----------------+-----------------+-----------------+-----------------+
| ** SBB** | ** R** | Subtract source | The contents of |
| | | and borrow from | the operand |
| | **M** | accumulator | (register or |
| | | | memory ) and M |
| | | | the Borrow flag |
| | | | are subtracted |
| | | | from the |
| | | | contents of the |
| | | | accumulator and |
| | | | the result is |
| | | | placed in the |
| | | | accumulator. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. All |
| | | | flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | subtraction. |
| | | | |
| | | | `Example: | | | | | SBB B or SBB M` |
+-----------------+-----------------+-----------------+-----------------+
| ** SUI** | ** 8-bit data** | Subtract | The 8-bit data |
| | | immediate from | (operand) is |
| | | accumulator | subtracted from |
| | | | the contents of |
| | | | the accumulator |
| | | | and the result |
| | | | is stored in |
| | | | the |
| | | | accumulator. |
| | | | All flags are |
| | | | modified to |
| | | | reflect the |
| | | | result of the |
| | | | subtraction. |
| | | | |
| | | | `Ex | | | | | ample: SUI 45H` |
+-----------------+-----------------+-----------------+-----------------+
| **SBI\ | ** 8-bit data** | Subtract | The contents of |
| ** | | immediate from | register H are |
| | | accumulator | exchanged with |
| | | with borrow | the contents of |
| | | | register D, and |
| | | | the contents of |
| | | | register L are |
| | | | exchanged with |
| | | | the contents of |
| | | | register E. |
| | | | |
| | | | `Example: XCHG` |
+-----------------+-----------------+-----------------+-----------------+
| ** INR** | ** R** | Increment | The contents of |
| | | register or | the designated |
| | **M** | memory by 1 | register or |
| | | | memory) are |
| | | | incremented by |
| | | | 1 and the |
| | | | result is |
| | | | stored in the |
| | | | same place. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. |
| | | | |
| | | | `Example: | | | | | INR B or INR M` |
+-----------------+-----------------+-----------------+-----------------+
| **INX** | ** R** | Increment | The contents of |
| | | register pair | the designated |
| | | by 1 | register pair |
| | | | are incremented |
| | | | by 1 and the |
| | | | result is |
| | | | stored in the |
| | | | same place. |
| | | | |
| | | | `| | | | | Example: INX H` |
+-----------------+-----------------+-----------------+-----------------+
| ** DCR** | ** R** | Decrement | The contents of |
| | | register or | the designated |
| | **M** | memory by 1 | register or |
| | | | memory are M |
| | | | decremented by |
| | | | 1 and the |
| | | | result is |
| | | | stored in the |
| | | | same place. If |
| | | | the operand is |
| | | | a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. |
| | | | |
| | | | `Example: | | | | | DCR B or DCR M` |
+-----------------+-----------------+-----------------+-----------------+
| **DCX** | ** R** | Decrement | The contents of |
| | | register pair | the designated |
| | | by 1 | register pair |
| | | | are decremented |
| | | | by 1 and the |
| | | | result is |
| | | | stored in the |
| | | | same place. |
| | | | |
| | | | `| | | | | Example: DCX H` |
+-----------------+-----------------+-----------------+-----------------+
| **DAA\ | ** none** | Decimal adjust | The contents of |
| \*\* | | accumulator | the accumulator |
| | | | are changed |
| | | | from a binary |
| | | | value to two |
| | | | 4-bit binary |
| | | | coded decimal |
| | | | (BCD) digits. |
| | | | This is the |
| | | | only |
| | | | instruction |
| | | | that uses the |
| | | | auxiliary flag |
| | | | to perform the |
| | | | binary to BCD |
| | | | conversion, and |
| | | | the conversion |
| | | | procedure is |
| | | | described |
| | | | below. S, Z, |
| | | | AC, P, CY flags |
| | | | are altered to |
| | | | reflect the |
| | | | results of the |
| | | | operation. |
| | | | |
| | | | If the value of |
| | | | the low-order |
| | | | 4-bits in the |
| | | | accumulator is |
| | | | greater than 9 |
| | | | or if AC flag |
| | | | is set, the |
| | | | instruction |
| | | | adds 6 to the |
| | | | low-order four |
| | | | bits. |
| | | | |
| | | | If the value of |
| | | | the high-order |
| | | | 4-bits in the |
| | | | accumulator is |
| | | | greater than 9 |
| | | | or if the Carry |
| | | | flag is set, |
| | | | the instruction |
| | | | adds 6 to the |
| | | | high-order four |
| | | | bits. |
| | | | |
| | | | `Example: DAA` |
+-----------------+-----------------+-----------------+-----------------+

### Data Transfer Instructions

---

+-----------------+-----------------+-----------------+-----------------+
| ** Opcode** | ** Operand** | **Explanation | * |
| | | of Instruction\ | * Description** |
| | | ** | |
+-----------------+-----------------+-----------------+-----------------+
|  **MOV** |  **Rd, Rs** | Copy from |  This |
| | | source(Rs) to | instruction |
| | **M, Rs** | destination(Rd) | copies the |
| | | | contents of the |
| | **Rd, M** | | source register |
| | | | into the |
| | | | destination |
| | | | register; the |
| | | | contents of the |
| | | | source register |
| | | | are not |
| | | | altered. If one |
| | | | of the operands |
| | | | is a memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. |
| | | | |
| | | | `| | | | | Example: MOV B, | | | | | C or MOV B, M` |
+-----------------+-----------------+-----------------+-----------------+
| ** MVI** | ** Rd, data** | Move immediate | The 8-bit data |
| | | 8-bit | is stored in |
| | **M, data** | | the destination |
| | | | register or |
| | | | memory. If the |
| | | | operand is a |
| | | | memory |
| | | | location, its |
| | | | location is |
| | | | specified by |
| | | | the contents of |
| | | | the HL |
| | | | registers. |
| | | | |
| | | | `Examp | | | | | le: MVI B, 57H | | | | | or MVI M, 57H` |
+-----------------+-----------------+-----------------+-----------------+
| ** LDA** | ** 16-bit | Load | The contents of |
| | address** | accumulator | a memory |
| | | | location, |
| | | | specified by a |
| | | | 16-bit address |
| | | | in the operand, |
| | | | are copied to |
| | | | the |
| | | | accumulator. |
| | | | The contents of |
| | | | the source are |
| | | | not altered. |
| | | | |
| | | | `Exam | | | | | ple: LDA 2034H` |
+-----------------+-----------------+-----------------+-----------------+
| ** LDAX** | ** B/D Reg. | Load | The contents of |
| | pair** | accumulator | the designated |
| | | indirect | register pair |
| | | | point to a |
| | | | memory |
| | | | location. This |
| | | | instruction |
| | | | copies the |
| | | | contents of |
| | | | that memory |
| | | | location into |
| | | | the |
| | | | accumulator. |
| | | | The contents of |
| | | | either the |
| | | | register pair |
| | | | or the memory |
| | | | location are |
| | | | not altered. |
| | | | |
| | | | `E | | | | | xample: LDAX B` |
+-----------------+-----------------+-----------------+-----------------+
| ** LXI** | ** Reg. pair, | Load register | The instruction |
| | 16-bit data** | pair immediate | loads 16-bit |
| | | | data in the |
| | | | register pair |
| | | | designated in |
| | | | the operand. |
| | | | |
| | | | `Exampl | | | | | e: LXI H, 2034H | | | | | or LXI H, XYZ` |
+-----------------+-----------------+-----------------+-----------------+
| ** LHLD** | ** 16-bit | Load H and L |  The |
| | address** | registers | instruction |
| | | direct | copies the |
| | | | contents of the |
| | | | memory location |
| | | | pointed out by |
| | | | the 16-bit |
| | | | address into |
| | | | register L and |
| | | | copies the |
| | | | contents of the |
| | | | next memory |
| | | | location into |
| | | | register H. The |
| | | | contents of |
| | | | source memory |
| | | | locations are |
| | | | not altered. |
| | | | |
| | | | `Examp | | | | | le: LHLD 2040H` |
+-----------------+-----------------+-----------------+-----------------+
| ** STA** | ** 16-bit | 16-bit address | The contents of |
| | address** | | the accumulator |
| | | | are copied into |
| | | | the memory |
| | | | location |
| | | | specified by |
| | | | the operand. |
| | | | This is a |
| | | | 3-byte |
| | | | instruction, |
| | | | the second byte |
| | | | specifies the |
| | | | low-order |
| | | | address and the |
| | | | third byte |
| | | | specifies the |
| | | | high-order |
| | | | address. |
| | | | |
| | | | `Exam | | | | | ple: STA 4350H` |
+-----------------+-----------------+-----------------+-----------------+
| ** STAX** | ** Reg. pair** | Store | The contents of |
| | | accumulator | the accumulator |
| | | indirect | are copied into |
| | | | the memory |
| | | | location |
| | | | specified by |
| | | | the contents of |
| | | | the operand |
| | | | (register |
| | | | pair). The |
| | | | contents of the |
| | | | accumulator are |
| | | | not altered. |
| | | | |
| | | | `E | | | | | xample: STAX B` |
+-----------------+-----------------+-----------------+-----------------+
| ** SHLD** | ** 16-bit | Store H and L | The contents of |
| | address** | registers | register L are |
| | | direct | stored into the |
| | | | memory location |
| | | | specified by |
| | | | the 16-bit |
| | | | address in the |
| | | | operand and the |
| | | | contents of H |
| | | | register are |
| | | | stored into the |
| | | | next memory |
| | | | location by |
| | | | incrementing |
| | | | the operand. |
| | | | The contents of |
| | | | registers HL |
| | | | are not |
| | | | altered. This |
| | | | is a 3-byte |
| | | | instruction, |
| | | | the second byte |
| | | | specifies the |
| | | | low-order |
| | | | address and the |
| | | | third byte |
| | | | specifies the |
| | | | high-order |
| | | | address. |
| | | | |
| | | | `Examp | | | | | le: SHLD 2470H` |
+-----------------+-----------------+-----------------+-----------------+
| **XCHG\ | ** none** | Exchange H and | The contents of |
| ** | | L with D and E | register H are |
| | | | exchanged with |
| | | | the contents of |
| | | | register D, and |
| | | | the contents of |
| | | | register L are |
| | | | exchanged with |
| | | | the contents of |
| | | | register E. |
| | | | |
| | | | `Example: XCHG` |
+-----------------+-----------------+-----------------+-----------------+
| ** SPHL** | **none\ | Copy H and L | The instruction |
| | ** | registers to | loads the |
| | | the stack | contents of the |
| | | pointer | H and L |
| | | | registers into\ |
| | | | the stack |
| | | | pointer |
| | | | register, the |
| | | | contents of the |
| | | | H register |
| | | | provide the |
| | | | high-order |
| | | | address and the |
| | | | contents of the |
| | | | L register |
| | | | provide the |
| | | | low-order |
| | | | address. The |
| | | | contents of the |
| | | | H\ |
| | | | and L registers |
| | | | are not |
| | | | altered. |
| | | | |
| | | | `Example: SPHL` |
+-----------------+-----------------+-----------------+-----------------+
| ** XTHL** | ** none** | Exchange H and | The contents of |
| | | L with top of | the L register |
| | | stack | are exchanged |
| | | | with the stack |
| | | | location |
| | | | pointed out by |
| | | | the contents of |
| | | | the stack |
| | | | pointer |
| | | | register. The |
| | | | contents of the |
| | | | H register are |
| | | | exchanged with |
| | | | the next stack |
| | | | location |
| | | | (SP+1); |
| | | | however, the |
| | | | contents of the |
| | | | stack pointer |
| | | | register are |
| | | | not altered. |
| | | | |
| | | | `Example: XTHL` |
+-----------------+-----------------+-----------------+-----------------+
| ** PUSH** | ** Reg. pair** | Push register | The contents of |
| | | pair onto stack | the register |
| | | | pair designated |
| | | | in the operand |
| | | | are copied onto |
| | | | the stack in |
| | | | the following |
| | | | sequence. The |
| | | | stack pointer |
| | | | register is |
| | | | decremented and |
| | | | the contents of |
| | | | the highorder |
| | | | register (B, D, |
| | | | H, A) are |
| | | | copied into |
| | | | that location. |
| | | | The stack |
| | | | pointer |
| | | | register is |
| | | | decremented |
| | | | again and the |
| | | | contents of the |
| | | | low-order |
| | | | register (C, E, |
| | | | L, flags) are |
| | | | copied to that |
| | | | location. |
| | | | |
| | | | `Example: PU | | | | | SH B or PUSH A` |
+-----------------+-----------------+-----------------+-----------------+
| ** POP** | ** Reg. pair** | Pop off stack | The contents of |
| | | to register | the memory |
| | | pair | location |
| | | | pointed out by |
| | | | the stack |
| | | | pointer |
| | | | register are |
| | | | copied to the |
| | | | low-order |
| | | | register (C, E, |
| | | | L, status |
| | | | flags) of the |
| | | | operand. The |
| | | | stack pointer |
| | | | is incremented |
| | | | by 1 and the |
| | | | contents of |
| | | | that memory |
| | | | location are |
| | | | copied to the |
| | | | high-order |
| | | | register (B, D, |
| | | | H, A) of the |
| | | | operand. The |
| | | | stack pointer |
| | | | register is |
| | | | again |
| | | | incremented by |
| | | | 1. |
| | | | |
| | | | `Example: | | | | | POP H or POP A` |
+-----------------+-----------------+-----------------+-----------------+
| **OUT\ | ** 8-bit port | Output data |  The contents |
| ** | address** | from | of the |
| | | accumulator to | accumulator are |
| | | a port with | copied into the |
| | | 8-bit address | I/O port |
| | | | specified by |
| | | | the operand. |
| | | | |
| | | | `Ex | | | | | ample: OUT F8H` |
+-----------------+-----------------+-----------------+-----------------+
| ** IN** | ** 8-bit port | Input data to | The contents of |
| | address\*\* | accumulator | the input port |
| | | from a port | designated in |
| | | with 8-bit | the operand are |
| | | address | read and loaded |
| | | | into the |
| | | | accumulator. |
| | | | |
| | | | `E | | | | | xample: IN 8CH` |
+-----------------+-----------------+-----------------+-----------------+
