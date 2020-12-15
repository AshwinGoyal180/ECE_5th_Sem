function [pilots] = makepilots(opt)
%MAKEPILOTS  generate pilot sequence
%
% [pilots] = makepilots(opt) generates a sequence of pilot symbols
%
% opt   indicator to select pilot sequence:
% 			Barker: 'barker13', 'B', 'b', 'Barker', or 'barker' (default)
%           PN: 'pn51', 'PN', 'pn', or 'pseudorandom'
%           split Barker: 'splitbarker' or 'splitBarker'
% 
% The length-13 Barker code and length-51 pseudo-random code 
% generated here are employed in the acoustic transmitter mobile  
% app available at iTunes Apps or Google Play.
%
% Digital Communication Laboratory
% Autumn 2014

if(nargin == 0), opt='barker13'; end % default
switch opt
    case {'barker13', 'B', 'b', 'Barker', 'barker'}
        pilots=[+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1];
    case {'pn51', 'PN', 'pn', 'pseudorandom'}
        pilots = [+1,+1,-1,+1,+1,-1,-1,+1,+1,+1, ...
                  -1,+1,+1,-1,+1,-1,-1,+1,+1,+1, ...
                  +1,-1,+1,+1,+1,+1,+1,-1,+1,-1,...
                  +1,-1,-1,-1,-1,+1,+1,-1,+1,-1, ...
                  -1,-1,+1,+1,-1,-1,-1,+1,+1,+1,-1];
    case {'splitbarker', 'splitBarker'}
        pilots=[+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1 ...
                +1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1];       
    otherwise
        warning('Unexpected pilot type. Default barker13.')
        pilots=[+1 +1 +1 +1 +1 -1 -1 +1 +1 -1 +1 -1 +1];
end