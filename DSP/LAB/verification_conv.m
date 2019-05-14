a = input('ENTER A');
sa = 0;
b = input('ENTER B');
sb = 0;
c = input('ENTER C');
sc = 0;
% ASSOCIATIVITY
% (a*b)*c = a*(b*c)
[ab,sab] = linear_conv(a,sa,b,sb);
[bc,sbc] = linear_conv(b,sb,c,sc);
[LHS ,index] = linear_conv(ab,sab,c,sc);
[RHS ,index1]= linear_conv(a,sa,bc,sbc);
if(isequal(RHS,LHS))
    disp("ASSOCIATIVITY PROVED");
else
    disp("NOT ASSOCIATIVE");
end
% COMMUTATIVITY
% a*b = b*a
[ba,sba] = linear_conv(b,sb,a,sa);
if(isequal(ab,ba))
    disp("COMMUTATIVITY PROVED");
else
    disp("NOT COMMUTATIVE");
end
% DISTRIBUTIVE
% a*(b+c) = (a*b)+(a*c)
[lhs,slhs] = linear_conv(a,sa,(b+c),sb);
[ac,acs] = linear_conv(a,sa,c,sc);
rhs = ac+ab;
if(isequal(ab,ba))
    disp("DISTRIBUTIVE PROVED");
else
    disp("NOT DISTRIBUTIVE");
end