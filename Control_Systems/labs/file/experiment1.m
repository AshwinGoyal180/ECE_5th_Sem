pkg load control

clc;
clear alll;
close all;


num = [5 25];
deno1 = [2 25];
deno2 = [3 2 25];

sys1 = tf(num, deno1);
sys2 = tf(num, deno2);

subplot(2, 1, 1);
step(sys1);
xlabel('time \rightarrow')
ylabel('amplitude \rightarrow')
title(' Step response for first order system')

subplot(2, 1, 2);
step(sys2);
xlabel('time \rightarrow')
ylabel('amplitude \rightarrow')
title(' Step response for second order system')

pause


