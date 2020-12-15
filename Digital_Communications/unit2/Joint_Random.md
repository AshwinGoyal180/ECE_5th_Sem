# Joint Random Variables

PDF/CDF in 2 RVs


- Joint Probability
$$
P(A, B) = \textrm{Probability of occurances of A and B where they
may be dependent or independent}
$$


- Conditional Probability
$$
P(A|B) = \textrm{Probability of A given that B occurs}
$$

$$
P(B|A) = \textrm{Probability of B given that A occurs}
$$

- Baye's Theorem
$$
P(A, B) = P(A|B)P(B) = P(B|A)P(A) = P(B, A)
$$


## Statistical Independence

$$
P(A, B) = P(A)P(B)
$$

$$
P(A|B) = P(A)
$$

$$
P(B|A) = P(B)
$$



## Joint Random Variables

$$
f_{X, Y}(x, y) \qquad F_{X, Y}(x, y)
$$

## Conditional RVs

$$
f_{X|Y}(x), f_{Y|X}(y)
$$


$$
f_{X, Y}(x, y) = f_{X|Y}(x)f_Y(y) = f_{Y|X}f_X(x)
$$


## Statistical Independence

$$
f_{XY}(x, y) = f_X(x)f_Y(y)
$$

## PDF Properties

1. $f_{X, Y}(x, y) \geq 0$

2. $\int_{-\infty}^{\infty}  \int_{-\infty}^{\infty} f_{X, Y}(x, y) dx dy = 1$

3. $Pr(x_1 \leq x \leq x_2, y_1 \leq y \leq y_2) = \int_{x_1}^{x_2} \int_{y_1}^{y_2} f_{X, Y}(x, y) dx dy$

4. $F_{X, Y}(x, y) = \int_{x}^{\infty}  \int_{y}^{\infty} f_{X, Y}(x\prime,   y\prime) dx\prime dy\prime$

5. $f_X(x) = \int_{-\infty}^{\infty}f_{X, Y}(x, y)dy; \quad f_X(x) = \int_{-\infty}^{\infty}f_{X, Y}(x, y)dy$


## CDF Properties

1. $0 \leq F_{X, Y}(x,y) \leq 1$

2. $F_{X, Y}(-\infty, y) = F_{X, Y}(x, -\infty) = F_{X, Y}(-\infty, -\infty) = 0$

3. $F_{\infty, Y} = F_Y(y); \quad F_{X, Y}(x, \infty) = F_X(x)$

4. $F_{X, Y}(\infty, \infty) = 1$

## Moments



$$
E\{g(x)\} = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x) f_{X, Y}(x, y) dxdy
$$

$$
g(y) = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(y) f_{X, Y}(x, y) dxdy
$$

$$
E\{g(x, y)\} = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x ,y) f_{X, Y}(x, y) dxdy
$$


1.  Correlation
$$
g(x, y) = xy
$$

$$
E\{XY\} = \int_{-\infty}^{\infty} \int_{\infty}^{\infty} xy f_{X, Y} dx dy
$$

2. Covariance

$$
g(x, y) = (x - m_x)(y - m_y)
$$


$$
\sigma\{XY\} = \int_{-\infty}{\infty} \int_{\infty}^{\infty} xy f_{X, Y} dx dy
$$

3. Special Case: Statistical Independence

$$
f_{X, Y}(x, y) = f_X(x)f_Y(y)
$$


$$
\implies E\{X Y\} = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} xy f_X(x) f_Y(y) dx dy
$$

$$
\implies E\{X Y\} = \left (\int_{-\infty}^{\infty} xf_X(x)dx\right )  \left
(\int_{-\infty}^{\infty}f_Y(y)dy \right )
$$

$$
\implies E\{X Y\} = E\{X\}\{Y\}
$$

$$
\implies \sigma_{X, Y} = 0
$$

Covariance $\sigma_{XY} = E\{XY\} - m_x m_y = 0$

## Orthogonality


$$
\hat{a} \cdot \hat{b} = |a| |b| cos \theta = 0
$$

$$
\int_{-\infty}^{\infty} f(x) g(x) dx
$$


Correlation is $E\{XY\} = 0$

Correlation coefficient

$$
\rho_{XY} = \frac{\sigma_{XY}}{\sigma_X \sigma_Y} = cos \theta
$$



## Uniform RV


$$
f_{XY}(x, y) =
\begin{cases}
 \frac{1}{(x_2 - x_1)(y_2 - y_1)},  & \forall x_1 \leq x \leq x_2; \\
 0, & otherwise
\end{cases}
$$


## Gaussian

$$
f_{XY}(x, y) = \frac{1}{2\pi \sigma_x \sigma_y} e^{-(\frac{(x -
\mu_x)^2}{2\sigma_x^2} + \frac{(y - \mu_y)^2}{2\sigma_y^2})}
$$
