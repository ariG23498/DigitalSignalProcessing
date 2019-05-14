function [] = IDFT(x)
disp("Aritra's IDFT");
for n = 1:length(x)
    s = 0;
    for k = 1:length(x)
        s =s+ x(k)*exp((1j)*(2*pi/length(x))*(k-1)*(n-1));
    end
    disp(real(s/length(x)));
end
disp("Matlab's IDFT");
X = ifft(x);
disp(X);
end

