function [outputArg1] = energy_signal(inputArg1)
% this function will give the energy of the input signal
% assuming signal starts from 1
l = length(inputArg1);
s = 0;
for i = 1:l
  s = s+abs(inputArg1(i)); 
end
outputArg1 = s;
end