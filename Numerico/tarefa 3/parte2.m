clc;
n = 4;

%%%%%construção das matrizes%%%%%%%%%%%%%%%
rand("seed", 260455);
A = rand(n,n);

%%%%decomposição LU%%%%%%%%%%%%%%%%%
[LA,UA,PA] = lu(A)


%%%%%inversão por LU %%%x%%%%%%%%%%%%
I = eye(n)
y = L\I;

endwhile
%%%%%%%%%%norma%%%%%%%%%%%%%%%%%%%%%
norma = norm(B-inv(A))/norn(B);
