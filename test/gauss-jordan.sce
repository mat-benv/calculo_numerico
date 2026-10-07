Ab=[1 1 1 1;2 1 -1 0; 4 4 2 2];
n=size(Ab,1)

disp("Matriz de Entrada")
disp(Ab)

for j=1:(n-1)
    for i=(j+1):n
        m(i,j)=Ab(i,j)/Ab(j,j);
        Ab(i,:)=Ab(i,:)-m(i,j)*Ab(j,:);
    end
end

disp("Matriz Triangular Superior")
disp(Ab)

/*x=[];
x(n)=Ab(n,n+1)/Ab(n,n);


for i=(n-1):-1:1
    x(i,1)=(Ab(i,n+1)-Ab(i,(i+1:n))*x((i+1:n),1))/Ab(i,i)
end*/


for i=(n-1):-1:1
    for j=n:-1:(i+1)
        m(i,j)=Ab(i,j)/Ab(j,j);
        Ab(i,:)=Ab(i,:)-m(i,j)*Ab(j,:);
    end
end

x=[];
for i=1:n
    x(i,1)=Ab(i,n+1)/Ab(i,i);
end

disp("Matriz Diagonal")
disp(Ab)

disp("Solução do Sistema")
disp(x)
