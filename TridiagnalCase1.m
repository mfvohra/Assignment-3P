
clear all;
clc;

N = 40;
k = 10;
Uo = 1;
UatL = 0;

A = 1;
L = 1;
v = 1;
h = L/N;
B = 2+(k^2*h^2);
a = zeros(N+1);
f = (h^2)*A*ones(N,1);
f(1) = f(1) - Uo;
f(N) = f(N) - UatL;

for j=1:N
    a(j,j) = -B;
    a(j,j+1) = 1;
    a(j+1,j) = 1;
    
end

a_trimmed = a(1:N,1:N);
U = a_trimmed\f;
U = U'
