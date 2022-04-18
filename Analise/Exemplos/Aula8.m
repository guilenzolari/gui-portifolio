clc;
clear all;

%%%%%%%%sistema de equaões%%%%%%%%%
eq1 = [-250,0,40];
eq2 = [240,-250,0];
eq3 = [0, 240,-240];
A = [eq1;eq2;eq3];
B = [-6500;-2500;-2500];

%%%resolução do sistema%%%%%%%%%
% AX=B --> X=inv(A)*B

x = inv(A)*B;
x = A\B;

%%%%%%acessando as temperaturas%%%%%
T1 = x(1)
T2 = x(2)
T3 = x(3)








