% Chapter 4 Code Snippets
% Code to generate figures

%% Figure 4.6, eyediagram
% design SRRC
close all;clear all

L = 16; % oversampling factor
alpha = 0.5; % SRRC rolloff param
D = 2; % truncation to [-DT,DT]
g = srrc(D,alpha,L); % SRRC pulse
Ng = length(g);
% generate symbols
N = 100; % # symbols
M = 2; % alphabet size
a = 2*round(rand(N,1))-1; %bpsk
% pulse-amplitude modulate
a_up = zeros(1,N*L);
a_up(1:L:end) = a; % upsampled symbols
m = conv(a_up,g); % PAM
% matched-filter demodulate
y_up = conv(m,g); % use SRRC again
% remove causal filtering delay
delay = (Ng-1)/2+(Ng-1)/2;% delay due to pulses
y_up = y_up(1+delay:end); % remove delay

eyediagram(y_up,L,N,'real')

figure;
plot(y_up);hold on;plot((1:L:(N-1)*L+1),y_up(1:L:(N-1)*L+1),'ro');
title('Upsampled RX signal, y_{\uparrow}[k]','fontsize',13)
xlabel('Sample number','fontsize',13)

%% Figure 4.5, SRRC
figure(11);
g1=srrc(5,0,111);
g2=srrc(5,0.5,111);
g3=srrc(5,1,111);
plot(-5:1/111:5,g1,-5:1/111:5,g2,'--',-5:1/111:5,g3,':','Linewidth',2);
grid;legend('\alpha=0', '\alpha=0.5','\alpha=1')
title('SRRC Pulses: Time Domain','fontsize',13)
xlabel('time (in symbol periods)','fontsize',13)

f = (-1:0.0001:1);%normalized T=1
%alpha=0;
G1=zeros(size(f));G1(abs(f) <= 1/2)=1;
%half
alpha=0.5;
G2=zeros(size(f));G2(abs(f) <= (1-alpha)/2)=1;
indx=find( (abs(f) >= (1-alpha)/2) & (abs(f) <= (1+alpha)/2));
G2(indx) = (cos( pi/2/alpha*(abs(f(indx)) - (1-alpha)/2))).^2;
%one
alpha=1.0;
G3=zeros(size(f));G3(abs(f) <= (1-alpha)/2)=1;
indx=find( (abs(f) >= (1-alpha)/2) & (abs(f) <= (1+alpha)/2));
G3(indx) = (cos( pi/2/alpha*(abs(f(indx)) - (1-alpha)/2))).^2;
figure(12);
plot(f,G1,f,G2,'--',f,G3,':','Linewidth',2);
grid;legend('\alpha=0', '\alpha=0.5','\alpha=1')
title('SRRC Pulses: Frequency Domain','fontsize',13)
xlabel('frequency (normalized to T=1)','fontsize',13)
axis([-1 1 -0.1 1.1])


