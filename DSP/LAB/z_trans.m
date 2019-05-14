function [Z] = z_trans(x,start_index)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms z;
x_l = length(x);
Z = 0;
for i=1:x_l
    Z = Z + x(i)*z^(-(start_index));
    start_index = start_index + 1;
end
end

