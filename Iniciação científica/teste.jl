hip_triang_ret(x,y);
    z =(x^2+y^2)^0.5;
    println(z)
end

hip_triang_ret(3,4)

f(x,y,z) = x+y+z
f(1,2,3)

f(x,y) = x*y
f(10,3)

i = 2
if i == 2
println("i is 2")
elseif i == 3
println("i is 3")
else
println("i is not 2")
end

%%dentro
%% função onde colocamos 1 pontos da aresta superir de
um quadrado de aresta a no plano Cartesiano
%% depois um par coordenado
%% a função indica os últimos se encontram na área formada pelos primeiros
function dentro(x0,y0,a,c,y)
    x1, y1 = c+a, y
    x2, y2 = c, y+a
    x3, y3 = c+a, y+a
    if c>=x0 && c<=x1 && c<=y0 && c>=y2
        println("dentro")
    else
        println("fora")
    end
end
dentro(1,2,7,3,4)


imprimir de números de 0 até y com salto de x
function pulo(x,y)
    a = 0
    while a < y
        a =a+x
        println(a)
    end
end





z = [[3,3],[3,3]]
println(z)






x = [ 2, 3];
y = [ 3, 4];
m  = zeros(length(x));
for i in 1:length(x)
    m[i] = x[i]*y[i];
end
m
a = @. x * y







function f(r :: Int64)
    println(r)
end

function f(r :: Float64)
    println(r+1)
end





m  = zeros(length(x));
for i in 1:length(x)
    m[i] = x[i]*y[i];
end
sum(m)

using plots
    x = 1:10
    y = rand(10)
    plot(x,y)
