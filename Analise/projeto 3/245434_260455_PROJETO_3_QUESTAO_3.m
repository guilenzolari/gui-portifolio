%%%%%%%%%%%%%%%%exercício de fixação 1 %%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
global h rho k cp Tf dr a R b

%constantes
R = 0.3; %m
h = 100; %W/m^2
rho = 2700; %kh/m^3
k = 180; %W/mK
T0 = 100; %°C
Tf = 50; %°C
z = 0.1; %passo
dr = z.*1;
cp = 910; %J/kgK
a = dr^2;
b = 2*dr;

function U = rk4(t, x)
global h rho k cp Tf dr a R b

  T0 = x(1);
  T01 = x(2);
  T02 = x(3);
  T03 = x(4);
  T04 = T02 - (2*dr*h/k)*(T03 - Tf);
  
  U(1) = (k/(rho*cp)) * (2*T01-2*T0)/a;
  U(2) = (k/(rho*cp))* ((2/dr)*((T02-T0)/(2*dr)) + (T0-2*T01+T02)/a);
  U(3) = (k/(rho*cp))* ((2/dr)*((T03-T01)/(2*dr)) + (T01-2*T02+T03)/a);
  U(4) = (k/(rho*cp))* ((2/dr)*((T04-T02)/(2*dr)) + (T02-2*T03+T04)/a);
endfunction  

t0 = [0 10000];
Tini = [100 100 100 100];

[t,x] = ode45(@rk4, t0, Tini);

T0 = x(:,1);
T01 = x(:,2);
T02 = x(:,3);
T03 = x(:,4);

plot(t,T0,'r', 'linewidth',5,t,T01,'b', 'linewidth',5, t,T02,'g', 'linewidth',5,t,T03,'p', 'linewidth',5);
L = legend('T0','T01','T02','T03');
set(L, 'location','northeast');
xlabel('Tempo(s)','fontsize',25);
ylabel('Temperaturas','fontsize',25);