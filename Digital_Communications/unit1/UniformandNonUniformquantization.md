## Quantization

% lecture-4

- transformation of signal $x[n]$ into one of a set of prescribed values.
- it is a process of transforming the sample amplitude $x(nT_s)$ of a
  message signal $x(t)$ at time $t = nT_s$ into discrete amplitude
  $x\prime(nT_s)$ taken from a finite set of possible amplitude.
- the process is memory less.
-

$$
m(t) \rightarrow max(m(t) = m_{max}
min(m(t) = m_{min}
$$

## Non uniform

$$
\Delta = \frac{m_{max} - m_{min}}{L}
$$

$L = 2^n$

## Uniform

# Quantization

$$
	L = 2^n
$$

## Quantization Noise


---

$$
    \frac{S}{N_q} = \frac{12P_s}{(\frac{m_{max}-m_{min}}{L})^2}
$$

---


- Case 1: m(t) is a sinusoid

    m_max = m_min = A_m

    $P_s = \frac{A^2_m}{2}$

    $$
        \frac{S}{N_q} = \frac{12A^2_m}{2} \times \frac{2^{2n}}{A_m - (-A_m)^2} = \frac{3}{2} 2^{2n}
    $$

    $$
     (\frac{S}{N_q})_{dB} = 10\log_{10}\frac{3}{2}2^{2n} = 6.02n + 1.8dB
    $$

- Case 2: m(t) is uniform RV with zero mean

    $$
    m_{max} = -m_{min} = A_m
    $$

    $$
        P_s = \frac{(A_m - (-A_m))^2}{12} = \frac{A^2_m}{3}
    $$

---

**Encoder:**

Gives codewords to each quantization level

- -8 	0 	000
- -6	1	001
- -4	2	010
- -2	3	011
- 0	4	100
- 2	5	101
- 4	6	110
- 6	7	111

**Sampling Rate**

Sampling frequency = $f_s$

Encoder Bits = $n$


Bit rate of transmission $R_b$= $n\times f_s bits/s$


1 Baud = k bits combined to make a symbol

Baud Rate = bit rate/ k = Symbol rate or signalling rate


If not mentioned then k = n

> Baud rate = sampling rate


Minimum theoretical bandwithd required  for transimmision = $\frac{R_b}{2}$Hz



$$
 X(m, n) = \left.
  \begin{cases}
    x(n), & \text{for } 0 \leq n \leq 1 \\
    x(n - 1), & \text{for } 0 \leq n \leq 1 \\
    x(n - 1), & \text{for } 0 \leq n \leq 1
  \end{cases}
  \right\} = xy
$$


