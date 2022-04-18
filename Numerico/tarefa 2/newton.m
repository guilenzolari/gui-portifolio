%%%%%%%%%%%%%%inputs&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = -20; %valor inicial de x
f = @(x) exp(cos(x^2/22) - x/7) + x/7 - 2; %fun��o x;
df = @(x) (exp(cos(x^2/22))-(x/7)*((-x*sin(x^2/22)/11)-1/7)+1)/5; %derivada de x;

t = 10^-10;
k = 0;

%%%%%%%%%%%%%%itera��es%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while abs(f(x)) > t
  x = x - f(x)/df(x);
  k = k+1;
endwhile

%%%%%%%%%%resultados%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x
k
f(x)
df(x)