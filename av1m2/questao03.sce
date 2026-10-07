
intervalo = [1 2];
e = 10^-4;

function y = f(x)
   y = log(x)-x^3 + 4
endfunction

k = 0;

a = intervalo(1);
b = intervalo(2);
x0 = 0;
x1 = (a*f(b)-b*f(a))/(f(b)-f(a)); //falsa posição

while (abs(x1-x0))>e do //limites do intervalo
    if f(a)*f(b)<0 then
        b = x1; //primeira metade contendo a raiz
    else
        a = x1; //segunda metade contendo a raiz
    end
    x0 = x1;
    x1=(a*f(b)-b*f(a))/(f(b)-f(a)); //nova falsa posição
    k = k + 1; //acresce o número de iterações
end

disp("Raiz aproximada: "+string(x1));
disp("Número de iterações: "+string(k));

// Raiz: 1.6522423
// Iterações: 6

exit()