import matplotlib.pyplot as plt
import numpy as np

v_open = np.array([1.85, 2.8, 3.5, 4.3, 4.1, 4.2, 3.8, 3.75])
gain_open = np.array([3, 4, 5, 6, 7, 8, 9, 10])
v_close = np.array([0.41, 0.91, 1.38, 1.9, 2.34, 2.81, 3.26, 3.71])

rpm_open = np.array([2080, 3045, 3700, 4760, 5430, 5500, 5550, 5580])
gain_close = np.array([3, 4, 5, 6, 7, 8, 9, 10])
rpm_close = np.array([455, 990, 1495, 2050, 2518, 3020, 3510, 3995])

fig, ax = plt.subplots()
ax.minorticks_on()

ax.plot(gain_open, rpm_open, "b-o")
ax.plot(gain_close, rpm_close, "r-o")

fig.suptitle(" Open Loop and Closed Loop Gain for DC Servomotor")
ax.grid(which="major", linewidth="0.5", color="green")
ax.grid(which="minor", linewidth="0.5")

plt.grid(True, which="both")
plt.legend(["Open loop Gain", "Closed Loop Gain"])

plt.xlabel("Gain")
plt.ylabel("RPM")

plt.show()
