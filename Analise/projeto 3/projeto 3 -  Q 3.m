%%%%%%%%%%%%%%%%exerc?cio de fixa??o 1 %%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
global R h rho k Tf dr cp

%constantes
R = 0.3; #m
h = 100; #W/m^2
rho = 3700; #kh/m^3
k = 180; #W/mK
T0 = 100; #?C
Tf = 50; #?C
dr = 0.1; #passo
cp = 910; #J/kgK

function dxdt = rk4(t, x)
global R h rho k Tf dr cp

  T0 = x(1);
  T01 = x(2);
  T02 = x(3);
  T03 = x(4);
  T04 = T02 - (2*dr*h/k)*(T03 - Tf);

  
  dxdt(1) = (k/(rho*cp))*(2*T01-2*T0);
  dxdt(2) = (k/(rho*cp))*((T0-2*T01+T02)/dr^2)+(1/R)*((T02-T0)/2*dr);
  dxdt(3) = (k/(rho*cp))*((T01-2*T02+T03)/dr^2)+(1/R)*((T03-T01)/2*dr);
  dxdt(4) = (k/(rho*cp))*((T02-2*T03+T04)/dr^2)+(1/R)*((T04-T02)/2*dr);
  
endfunction  

t0 = [0 10];
Tini = [100 100 100 100];
[t,x] = [ ode45(@rk4, t0, Tini)

T0 =x(:,1);
T01 =x(:,2);
T02 =x(:,3);
T03 =x(:,4);

plot(t,T0,t,T01,T02,t,T03);







