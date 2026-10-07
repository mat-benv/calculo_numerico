//Método do Jacobi

A=[4 1 2; 1 4 2; 2 2 5];
b=[67.95; 76.8; 87.65];

x0=[0;0;0]

erro = 10^-3;
erro_atual = 1;

n = size(A,1);
k = 0; // contador das iterações

while erro_atual>erro
    for i=1:n
        x1(i)=0;
        x2(i)=0;
        for j=1:n;
            if i<>j
                if i<j
                    x1(i)=A(i,i+1:n)*x0(i+1:n);
                else
                    x2(i)=A(i,1:i-1)*x0(1:i-1);
                end
                x(i)=(b(i)-x1(i)-x2(i))/A(i,i);
            end
        end   
    end
//    erro_atual=(max(abs(x-x0)))/(max(abs(x)));
    erro_atual=(max(abs(x-x0)));
    k=k+1;
    x0=x;
end

disp("Número de Interações")
disp(k)

disp("Matriz solução do sistema x =")
disp(x)

