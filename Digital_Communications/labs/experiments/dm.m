pkg load communications
% A Digital communication device needs to transmit a sinusoidal wave of 3V
% amplitude and 4kHz frequency sampled with an impulse train of 40kHz. For
% reliable communication, it is required that the signal to noise ratio must
% at least be 30db. The analog to digital conversion method decided is Delta
% modulation. Further, the transmission requires FSK modulation scheme
% with carrier frequency 420.0kHz and 630.0kHz. Assuming the presence of 35dB
% AWGN, we decide to use the correlation receiver in conjunction with maximum
% likelihood detection criteria for digital data reception. Finally, the
% received bit sequence decoded and with the use of an LPF, we obtain the
% analog wave back. You are required to write a MATLAB Code that generates
% the following graphs for this communication system.
clc;
clear all;
close all;
A=3;
fm=4000;
%Given sampling frequency is ignored since Delta modulator requires use of
%much higher frequency. This is calculated on the basis of SNR and slope
%overload criteria.
SNR=35;
fs=sqrt(8*(pi^2)*(fm^2)*(10^(0.1*SNR))/3);
fs=ceil(fs/1e4)*1e4;
delta=2*pi*A*fm/fs;
% a) Original Message signal (0 points)
t_o=0:1/(fs):2/fm;
m = A*cos(2*pi*fm*t_o);
figure(1);
plot(t_o,m);
% b) Sampled Message Signal (1 point)
t_s=0:1/fs:2/fm - 1/fs;
s = A*cos(2*pi*fm*t_s);
figure(2);
stem(t_s,s);
% c) Quantized message signal (1 point)
coded=zeros(size(s));
q=zeros(size(s));
for i=1:length(s)
    if s(i)>=q(i)
        coded(i)=1;
        q(i+1)=q(i)+delta;
    else
        q(i+1)=q(i)-delta;
    end
end
q=q(2:end);
figure(3);
stairs(t_s,q);
% d) Encoded bit stream signal (1 point)
figure(4);
stairs(t_s,coded);
ylim([-0.2,1.2]);
% e) FSK modulated signal for first 20 bits(1 point)
f1=4*fs;
f0=3*fs;
x=coded(1:20);
t_m=0:1/(20*f1):length(x)/(fs) - 1/(20*f1);
s0=sin(2*pi*f0*t_m);
s1=sin(2*pi*f1*t_m);
lc=[];
for i=1:length(x)
    if x(i)==1
        lc=[lc ones(1,20*f1/(fs))];
    else
        lc=[lc zeros(1,20*f1/(fs))];
    end
end
lc_inv=not(lc);
fsk = lc.*s1+lc_inv.*s0;
figure(5);
subplot(2,1,1)
plot(t_m,lc);
ylim([-0.2,1.2]);
subplot(2,1,2);
plot(t_m,fsk);
% f) Noisy modulated signal for first 20 bits (output of AWGN) (1 point)
N0=30;
fsk_n = awgn(fsk,10*log10((3*fs^2)/(8*(pi^2)*(fm^2)))-N0);
figure(6);
plot(t_m,fsk_n);
% g) Detected bit stream for the first 20 bits (1 point)
lo_1=(2^0.5)*sin(2*pi*f1*t_m);
r1 = fsk_n.*lo_1;
cor_1=[];
for i=0:length(x)-1
    cor_1=[cor_1 sum(r1(i*20*f1/(fs)+1:(i+1)*20*f1/(fs)))*1/(20*f1)];
end
lo_0=(2^0.5)*sin(2*pi*f0*t_m);
r0 = fsk_n.*lo_0;
cor_0=[];
for i=0:length(x)-1
    cor_0=[cor_0 sum(r0(i*20*f1/(fs)+1:(i+1)*20*f1/(fs)))*1/(20*f1)];
end
cor=cor_1-cor_0;
d=zeros(size(x));
d(cor>=0)=1;
figure(7);
subplot(2,1,1);
plot(t_m,fsk_n);
subplot(2,1,2);
stairs(0:1/(fs):length(x)/(fs),[d,d(end)]);
axis([0,length(x)/(fs),-0.2,1.2]);
% h) Decoded Quantized samples (1 point)
r=zeros(size(coded));
for i=1:length(coded)
    if coded(i)==0
        r(i+1)=r(i)-delta;
    else
        r(i+1)=r(i)+delta;
    end
end
r=r(2:end);
figure(8);
stairs(t_s,r);
% i) Recovered Analog signal (1 point)
[num,den]=butter(5,0.5);
y=filter(num,den,r);
figure(9);
plot(t_s,y);
% Further, you are required to calculate the expected Probability of Bit
% error in the digital communication system used above. (2 points)
SNR_O=((3*fs^2)/(8*(pi^2)*(fm^2)))/(10^(0.1*N0));
Eb_No=SNR_O*f1/fs;
Pe=qfunc(sqrt(Eb_No));
fprintf('Probability of error: %f\n',Pe);

pause
