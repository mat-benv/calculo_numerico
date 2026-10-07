intervalo = [];
tabela = [];

function y = f(x)
   y = x^3 -4*x - 5/2
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
disp(intervalo) // (-2, -1), (-1, 0) e (2, 3) com raízes

erro = 10^-5
raizes = [];

for i = 1 : size(intervalo,1)
   k = 0;
   x0 = intervalo(i,1);
   x1 = intervalo(i,2);
   x2 = (x0*(f(x1)) - x1*(f(x0)))/(f(x1) - f(x0));
   while(abs(x2-x1) > erro) do
      x0 = x1;
      x1 = x2;
      x2 = (x0*(f(x1)) - x1*(f(x0)))/(f(x1) - f(x0));
      k = k + 1;
   end
   raizes = [raizes; x2 k]
end

disp("Raízes encontradas e iterações necessárias:")
disp(raizes) // Raízes: -0.7172449 (8 iterações), -0.7172449 (5 iterações) e 2.2597195 (5 iterações)

exit()