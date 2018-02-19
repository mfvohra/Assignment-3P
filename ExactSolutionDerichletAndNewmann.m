

clear all;
clc;

N = 40;
A=1;
k=10;
L=1;
Uo=1;
h = L/N;
v = 1;

    
    x = 0:h:L;
    U = (1-(( sinh(k*(L-x)) + sinh(k.*x)) / sinh(k*L)))*(A/k^2) + Uo.*(sinh(k.*(L-x))/sinh(k*L))%dirichlet exact solution
    
    y = 0:h:L;
    V = ((1-( cosh(k.*x) / cosh(k*L) )) * (A/k^2)) - ((v/k) .* ((sinh(k.*(L-x))) /(cosh(k*L))))%newmann exact solution
    