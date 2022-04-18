# SOL. NUMÉRICA DE EQ. DIF. ORDINÁRIAS- Met. Adams Moulton
# *********************************************************
import numpy as np
import matplotlib.pyplot as plt

#EDO - #função da derivada dy/dx = f
def f(x, y):
    return 1/(y**2)+x*np.log(y)

# Para iniciar: Runge-Kutta 4a. ordem

def rk4(x0,y0,xf,n):
    h = (xf-x0)/n #passo
    xi= [x0]
    yi = [y0]

    for i in range(4):
        K1 = h*f(x0, y0)
        K2 = h*f(x0+0.5*h, y0+0.5*K1)
        K3 = h*f(x0+0.5*h, y0+0.5*K2)
        K4 = f(x0+h, y0+K3)
        yk = y0 + (1/6)*(K1 + 2*K2 + 2*K3 + K4) #y+1
        
        x0 = h + x0 #x+1
        y0 = yk

        xi.append(x0)
        yi.append(y0)

        print(x0)
        print(y0)


#######inputs##################################
print('Condições iniciais:')
x0 = float(input('x0 = '))
y0 = float(input('y0 = '))

print('Ponto dfinal:')
xf = float(input('xf = '))

n = int(input('Número de etapas = '))

# RK4 method call
rk4(x0,y0,xf,n)

#x0 = 3 #x inicial
#xf =  3 #x final
#y0 = 0 #y inicial
#n = 100 #etapas
