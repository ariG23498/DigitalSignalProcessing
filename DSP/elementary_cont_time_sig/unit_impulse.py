import matplotlib
matplotlib.use("TkAgg")
import matplotlib.pyplot as plt
def impulse(t,shift = 0):
    '''Unit Impulse Function'''
    if (t+shift) == 0:
        # used 100 to mimic infinity
        return 100
    else:
        return 0
l = []
shift = int(input("Enter Shift\n"))
t = range(-100,100)
for i in t:
    l.append(impulse(i,shift))
plt.plot(t,l)
plt.show()