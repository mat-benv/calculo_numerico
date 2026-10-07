A = [10 -2 1; -3 8 -1; 1 -1 6];
b = [24; -30; 33];
x = [0; 0; 0];

tol = 10^-5;
erro = 1;
k = 0;

while erro > tol
    x_novo =x;
    x(1) = (b(1) - A(1,2)*x(2) - A(1,3)*x(3))/A(1,1);
    x(2) = (b(2) - A(2,1)*x(1) - A(2,3)*x(3))/A(2,2);
    x(3) = (b(3) - A(3,1)*x(1) - A(3,2)*x(2))/A(3,3);
    erro = norm(x - x_novo);
    k = k + 1;
end

disp("Número de Iterações")
disp(k)
disp("Matriz solução do sistema x =")
disp(x)
