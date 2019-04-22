close all;
t = 1:0.1:10;
a = input('Enter a: ');
% unlike in continuous real exponents e^(at), discrete terms have a^(n)
y = a.^t;
stem(t,y);