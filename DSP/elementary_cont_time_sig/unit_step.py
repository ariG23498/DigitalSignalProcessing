import matplotlib
matplotlib.use("TkAgg")
import matplotlib.pyplot as plt
def step(t,shift = 0):
    '''Unit Step Function'''
    if (t+shift)<0:
        return 0
    else:
        return 1
l = []
shift = int(input("Enter Shift\n"))
t = range(-100,100)
for i in t:
    l.append(step(i,shift))
plt.plot(t,l)
plt.show()