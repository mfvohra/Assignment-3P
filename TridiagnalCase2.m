


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
f(1) = f(1) + 2*h*v;
f(N) = f(N) - UatL;
a_trimmed = zeros(N);


for j=1:N
    a(j,j) = -B;
    a(j,j+1) = 1;
    a(j+1,j) = 1;
    
end

a_trimmed(1,1) = -B; a_trimmed(1,2) = 2; a_trimmed(2,1)=1;
a_trimmed(2:N,2:N) = a(1:N-1,1:N-1);

U = a_trimmed\f;
U = U'


