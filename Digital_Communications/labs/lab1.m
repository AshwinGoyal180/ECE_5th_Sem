clc;
clear all;
close all;

a = input('Enter the amplitude')
fm = input('Enter the frequency')

t = 0:1/(1000*fm):2/fm;
s = a*sin(2*pi*fm*t);
fs = 20*fm;
 
p = (1 + square(2 * pi * fs * t, 50)) / 2; % sqaure wave 50% duty cyle
p1 = (1 + square(2 * pi * fs * t, 0.1)) / 2; % nearly equal to an impulse train

sam1 = s.*p;                  % natural sampling
sam2 = s.*p1;                 % ideal sampling

subplot(3, 1, 1)
plot(t, s);

subplot(3, 2, 3)
stem(t, s)
