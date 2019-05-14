% Simulation of Twiddle Factor
% Wn = e^(-j(2*pi)/N)
% where n is the number of partitions in DFT
x = [1 2 3 4 5];
N = length(x);
Wn = exp((-1j)*(2*pi/N));
disp("Twiddle Factor"+Wn);

% Properties
% Periodic
k = input('Any integer between 0 to 4');
LHS = Wn^(k)
RHS = Wn^(k+N)
if(isequal(LHS,RHS))
    disp("Periodic");
else
    disp("Not Periodic");
end
% Symmetric
LHS = Wn^(k+floor(N/2))
RHS = -Wn^(k)
if(isequal(LHS,RHS))
    disp("Symmetric");
else
    disp("Not Symmetric");
end
