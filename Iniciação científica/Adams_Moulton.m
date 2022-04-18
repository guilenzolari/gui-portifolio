clc% SOL. NUM�RICA DE EQ. DIF. ORDIN�RIAS- Met. Adams Moulton% **********************************************************n=6;x(1)=1.0;x(n)=2;y(1)=0.8;tol=0.0005;err=100;h=(x(n)-x(1))/(n-1);% fun��o auxiliarfunction F=funcEDO(x,y) F=1/(y^2)+x*log(y);% Para iniciar: Runge-Kutta 4a. ordem % ***********************************for i=1:3 X=x(i); Y=y(i); F=funcEDO(X,Y); K1=h*F; X=x(i)+h/2; Y=y(i)+K1/2; F=funcEDO(X,Y); K2=h*F; X=x(i)+h/2; Y=y(i)+K2/2; F=funcEDO(X,Y); K3=h*F; X=x(i)+h; Y=y(i)+K3; F=funcEDO(X,Y); K4=h*F; Y=y(i)+(1/6)*(K1+2*K2+2*K3+K4); X=x(i)+h; F=funcEDO(X,Y); f(i+1)=F; y(i+1)=Y; x(i+1)=X; end        % M�todo de Adams Moulton % ****************************   for i=4:n-1   Y=y(i)+(h/24)*(55*f(i) - 59*f(i-1) + 37*f(i-2) - 9*f(i-3));   X=x(i)+h;   F=funcEDO(X,Y);   f(i+1)=F;   yo=Y;   while err >= tol      F=funcEDO(X,Y);      f(i+1)=F;      Y=y(i)+(h/24)*(9*f(i+1) + 19*f(i) - 5*f(i-1) + f(i-2));      err=abs((Y-yo)/Y);      yo=Y;   end     F=funcEDO(X,Y); f(i+1)=F; y(i+1)=Y; x(i+1)=X;   err=100;   endS=[x'  y']plot (x,y)