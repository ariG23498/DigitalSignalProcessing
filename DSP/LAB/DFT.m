function [] = DFT(x)
disp("Aritra's DFT");
for k = 1:length(x)
    s = 0;
    for n = 1:length(x)
        s =s+ x(n)*exp(-(1j)*(2*pi/length(x))*(k-1)*(n-1));
    end
    disp(s)
end
disp("Matlab's DFT");
X = fft(x);
disp(X);
end

