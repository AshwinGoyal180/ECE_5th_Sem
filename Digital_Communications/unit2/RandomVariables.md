## Definition:

It is a mapping of the outcome of a random event to number of real axis.

Identifying a random occurrence and mapping its outcomes on to number on a real axis.

Example: Coin toss, dice throw, pulling colored disc out of a bag, etc.

The idea of chance of these events is related to statistics.


## Analysis

Statistics:
	1. Moments,
	2. Averages,
to make sense of the data/information.

## Values

$$
\overline{m_x}= \sum_{\forall i} x_i P_i
$$



Probability Density function and Cumulative distribution function.

## PDF

Probability Density Function

$f_X(x)$ is a function that maps the statistical information of the outcomes of
a random event to the real axis.

Density function: Area the under the curve represents the density of the value
under observation.

### Properties of PDF

1.  $\int_{\forall i} f_X(x) dx =$ total probability of all cases $= 1$

2.  $f_X(x) \ge 0$

3.  $P(a \le X \le  b) = \int_{x=a}^{x=b} f_X(x) dx$


## CDF

Cumulative Distribution Function:

$F_X(x)$ is defined as the function of distribution of probabilities accumulated
from $x=-\infty$ to the current for $x=x$.

$$
F_X(x) = Pr(X \le x)
$$

Connection b/w PDF and CDF.

$$
F_X(x) = \int_{x\prime=-\infty}^{x\prime = x} f_X(x\prime) dx\prime
$$

Running Integral:

$$
f_X(x) = \frac{dF_X(x)}{dx}
$$

### Properties of CDF

1.
$F_X(-\infty) = 0, F_X(\infty) = 1$
Terminal probability.

2.
$0 \le F_X(x) \le 1$

3.
Non Decreasing; for $x_1 < x_2, F_X(x_1) \le F_X(x_2)$

4.
$Pr(a \le X \le b) = F_X(b) - F_X(a)$

---

## Relation

---

# Random Variables

## Binomial Random Variable

Multiple Coin Tosses:

## Poisson's RV

To identify chance of a rare occurrence

$$
	f_X(x) = li\sum_{k = 0}^{\infty}
$$


## Continous RV's

**1. Uniform Distribution**

