function [outputArg1] = circonv(x,h,l)
x1 = zeros(l,l);
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
disp(x1);
outputArg1 = x1*h';
disp("Aritra= "+outputArg1);
[o] = cconv(x,h,l);
disp("Matlab= "+o);
end

