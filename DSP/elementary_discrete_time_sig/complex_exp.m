close all;
t = 1:0.1:10;
a = input('Enter Real: ');
b = input('Enter Imaginary: ');
s = a+(b*1i);
y = exp(s*t);
stem(t,real(y));