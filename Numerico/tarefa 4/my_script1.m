#Construindo um sistema equivelnte ao dado, tal que x = -y, obtemos F.
F = @(y,z) [ 2*(y^2)- z; (y^2)/4 + (y^2)/9 + z^2 - 1];
a = 8;
x0 = [a+1 ; -a-1; a+1];
tol = 10^-14;

format long
y = x0(2);
z = x0(3);
k = 0;
x = -y;
iter_y=0;
iter_z=0;
count_y=0;
count_z=0;

while norm(F(y,z),inf) >= tol 
    y = x0(2);
    z = x0(3);

    Fy = @(y) (2*(y^2)- z); 
    [y,fvec, info, output, fjac] =fsolve(Fy, x0(2));
    iter_y=iter_y+output.iterations;
    count_y=count_y+output.funcCount;
    
    Fz = @(z) ((y^2)/4 + (y^2)/9 + z^2 - 1);
    [z,fvec, info, output, fjac] =fsolve(Fz, x0(3));
    iter_z=iter_z+output.iterations;
    count_z=count_z+output.funcCount;

    k = k + 1;
    x = -y;
    x0 = [x; y; z];
    #Acuracia = norm(F(y,z), inf)
endwhile
iter_y;
iter_z;
count_y;
count_z;
iteracao_total=iter_y+iter_z
contagem_total=count_y+count_z
#Resultados através do Método de Seidel p/ Sistemas Não- Lineares
norma=norm(F(y,z),inf)
Conjunto_Solucao_X_Y_Z = x0
N_Iteracoes_k = k