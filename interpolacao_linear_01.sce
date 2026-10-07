// Interpolação Linear

clc

// Entradas
x = [0.1; 0.6]; // pontos x
y = [1.221; 3.320]; // pontos y

a1 = (y(2)-y(1))/(x(2)-x(1)); // coeficiente angular
a0 = y(1)-a1*x(1); // coeficiente linear

disp("Coeficiente angular: ");
disp(a1);

disp("Coeficiente linear: ");
disp(a0);

x0=0.2;
x1=0.3;

p1=a0+a1*x0; // valor aproximado de f(x0)
p2=a0+a1*x1; // valor aproximado de f(x1)

disp("Valor aproximado de f(x0): ");
disp(p1);

disp("Valor aproximado de f(x1): ");
disp(p2);

exit()