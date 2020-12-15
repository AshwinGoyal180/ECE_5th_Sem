```octave{cmd=true}
pkg load control

clc;
clear alll;
close all;

k = 12;
z = 0.65;
wn = 4;

num = [k*wn*wn]
den = [1 2*z*wn wn*wn]

g = tf(num, den)
step(g)
xlabel('time \rightarrow')

wd = wn * sqrt( 1 - z*z)
fi = atan(sqrt(1 - z*z)/z)
tr = (pi -fi)/wd
tp = pi/wd
ts = 4/(z*wn)

pause
```
