F = @(x)[x(1)+x(2);(x(1)^2)+(x(2)^2)-x(3);((x(1)^2)/4)+((x(2)^2)/9)+(x(3)^2)-1];
a = 0;
x0 = [a+1;-a-1;a+1];
x = x0;
Er = 10^(-14);

format long 

k = 1
while norm(F(x),inf)>=Er
    f1 = @(x1)x1+x(2);
    x1 = fsolve(f1,x(1));
    f2 = @(x2)(x1^2)+(x2^2)-x(3);
    x2 = fsolve(f2,x(2));
    f3 = @(x3)((x1^2)/4)+((x2^2)/9)+(x3^2)-1;
    x3 = fsolve(f3,x(3));
    x0 = [x1;x2;x3]
    x = x0;
    norm(F(x),inf)
    k = k+1
endwhile


