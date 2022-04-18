clc;
n = 1000;
warning("off")

%%%%%construção das matrizes%%%%%%%%%%%%%%%
rand("seed", 220805);
A = rand(n,n);
H = hilb(n);

e = ones(n,1);
b = A*e;
c = H*e;

%%%%decomposição LU%%%%%%%%%%%%%%%%%%%%%%%%%
[LA,UA,PA] = lu(A);
[LH,UH,PH] = lu(H);

%%%%%solução dos sitemas Ax = b e Hx = c %%%x%%%%%%%%%%%%
%Ly=Pb e Ux=y
yA = LA\PA*b;
xA = UA\yA;

yH = LH\PH*c;
xH = UH\yH;

display("norma1 = norm(A*xA-b)/norm(xA)")
norma1 = norm(A*xA-b)/norm(xA)

display("norma2 = norm(H*xH-c)/norm(xH)")
norma2 = norm(H*xH-c)/norm(xH)

display("norma3 = norm(xA-e)/norm(xA)")
norma3 = norm(xA-e)/norm(xA)

display("norma4 = norm(xH-e)/norm(xH)")
norma4 = norm(xH-e)/norm(xH)

%%%%%%%%%%valor esperado%%%%%%%%%%%%%%%%%%%%%

xA=A\b;
xH=H\c;
display("comparação decomposição LU x função octave")

display("norma5 = norm((A*xA-b)/xA)")
norma5 = norm((A*xA-b)/xA)

display("norma6 = norm((H*xH-c)/xH)")
norma6 = norm((H*xH-c)/xH)