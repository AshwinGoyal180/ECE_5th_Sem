% Chapter 2 Code Snippets

%% Script to create Figure 2.6 (Linear phase filter example)
Fs=8000;
k =0:200;
varw=0.00005;
s = sqrt(varw)*randn(size(k)); %create noise
s(51:151)=s(51:151)+srrc(2,0.7,25); %signal+noise
%LPF order 48, passband edge 1000 Hz
h = firlpf(49,1000,2000,Fs);
y = conv(s,h); %convolution
figure;plot(k,s);
xlabel('sample index','fontsize',13)
axis([0 250 -0.1 0.3]);
title('Filtering example','fontsize',13)
k2=0:length(y)-1;
hold on;plot(k2,y,'r--');hold off
xlabel('sample index','fontsize',13);
legend('input','output')


%% Step (b)
Fs=16000;%sampling rate, sps
t=0:1/Fs:0.005; %5 milliseconds
s = exp(1j*2*pi*1000*t);%1j is sqrt(-1)
figure; %starts a new figure window
plottf(s,1/Fs);


%% Step (d)
figure;%create new figure window
subplot(2,1,1) %2 rows, 1 column, first plot
plot(real(v));title('In-phase signal')
subplot(2,1,2)
plot(imag(v));title('Quadrature signal');
xlabel('sample number')


%% Step (f:  IQ plot snippet
figure %create new figure window
plot(real(v),imag(v));
L=10;
hold on; %keep existing plot and overlay
plot(real(v(1:L:end)),imag(v(1:L:end)),'ro');
hold off;title('IQ Plot');
xlabel('In-phase');ylabel('Quadrature')


%% Snippets for demonstration
% constant pulse
pulse = ones(1,200)/sqrt(2); %200 sample pulse
m = pulse +1j*pulse;

% Adding circular white Gaussian noise 
sigma = sqrt(0.01);
r = s + sigma*randn(size(s));

% look at demod signal without LPF
figure;plottf(real(v),1/Fs);title('Demod signal before LPF')


