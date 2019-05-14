function [y,sy] = linear_conv(x,sx,h,sh)
xl = length(x);
hl = length(h);
m = xl+hl-1;
y = zeros(1,m);
sy = sx+sh;
xn = [x,zeros(1,hl-1)];
hn = [h,zeros(1,xl-1)];
for i=1:m
    for j=1:i
        y(i) = y(i)+xn(j)*hn(i-j+1);
    end
end
end

