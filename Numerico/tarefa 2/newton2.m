%%%%%%%%%%%%%%%%%%%inputs%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%%%%%%%%%%%%%
x = -18;
f = @(x) exp(cos((x ^2)/22)-(x/7))+(x/7)-2;
df = @(x) exp((-x/7)+cos((x^2)/22))*(((-x*sin((x^2)/22))/11)-(1/7))+(1/7);

k = 0;
t = 10^-10;

%%%%%%%%%%%%%%%%%%itera?oes%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while abs(f(x)) > t
  x= x - f(x) / df(x);  % passo de Newton
  k=k+1;
end

%%%%%%%%%% resultados %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x
k
f(x)