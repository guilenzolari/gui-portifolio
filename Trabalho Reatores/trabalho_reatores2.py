
###########imports################## ok 
import numpy as np
import matplotlib.pyplot as plt
from math import log10
from scipy.integrate import odeint

#### input dos valores ############ ok
k1=2
k2=10^6
k3=10
k4=2000
k5=1

A0=1
B0=1
H =0.8
f=0.7
b=0.1

X0 = k3*H*A0/(2*k4)
Y0=k3*A0/k2
Z0=(k3*H*A0)**2/(k4*k5*B0)
t0=1/(k5*B0)
eps=k5*B0/(k3*H*A0)
delta=2*k4*k5*B0/(k2*k3*H**2*A0)
q=2*k1*k4/(k2*k3)
alpha=2*A0/Z0

####condições iniciais
a0=0.035
x0=0.0015
z0=0.015

#### resolvendo as ODEs ###################
def odes (y, tau):

  x = y[0]
  z = y[1]
  a = y[2]

  dxdtau = (a*x-x**2-f*b*z*(x-q*a)/(x+q*a))*(1/eps)
  dzdtau = a*x - b*z
  dadtau = (x**2/2 - a*x - f*b*q*a*z/(x+q*a))*(1/alpha)

  return [dxdtau, dzdtau, dadtau]

####condições iniciais ######
y0 = [x0, z0, a0]

###definindo os vetores dos resultados #####
tau = np.linspace(0,500,500000)
y = odeint(odes,y0,tau)

x = y[:,0]

x = np.array(x)
X = x*X0
logX = np.log10(X)

########## plots #################3
plt.plot(tau, logX)
plt.xlabel('t(s)')
plt.ylabel('log[HBrO\u2082]')