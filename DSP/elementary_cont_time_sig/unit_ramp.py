import matplotlib
matplotlib.use("TkAgg")
import matplotlib.pyplot as plt
def ramp(t,shift = 0):
    '''Unit Ramp Function'''
    if (t+shift)<0:
        return 0
    else:
        return t
l = []
shift = int(input("Enter Shift\n"))
t = range(-100,100)
for i in t:
    l.append(ramp(i,shift))
plt.plot(t,l)
plt.show()