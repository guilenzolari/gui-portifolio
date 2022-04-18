# RK-4 method python program

import numpy as np
import matplotlib.pyplot as plt

# function to be solved
def f(x,y):
    return x**3+x**2-3

# or
# f = lambda x: x+y

# RK-4 method
def rk4(x0,y0,xn,n):
    
    xi= [x0]
    yi = [y0]

    # Calculating step size
    h = (xn-x0)/n
    
    print('\n--------SOLUTION--------')
    print('-------------------------')    
    print('x0\ty0\tyn')
    print('-------------------------')
    for i in range(n):
        k1 = h * (f(x0, y0))
        k2 = h * (f((x0+h/2), (y0+k1/2)))
        k3 = h * (f((x0+h/2), (y0+k2/2)))
        k4 = h * (f((x0+h), (y0+k3)))
        k = (k1+2*k2+2*k3+k4)/6
        yn = y0 + k

        y0 = yn
        x0 = x0+h

        xi.append(x0)
        yi.append(y0)

    #plot#############################
    plt.plot(xi, yi)
    plt.show()

# Inputs
print('Enter initial conditions:')
x0 = float(input('x0 = '))
y0 = float(input('y0 = '))

print('Enter calculation point: ')
xn = float(input('xn = '))

print('Enter number of steps:')
step = int(input('Number of steps = '))

# RK4 method call
rk4(x0,y0,xn,step)