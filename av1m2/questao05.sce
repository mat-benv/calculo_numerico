//Entradas
a = 2; //intervalo
b = 3;
k = 0; //iterações
e = 10^(-5); //erro

function y = f(x)
   y = x^3 - 2*x - 5
endfunction

if(f(a)*f(b) > 0) then
   disp("Não há raiz no intervalo fornecido")
   exit()
else
   disp("Raiz encontrada no intervalo fornecido")
end

while (abs(b-a))>e do //valor da função
   x = (a+b)/2; //bisseção
   if f(a)*f(x)<0 then
      b = x; //primeira metade contendo a raiz
    else
      a = x; //segunda metade contendo a raiz
    end

    k = k + 1; //acresce o número de iterações
end

disp("Raiz aproximada: "+string(x)); // 2.0945511
disp("Número de iterações: "+string(k)); //17

exit()