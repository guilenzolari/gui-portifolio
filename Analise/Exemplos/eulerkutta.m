#aplicação método de euler
clc;
clear all;

global U cp rho A V #para usarmos dentro de funções

U=108000; #J/hm^2
cp = 4184; #J/kg°C
rho = 1000; #kg/m^3
A = 40; #m^2
V = 10; #m^3

T(1) = 38.08;#°C
tf = 50; #h
dt = 0.1; #passo
nf = tf/dt; #numero de passos

n = 1;
for n = (1:nf) 
  dTdt = (U*A/(V*rho*cp))*(15-T(n));
  T(n+1)=T(n)+dt*dTdt;
endfor

t = 0:dt:tf; #t é um vetor q vai de 0 até tf com passo de dt

subplot(2,1,1) 
plot(t,T)
L = legend('T-euler');
set(L, 'location', 'northeast')
xlabel('Tempo(h)','fontsize',25);
ylabel('Temperatura(°C)','fontsize',25);


##############runge-kutta#################

function dxdt = rk4(t,x)
  T = x(1);
  global U A V rho cp
  dxdt = (U*A/(V*rho* cp))*(15-T);
endfunction

T0 = 38.08;
ti= 0;
tf = 50;
t0 = [0, 50];

[t,x]=ode45(@rk4,t0,T0);  #faz interpolaçao da RK de 4 e 5 ordem
T = x(:,1);  #pegamos todos os pontos da coluna 1

subplot(2,1,2)
plot(t, T);
L = legend('T-RK');
set(L, 'location', 'northeast')
xlabel('Tempo(h)','fontsize',25);
ylabel('Temperatura(°C)','fontsize',25);

################diferença############
