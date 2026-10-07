A = [10 -2 1; -3 8 -1; 1 -1 6];
b = [24; -30; 33];

A = (A, b);

n = size(A,1);
//x = [0; 0; 0];

for i=1:n
    x=sum(A(i, 2:n) / A(i,i));
    disp(x);
end