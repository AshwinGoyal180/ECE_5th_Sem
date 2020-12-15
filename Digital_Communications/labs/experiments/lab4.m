% octave pkg to load signal based utils
pkg load signal

clc;
clear alll;
close all;


%Inputs
b = round(rand(1, 10))

t = 0 : 1/100 : 0.99;
inc = t(2) - t(1);

% Line Codes

NRZ_L_U = [];
NRZ_L_P = [];
NRZ_M_U = [];
NRZ_M_P = [];
NRZ_S_U = [];
NRZ_S_P = [];
RZ_U	= [];
RZ_B	= [];
MAN	= [];

sign = 1;
NRZ_AMI = [];
RZ_AMI  = [];

% Defining

for i=1:length(b)
	if b(i) == 1
		NRZ_L_U = [NRZ_L_U ones(size(t))];
		NRZ_L_P = [NRZ_L_P ones(size(t))];
		RZ_U	= [RZ_U ones(1, length(t)/2) zeros(1, length(t)/2)];
		RZ_B	= [RZ_B ones(1, length(t)/2) zeros(1, length(t)/2)];
		MAN	= [MAN square(2*pi*t, 50)];
		NRZ_AMI	= [NRZ_AMI sign*ones(size(t))];
		RZ_AMI	= [RZ_AMI sign*ones(1, length(t)/2) zeros(1, length(t)/2)];
		sign = sign*(-1);
	elseif b(i) == 0
		NRZ_L_U = [NRZ_L_U zeros(size(t))];
		NRZ_L_P = [NRZ_L_P -ones(size(t))];
		RZ_U	= [RZ_U zeros(size(t))];
		RZ_B	= [RZ_B -ones(1, length(t)/2) zeros(1, length(t)/2)];
		MAN	= [MAN -square(2*pi*t, 50)];
		NRZ_AMI	= [NRZ_AMI zeros(size(t))];
		RZ_AMI	= [RZ_AMI zeros(size(t))];
	end
end

% mark encoding
mark = 0;
for i=1:length(b)
	mark = [mark xor(b(i), mark(i))];
end
mark = mark(2:end);

for j=1:length(mark)
	if mark(j) == 1
		NRZ_M_U = [NRZ_M_U ones(size(t))];
		NRZ_M_P = [NRZ_M_P ones(size(t))];
	elseif mark(j) == 0
		NRZ_M_U = [NRZ_M_U zeros(size(t))];
		NRZ_M_P = [NRZ_M_P -ones(size(t))];

	end
end

%space encoding
space = 0;
for i=1:length(b)
	space = [space not(xor(b(i), space(i)))];
end

space = space(2:end);


for k=1:length(space)
	if space(k) == 1
		NRZ_S_U = [NRZ_S_U ones(size(t))];
		NRZ_S_P = [NRZ_S_P ones(size(t))];
	elseif space(k) == 0
		NRZ_S_U = [NRZ_S_U zeros(size(t))];
		NRZ_S_P = [NRZ_S_P -ones(size(t))];
	end
end

%Plotting
t1 = 0 : inc : length(b) - inc;

subplot(6, 2, 1);
stairs(t1, NRZ_L_U);
ylim([-1.2, 1.2])
ylabel('NRZ L U')

subplot(6, 2, 2);
stairs(t1, NRZ_L_P);
ylim([-1.2, 1.2])
ylabel('NRZ L P')


subplot(6, 2, 3);
stairs(t1, NRZ_M_U);
ylim([-1.2, 1.2])
ylabel('NRZ M U')


subplot(6, 2, 4);
stairs(t1, NRZ_M_P);
ylim([-1.2, 1.2])
ylabel('NRZ L U')


subplot(6, 2, 5);
stairs(t1, NRZ_S_U);
ylim([-1.2, 1.2])
ylabel('NRZ L U')


subplot(6, 2, 6);
stairs(t1, NRZ_S_U);
ylim([-1.2, 1.2])
ylabel('NRZ L U')


subplot(6, 2, 7);
stairs(t1, RZ_U);
ylim([-1.2, 1.2])
ylabel('RZ U')


subplot(6, 2, 8);
stairs(t1, RZ_B);
ylim([-1.2, 1.2])
ylabel('RZ B')


subplot(6, 2, 9);
stairs(t1, NRZ_AMI);
ylim([-1.2, 1.2])
ylabel('NRZ AMI')


subplot(6, 2, 10);
stairs(t1, RZ_AMI);
ylim([-1.2, 1.2])
ylabel('RZ AMI')


subplot(6, 2, 11);
stairs(t1, MAN);
ylim([-1.2, 1.2])
ylabel('Manchester')


%pause in octave
pause


