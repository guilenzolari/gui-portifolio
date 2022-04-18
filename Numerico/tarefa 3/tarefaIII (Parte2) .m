clc;
n = 100;

%%%%%constru��o das matrizes%%%%%%%%%%%%%%%
rand("seed", 260455);
A = rand(n,n);
I = eye(n);

%%%%decomposi��o LU%%%%%%%%%%%%%%%%%
[LA,UA,PA] = lu(A);

%%%%%invers�o por LU %%%x%%%%%%%%%%%%
y = LA\I;
X=UA\y;
B=X*PA;

%%%%%%%%%%norma%%%%%%%%%%%%%%%%%%%%%
display("norma1 = norm(B-inv(A))/norm(B)")
norma1 = norm(B-inv(A))/norm(B)

%outra forma de verificar se B � uma aproxima��o da inversa de A%  
C = A*B;
display("norma2 = norm(C-I)/norm(C)")
norma2 = norm(C-I)/norm(C)