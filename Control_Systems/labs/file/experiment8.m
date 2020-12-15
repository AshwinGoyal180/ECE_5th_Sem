pkg load control

num = [100]
den = [1 5 6 3]
sys = tf(num, den)

bode(sys)
[mag, phase] = bode(sys)

pause
