pkg load control

w = 0:10:100;
x1 = w.*w;
x2 = sqrt((w.*w)+10)
phase = 90 - atan(w/10);
mag = 1./(x1.*x2)
num = [1];
den = [1 10];
sys = tf(num, den)
polar(phase, mag)

pause
