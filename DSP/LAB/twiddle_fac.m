% Simulation of Twiddle Factor
% Wn = e^(-j(2*pi)/N)
% where n is the number of partitions in DFT
N = input('Number of samples');
Wn = exp((-1j)*(2*pi/N));
disp("Twiddle Factor"+Wn);

% Properties

% Periodic
% Wn^(nk + Z(N)) = Wn^(nk) where Z is any integer
Z = input('Any integer: ');
n = input('n ');
k = input('k ');
LHS = Wn^(n*k);
disp("LHS = "+LHS);
RHS = Wn^(n*k+(Z*N));
disp("RHS = "+RHS);
disp("LHS-RHS = "+abs(LHS-RHS))
if(abs(LHS-RHS) < 10^(-10))
    disp("Periodic");
else
    disp("Not Periodic");
end


% Symmetric
% Wn^(nk+(N/2)) = -Wn^(nk)
LHS = Wn^(n*k+(N/2));
disp("LHS = "+LHS);
RHS = -Wn^(n*k);
disp("RHS = "+RHS);
disp("LHS-RHS = "+abs(LHS-RHS));
 if(abs(LHS-RHS) < 10^(-10))
     disp("Symmetric");
 else
     disp("Not Symmetric");
 end
