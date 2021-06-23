function z=junk(x)

global alpha;
omega=alpha;  %variable that needed to be varied

% Equation - d^2 x/dt^2 + c dx/dt + b x + a x^3 = F sin(omega t)
c=0.1;       %Parameters
b = 1;
a=0.5;
F=1.20;

A=x(1);B=x(2);     %coefficient that needed to be calculated

z=(-A*omega^2 - (c*B*omega) + A*b +((3/4)*a*A^3) + ((3/4)*a*A*B^2) -F);
z=[z;(-B*omega^2 + (c*A*omega) + B*b +((3/4)*a*B^3) + ((3/4)*a*A^2*B))];