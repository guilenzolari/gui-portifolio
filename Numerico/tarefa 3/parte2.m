clc;
n = 4;

%%%%%constru��o das matrizes%%%%%%%%%%%%%%%
rand("seed", 260455);
A = rand(n,n);

%%%%decomposi��o LU%%%%%%%%%%%%%%%%%
[LA,UA,PA] = lu(A)


%%%%%invers�o por LU %%%x%%%%%%%%%%%%
I = eye(n)
y = L\I;

endwhile
%%%%%%%%%%norma%%%%%%%%%%%%%%%%%%%%%
norma = norm(B-inv(A))/norn(B);
