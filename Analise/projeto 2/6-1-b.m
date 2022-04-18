#6.1-b##########################################################
#método de euler
clc;
clear;

%V = 1m^2 e dt = 0.2
V = 1;#m^2
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


%V = 1m^2 e dt = 0.1
V = 1;#m^2
C1(1)=0;
C2(1)=0;
C3(1)=0;

tf = 10;#min
dt= 0.1;
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

subplot(2,1,2)
plot(t, C1,'r', 'linewidth', 5, t, C2,'b', 'linewidth', 5, t, C3,'g', 'linewidth', 5 );
L = legend('C1', 'C2','C3');
set(L, 'location', 'northeast');