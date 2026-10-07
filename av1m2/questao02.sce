
intervalo = [4 5];
erro = 5*10^-5;

function y = f(x)
   y = exp(x/2) -2*x
endfunction

// Reescritas:
// x = exp(x/2)/2;
// x = 2*log(2*x);

function z = g(x)
   z = 2*log(2*x);
endfunction

x0 = 4.5;
iteracoes = [x0];
convergente = %t;
x1 = g(x0);

while(abs(x1 - x0) > erro) do
   x1 = g(x0);
   iteracoes = [iteracoes, x1];
   if(length(iteracoes) > 2) then
      if(abs(iteracoes($) - iteracoes($-1)) > abs(iteracoes($-1) - iteracoes($-2))) then
         convergente = %f;
         break;
      end
   end
   x0 = x1;
end

if(convergente) then
   disp("O método converge para a raiz: ")
   disp(x1) // 4.3944492
   disp("Iterações: ")
   disp(iteracoes) // 4.5 4.3944492
   disp("Número de Iterações: ")
   disp(length(iteracoes)) // 2
else
   disp("O método diverge")
end

exit()