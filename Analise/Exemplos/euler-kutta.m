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

t=0:dt:tf; #t é um vetor q vai de 0 até tf com passo de dt

subplot(2,1,1)
plot(t,T)






