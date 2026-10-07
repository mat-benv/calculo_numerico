clc

// Interpolação Linear Modelo 2

x=[5;7];
y=[9;11];

n=size(x,1);

A=ones(n, n+1);
A(:,2)=x;
A(:,3)=y;

disp("Matriz A")
disp(A)

exit()