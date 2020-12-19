pkg load communications


% A Digital communication device needs to transmit a sinusoidal wave of 3V
% amplitude and 4kHz frequency sampled with an impulse train of 40kHz. For
% reliable communication, it is required that the signal to noise ratio must
% at least be 40db. The analog to digital conversion method decided is
% Delta modulation. Further, the transmission requires FSK modulation scheme
% with carrier frequency 840.0kHz and 1120.0kHz. Assuming the presence of 25dB
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
fs=40000;
% a) Original Message signal (0 points)
t_o=0:1/(50*fm):2/fm;
m = A*cos(2*pi*fm*t_o);
figure(1);
plot(t_o,m);
% b) Sampled Message Signal (1 point)
t_s=0:1/fs:2/fm - 1/fs;
s = A*cos(2*pi*fm*t_s);
figure(2);
stem(t_s,s);
% c) Quantized message signal (1 point)
SNR=25;
n = 1;
l = length(m);
delta = (A/2)*(3/(10^(SNR/10)))^0.5;
xn = 0;
for i=1:l
    if m(i)>=xn(i)
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    else
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    end
end

%figure(3);
%stairs(t_s,xn(1:l));

% d) Encoded bit stream signal (1 point)
figure(3);
stairs(t_s,d);
ylim([-0.2,1.2]);

% e) FSK modulated signal for first 20 bits(1 point)
f1 = 11.2e5;
f0 = 8.4e5;
x=coded(1:20);
t_m=0:1/(20*f1):length(x)/(n*fs) - 1/(20*f1);
s0=sin(2*pi*f0*t_m);
s1=sin(2*pi*f1*t_m);
lc=[];
for i=1:length(x)
    if x(i)==1
        lc=[lc ones(1,20*f1/(n*fs))];
    else
        lc=[lc zeros(1,20*f1/(n*fs))];
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
N0=25;
fsk_n = awgn(fsk,6.02*n+1.8-N0);
figure(6);
plot(t_m,fsk_n);
% g) Detected bit stream for the first 20 bits (1 point)
lo_1=(2^0.5)*sin(2*pi*f1*t_m);
r1 = fsk_n.*lo_1;
cor_1=[];
for i=0:length(x)-1
    cor_1=[cor_1 sum(r1(i*20*f1/(n*fs)+1:(i+1)*20*f1/(n*fs)))*1/(20*f1)];
end
lo_0=(2^0.5)*sin(2*pi*f0*t_m);
r0 = fsk_n.*lo_0;
cor_0=[];
for i=0:length(x)-1
    cor_0=[cor_0 sum(r0(i*20*f1/(n*fs)+1:(i+1)*20*f1/(n*fs)))*1/(20*f1)];
end
cor=cor_1-cor_0;
d=zeros(size(x));
d(cor>=0)=1;
figure(7);
subplot(2,1,1);
plot(t_m,fsk_n);
subplot(2,1,2);
stairs(0:1/(n*fs):length(x)/(n*fs),[d,d(end)]);
axis([0,length(x)/(n*fs),-0.2,1.2]);
% h) Decoded Quantized samples (1 point)
qu=reshape(coded,n,length(coded)/n);
index=bi2de(qu','left-msb');
r=del*index+vmin+(del/2);
figure(8);
stairs(t_s,r);
% i) Recovered Analog signal (1 point)
[num,den]=butter(5,0.5);
y=filter(num,den,r);
figure(9);
plot(t_s,y);
% Further, you are required to calculate the expected Probability of Bit
% error in the digital communication system used above. (2 points)
SNR_O=10^(0.1*(6.02*n+1.8-N0));
Eb_No=SNR_O*f1/(n*fs);
Pe=qfunc(sqrt(Eb_No));
fprintf('Probability of error: %f\n',Pe);
