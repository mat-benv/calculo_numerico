intervalo = [];
tabela = [];

function y = f(x)
   y = 3*sin(x) - x.^2
endfunction

for i = -5 : 5
   tabela = [tabela; i f(i)]
   if(f(i)*f(i+1) < 0)
      intervalo = [intervalo; i (i+1)]
   end
end

disp("Tabela de valores:")
disp(tabela)

disp("Intervalos encontrados:")
disp(intervalo)

// encontrado intervalo entre 1 e 2 com raiz

raizes = [];

erro = 10.^-4;

function dy = df(x) // não consegui fazer numderivative
   dy = 3*cos(x) - 2*x
endfunction

for i = 1 : size(intervalo,1)
   a = intervalo(i,1);
   b = intervalo(i,2);
   c = (a + b)/2;
   while(abs(f(c)) > erro)
      c = c - f(c)/df(c);
   end
   raizes = [raizes; c f(c)]
end

disp("Raízes encontradas:")
disp(raizes)

//Raiz: 1.722126

exit()