clc
clear all
close all

t = 0:1/500:1;

A = 2*cos(2*pi*10*t)
B = 2*cos(2*pi*15*t)

subplot(2, 1, 1)

plot(t, A, ':k', 'LineWidth', 5)

subplot(2, 1, 2)

stairs(t, B, 'k')