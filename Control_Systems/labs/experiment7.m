% Find the response of First order system w.r.t unit step input

clc ;
close all;
clear all;


% T_f = \frac{s^2 + 4s + 8}{s^3 + 5s^2 + 6s + 10}

num = [1 4 8]
den = [1 5 6 10]

sys = tf(num, den)

plot(step(sys))
% title('First order system')


