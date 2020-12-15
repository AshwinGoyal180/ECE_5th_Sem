% Chapter 11 Code Snippets

%% Step 11.3
[Output_symbol_matrix]=...
    OFDM_Transceiver(Input_symbol_stream,M,N,h,P)
% --------- Input ---------
% Input_symbol_stream is a row vector of length M*N
% N is the IFFT and FFT size.
% P is the cyclic prefix length
% h is the channel impulse response in vector form
% --------- Output ---------
% Output is a M by N matrix, with the n-th row
% being the output of the n-th subcarrier.
% --------- Requirement ---------
% 'conv' command is invoked only once.
% Calculation of the FFT of h is not allowed.


%% Step 11.4
M=100;
N=1024;
P=10;
h=[1,2,2*1j,-1j];
Input_symbol_stream=ones(1,M*N);

