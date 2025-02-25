%% template for char2psk.m
function [a,bits] = char2psk(str,M);
% char2psk.m
% Function to map a charater string to PSK symbols
% (See also psk2char.m)
%
% Inputs:
% str       string variable with text
% M        size of PSK constellation (2 or 4)
%           or, user can select 'bpsk' or 'qpsk'
% Outputs:
% a         output list of PSK symbols (complex-valued)
% bits      output list of bits (logical)

% Digital Communications Laboratory
% Autumn 2014

%% error checks
if(nargin ~= 2)
    error('Error: char2psk.m requires two input arguments.')
end
%% text to symbols
% first, string to decimal to binary
str_binary = dec2bin(double(str),8);
% convert array row-by-row to one long string
bits = reshape(str_binary.',1,8*length(str));
% binary to symbols
switch M
    case {2,'bpsk','BPSK'}
        M = 2;
        a = (2*bin2dec(bits.')-1).';
    case {4,'qpsk','QPSK'}
        M = 4;
        %
        %create your QPSK code here
        %
end
bits=(bits=='1');% convert char to logical
% end of function
