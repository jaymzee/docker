import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 6.28, 100)
y = np.sin(x)

plt.plot(x, y)
plt.grid()

plt.show()
