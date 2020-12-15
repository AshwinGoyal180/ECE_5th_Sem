% octave pkg to load signal based utils
pkg load signal
pkg load communications


clc;
clear alll;
close all;


%Inputs
n = input('PCM system bits required: ')
fs = input('Sampling Rate: ')
L = 2^n;


t = 0:1/fs:2;			      % n1 number of samples to be selected
s = 8*sin(2*pi*t);


% Plotting

subplot(3, 1, 1);
plot(t, s);
title('Analog signal');
xlabel('Time --->');
ylabel('Amplitude --->');


subplot(3, 1, 2);
stem(t, s);
grid on;
title('Sampled Singal');
xlabel('Time --->');
ylabel('Amplitude --->');

% Quantization Process

vmax = max(s);
vmin = min(s);
del = (vmax - vmin)/L;
part = vmin + del : del : vmax - del;		%level are between vim and vmax with different
code = vmin + del/2 : del : vmax - del/2;	% contain quantized values
[ind, q] = quantiz(s, part, code);		% Quantization process
						% ind contains index number and q contain quantized values

l_1 = length(ind);

subplot(3, 1, 3);
stairs(t, q);					% Display the quantized values
grid on;
title('Quantized Singal');
xlabel('Time --->');
ylabel('Amplitude --->');


% Encoding process

figure

enc = de2bi(ind, n, 'left-msb');			% convet decimal to binary
k = 1;
for i=1:l_1
	for j=1:n
		coded(k) = enc(i, j);		% convert code matrix to a coded row vector
		k = k + 1;
	end
end

subplot(3, 1, 1);
grid on;
stairs(0:(length(t)*n) - 1, coded);		% Display the encoded signal
axis([0 (length(t)*n)-1 -0.5 1.5]);
title('Encoded Singal');
xlabel('Time --->');
ylabel('Amplitude --->');

% Demodulation of PCM Signal

qunt = reshape(coded, n, length(coded)/n);
index = bi2de(qunt', 'left-msb');		% Getback the index in decimal form

q_1 = del * index + vmin + (del/2);		% getback the quantized values

[n, d] = butter(5, 0.5);
de = filter(n, d, q);

subplot(3, 1, 2);
grid on;
stairs(t, q_1);					% Plot demodulated signal
title('Demodulated Singal');
xlabel('Time --->');
ylabel('Amplitude --->');


subplot(3, 1, 3);
grid on;
stairs(t, de);
title('Reconstructed Analog Singal');
xlabel('Time --->');
ylabel('Amplitude --->');


%pause in octave
pause
