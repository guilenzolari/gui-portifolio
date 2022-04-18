%%%%%%%%% inputs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 1 ; %extremidade do intervalo
b = 6; %extremidade do intervalo
f = @(x) log(x +1.2)^(-1) - 0.025*(x-1)^(2.3)

%%%%%%%%%%% variaveis %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k =0; %contador de iteracoes
t= 10^-10; %tolerancia
c = f(a)*f(b); %verificacao se tem raiz no intervalo

x = 0;

%%%%%%%%%%%% iteracoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	if c > 0
		a = 'nao esta no intervalo';
		disp(a)
		end

	if c <= 0

		while abs(f(x)) > t
      x = (a*f(b)-b*(f(a)))/(f(b)-f(a));
			k = k + 1;
      aux1 = f(a);
      aux2 = f(b);
      aux3 = f(x);
			
			if f(a)*f(x)>0
				b = x;
			
			else
				a = x;
			end
		end
	end

%%%%%%%%%% resultados %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	x
	k