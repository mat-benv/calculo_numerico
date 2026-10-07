clc

//Entradas
a = 0; //intervalo
b = 1;
k = 0; //iterações
e = 2*10^(-3); //erro

function f=f(x)
    f = x^3-9*x+3; //f(x)
endfunction

//x = (a+b)/2; //bisseção
x = (a*f(b)-b*f(a))/(f(b)-f(a)); //falsa posição

while (abs(f(x)))>e //valor da função
//while (abs((b-a)/2))>e //limites do intervalo
    if f(a)*f(x)<0 then
        b = x; //primeira metade contendo a raiz
    else
        a = x; //segunda metade contendo a raiz
    end
    //x = (a+b)/2; //nova bisseção
    x=(a*f(b)-b*f(a))/(f(b)-f(a)); //nova falsa posição
    k = k + 1; //acresce o número de iterações
end

disp("Raiz aproximada: "+string(x));
disp("Número de iterações: "+string(k));