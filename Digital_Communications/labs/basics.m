% if statement

i = 1;
if i >=0 
  display('True')
elseif i >= -5
  display('negative')
else
  display('nothing')
end

% looping structure

A = 0:1:90

A = linspace(0, 10, 51);

for i = 1:length(A)
  display(A)
endfor

% basics of plotting command

t = 0:1/10:1;
A = 2*cos(2*pi*100*t)
B = 2*cos(2*pi*150*t)

subplot(2, 1, 1)

plot(t, A)

subplot(2, 1, 2)

plot(t, B)
