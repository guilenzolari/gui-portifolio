clc;
n = 100;

%%%%%construção das matrizes%%%%%%%%%%%%%%%
rand("seed", 260455);
A = rand(n,n);
I = eye(n);

%%%%decomposição LU%%%%%%%%%%%%%%%%%
[LA,UA,PA] = lu(A);

%%%%%inversão por LU %%%x%%%%%%%%%%%%
y = LA\I;
X=UA\y;
B=X*PA;

%%%%%%%%%%norma%%%%%%%%%%%%%%%%%%%%%
display("norma1 = norm(B-inv(A))/norm(B)")
norma1 = norm(B-inv(A))/norm(B)

%outra forma de verificar se B é uma aproximação da inversa de A%  
C = A*B;
display("norma2 = norm(C-I)/norm(C)")
norma2 = norm(C-I)/norm(C)