import matplotlib
import numpy as np
matplotlib.use("TkAgg")
import matplotlib.pyplot as plt
x = np.arange(start=0,stop=100,step=0.01)
f = float(input("Input Frequncy\n"))
theta = float(input("Input Phase"))
shift = int(input("Enter Shift\n"))
y = np.sin(2*np.pi*f*(x+shift) + theta)
plt.plot(x,y)
plt.show()