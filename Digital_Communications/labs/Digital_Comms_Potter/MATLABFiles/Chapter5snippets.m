% Chapter 5 Code Snippets

%% Table 5.1
pilots=[1, 1, 1, 1, 1, -1, -1, 1, 1, -1, 1, -1, 1];
N_tr=length(pilots);
a=pilots;
xc=conv(a,fliplr(a));% auto-correlation
figure;stem(-(N_tr-1):N_tr-1, xc);
xlabel('lag number');title('autocorrelation')


%% Figure 5.5, Corrrelation
close all;clear all
L=7;D=3;alpha=0.5;
%pilot sequence}\\
Barker_13=[+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1];
pilots = Barker_13;
a=[];% no data to send (pilots only)
a=[a pilots];% prepend pilots
a_up = zeros(1,length(a)*L);
a_up(1:L:end) = a; % upsampled symbols
g = srrc(D,alpha,L); % SRRC pulse
m = conv(a_up,g); %use pulse shape
%place I-channel baseband sequence in noise
var_noise=1;
v = sqrt(var_noise/2)*randn(1,3*length(m));
start = 199;% where to place markers into noise
indices = start: start+length(m)-1;
v(indices)=v(indices)+m;
% at Receiver
y_up=conv(v,fliplr(g)); %matched filter
p_hat = 1;% symbol timing from CMA
y=y_up(p_hat:L:end); %downsampling
xc=conv(y,fliplr(pilots)); %cross-correlation with pilots
figure;plot(m,'LineWidth',2);grid;hold on;plot(m,'ko')
title('pulse-shaped pilot sequence','fontsize',13)
figure;plot(v,'LineWidth',2);axis([0 400 -3 3]);
title('received signal','fontsize',13)
figure;plot(xc,'LineWidth',2);grid
title('cross-correlation at symbol rate','fontsize',13)


%% Step (a)
y = zeros(1,100);
tau = 23; %delay >= 0
y( (1+tau) : (1+tau)+length(pilots)-1) = pilots;

[value,indx] = max(abs(CorrOutput));
peak = CorrOutput(indx);

%% Step (d), Table 5.3
% transmitted signal
figure;
plot(m,'bo');title('Baseband Tx Message')
% eye diagram
eyediagram(y_up,L,length(a),'complex');
% CMA criterion
figure;plot(0:L-1,cma_test);
title('CMA variance criterion')
% upsampled MF outputs; superimpose downsampled values
plot(p_est:length(y_up),real(y_up(p_est:end)));hold on
plot(p_est:L:length(y_up),real(y_up(p_est:L:end)),'ro')
title('Downsampling of MF Outputs')
% video illustrating all choices for downsampling
figure
for kk=1:L
  plot(kk:length(y_up),real(y_up(p_est:end)));hold on
  plot(kk:L:length(y_up),real(y_up(p_est:L:end)),'ro');
  title('Symbol timing from CMA','fontsize',13);hold off
  pause(0.5)% view at two frames per second
end
% correlation output
figure;plot(xc);
title('Cross-correlation for frame timing')
% scatter plot
figure;
plot(real(y_up(start:L:end)), ...
   imag(y_up(start:L:end)),'ko');
grid on; axis image;
title{'IQ samples after symbol timing recovery')
