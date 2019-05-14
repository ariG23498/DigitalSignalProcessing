syms z;
% Verification of Z Transform
a = [1 2 3 4];
sa = 0;
A = z_trans(a,sa);
b = [1 1 1 1];
sb = 0;
B = z_trans(b,sb);
% Linearity
% Z{a(n)+b(n)} = A(z) + B(z)
LHS = simplify(z_trans(a+b,sa));
RHS = simplify(A+B);
if(isequal(LHS,RHS))
    disp("LINEAR");
else
    disp("NON LINEAR");
end
% Time Shift
% Z{a(n-N)} = z^(-N)*A(z)
N = 1;
sa = N;
LHS = simplify(z_trans(a,sa));
RHS = simplify(z^(-N)*A);
if(isequal(LHS,RHS))
    disp("TIME SHIFT");
else
    disp("NO TIMESHIFT");
end
% Differentiation
% Z{n.a(n)} = -zA`(z)
a = [1 2 3 4];
sa = 0; 
n = [0 1 2 3];
LHS = simplify(z_trans(n.*a,sa));
RHS = simplify((-z)*simplify(diff(A)));
if(isequal(LHS,RHS))
    disp("Differentiation");
else
    disp("NO Differentiation");
end
% Convolution
% Z{a(n)*b(n)} = A(z)B(z)
a = [1 2 3 4];
sa = 0;
A = z_trans(a,sa);
b = [1 1 1 1];
sb = 0;
B = z_trans(b,sb);
[AB,SAB] = linear_conv(a,sa,b,sb);
LHS = simplify(z_trans(AB,SAB));
RHS = simplify(A*B);
if(isequal(LHS,RHS))
    disp("Convolution");
else
    disp("NO Convolution");
end
% Time Revarsal
% Z{a(-n)} = A(z^(-1))
a = [1 2 3 4];
sa = 0;
A = z_trans(a,sa);
a = fliplr(a);
sa = -3;
LHS = simplify(z_trans(a,sa));
RHS = subs(A,{z},{z^(-1)});
if(isequal(LHS,RHS))
    disp("Time Reversed");
else
    disp("NOT REVERSED");
end