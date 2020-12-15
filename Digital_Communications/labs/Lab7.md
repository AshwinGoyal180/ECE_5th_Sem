# Lab 7

Aim:

---

**SNR**

Signal -> LINE CODE

$$
r(t) = s(t) + n(t)
$$

Randomness based on noise element of received signal

$$
y(t) = r(t) * h(t) = s(t) * h(t) + n(t) * h(t)
$$

Signal power component and Noise Power Component

- Signal Power

Define $t_b$

$$
Ps_{T_b} = |s(T_b) * h(T_b)| ^ 2 = | \int_{-\infty}^{\infty} S(f) H(f) e^{j 2 \pi f T_b} df| ^2
$$

- Noise Power

$$
Pn_{T_b} = |n(t) * h(t)| ^ 2 = \frac{N_0}{2} \int_{-\infty}^{infty} | H(f) e^{j
2 \pi f T_b } df |
$$

**SNR**

$$
SNR = \frac{Ps_{T_b}}{Pn_{T_b}} = \frac{| \int_{-\infty}^{\infty} S(f) H(f) e^{
j 2 \pi f T_b} df | ^ 2 }{\frac{N_0}{2} \int_{-\infty}^{infty} | H(f) | ^ 2 df}
$$

Taking Fourier Transform and then taking inverse

\*\*Cauchy Schwartz Inequality

$f_1(x)$ and $f_2(x)$ then

$$
|\int_{-\infty}^{\infty} f_1(x) f_2(x) dx|^2 \leq \int_{-\infty}^{\infty} |f_1(x)|^2 dx \int_{-\infty}^{\infty} |f_2(x)|^2 dx
$$

$iff \ f_1(x) = f_2^*(x)$

$$
SNR \leq \frac{\int_{-\infty}^{\infty} |H(f)|^2 df \dot {\int_{-\infty}^{\infty} |S(f) e^{j 2 \pi f T_b}| ^2 df}}{\frac{N_0}{2} \int_{-\infty}^{infty} | H(f) | ^ 2 df}
$$

$$
H(f) = (S(f) e^{j 2 \pi f Tb})^*
$$

$$
H(f) = S^*(f) e^{j 2 \pi f Tb}
$$

$$
h(t) = \int_{-\infty}^{\infty} S^*(f) e^{j 2 \pi f (t -Tb)} df
$$

$$
h(t) = s(T_b - t)
$$

---

**Receiving Structure**

    -> Filter -> Detector

- Filter: Decision maker, SNR better, better decision making:
  - Increase SNR
  -

S = 100 Random Samples

H = flipped s

R = 200 random samples, S, 300 random samples

Y = Filer(H, 1, R)
