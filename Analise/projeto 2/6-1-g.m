#6.1-g#########################################################
#rk4
clc;
clear;
function dxdt = rk4(t,x)
  C1 = x(1);
  C2 = x(2);
  C3 = x(3);
  
  V = 1;#m^3
  
  dxdt(1) = (1/V)*(50-7*C1 + 2*C3);
  dxdt(2) = (1/V)* (7*C1 + 1 - 8*C2);
  dxdt(3) = (1/V)*(8*C2 -8*C3);
endfunction

ti = 0;
tf = 10;
t0 = [ti tf];

C10 = 0;
C20 = 0;
C30 = 0;

C0 = [C10 C20 C30];

optim = odeset('MaxStep',0.2);
[t,x] = ode45(@rk4, t0, C0,optim);
C1 = x(:,1);
C2 = x(:,2);
C3 = x(:,3);

plot(t,C1,'r', 'linewidth',5,
t,C2,'b', 'linewidth',5,
t,C3,'g', 'linewidth',5)
L = legend('C1', 'C2','C3');
set(L,'location','northeast')
