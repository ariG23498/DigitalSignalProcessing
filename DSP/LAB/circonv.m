function [outputArg1] = circonv(x,h,l)
x1 = zeros(l,1);
shift = 0;
for i=1:l
    for j=1:l
        m = mod(j+shift,l);
        if(m == 0)
            m =l;
        end
            x1(m,i) = x(j);
    end
    shift = shift+1;
end
outputArg1 = x1*h;
end

