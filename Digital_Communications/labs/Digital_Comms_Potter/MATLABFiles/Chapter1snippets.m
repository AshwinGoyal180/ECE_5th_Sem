% Chapter 1 Code Snippets

%% Table 1.1, step (a)
% Create an audiorecorder object with 8000 sps and
% a single channel (mono); view its properties:
Fs=8000;
recObj = audiorecorder(Fs, 16, 1);
get(recObj)

% Collect a sample of your speech with a microphone;
% and, plot the signal data:

% Record your voice for 2 seconds. Use display and 
% pause as aids to control the start of the recording.
Trec = 2; %2 second record time
disp('Press Enter to start recording.')
pause;%wait for keystroke
disp('Recording.')
recordblocking(recObj, Trec);
disp('End of Recording.')

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
t = (0:length(myRecording)-1)/Fs; %sample times (sec)
plot(t,myRecording);


%% Table 1.2, step (b)
% Example: play a one second tone at 440Hz
Fs=8000; % sampling rate of 8000 sps
t = 0:1/Fs:1; %list of sampling times
signal = cos(2*pi*440*t);

% Create audioplayer object
ToneObj = audioplayer(signal,Fs);

% Play the sound
play(ToneObj)

% Example: play back the speech recorded previously
play(recObj);



%% Step (i)
close all;clear all
Fs=16000;% 16000 sps
t=0:1/Fs:0.25;% 250 milliseconds segment
whitenoise=randn(size(t));% Gaussian random vbls
figure;plottf(whitenoise,1/Fs);% view signal
title('White Noise')
%filter design; see >> help firls
h = firls(48,[0 1200 1800 Fs/2]/(Fs/2),[1 1 0 0]);
pinknoise=filter(h,1,whitenoise);% convolution
figure;plottf(pinknoise,1/Fs);% view signal
title('Bandlimited Noise')


%% Step (m)
fc=4000;%4000 Hz
s = cos(2*pi*fc*t) .* pinknoise;%point-by-point mult.
figure;plottf(s,1/Fs);
title('Modulated Bandpass Noise')
