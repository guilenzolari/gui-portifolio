#método de euler
clc;
clear;

V = 5;#m^2
C1(1)=0;
C2(1)=0;
C3(1)=0;

tf = 10;#min
dt= 0.2;
nf = tf/dt;

n = 1;
for n =(1:nf)
  dc1dt = (1/V)*(50-7*C1(n)+2*C3(n));
  C1(n+1) = C1(n) + dt*dc1dt;
  
  dc2dt = (1/V)*(7*C1(n) + 1 - 8*C2(n));
  C2(n+1) = C2(n) +dt*dc2dt;
  
  dc3dt = (1/V)*(8*C2(n)- 8*C3(n));
  C3(n+1) = C3(n) + dt*dc3dt;
endfor

t = 0:dt:tf;

subplot(2,1,1)
plot(t, C1,'r', 'linewidth', 5, t, C2,'b', 'linewidth', 5, t, C3,'g', 'linewidth', 5 );
L = legend('C1', 'C2','C3');
set(L, 'location', 'northeast');
xlabel('Tempo(min)','fontsize',25);
ylabel('Concentrações','fontsize',25);

#################rk4################
function dxdt = rk4(t,x)
  C1 = x(1);
  C2 = x(2);
  C3 = x(3);
  
  V = 5;#m^3
  
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

[t,x] = ode45(@rk4, t0, C0);
C1 = x(:,1);
C2 = x(:,2);
C3 = x(:,3);

subplot(2,1,2)
plot(t,C1,'r', 'linewidth',5,
t,C2,'b', 'linewidth',5,
t,C3,'g', 'linewidth',5)
L = legend('C1', 'C2','C3');
set(L,'location','northeast')
xlabel('Tempo(min)','fontsize',25);
ylabel('Concentrações','fontsize',25);