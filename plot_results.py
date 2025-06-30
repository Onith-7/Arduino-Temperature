import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r'c:\Users\OMSA2\OneDrive\Documents\School\Year 10\Enteprise Computing\Enteprise Computing Assesment 2\Level 1\Trial1\data.csv')

plt.plot(df['Time(ms)'], df['Temperature(C)'], marker='o')
plt.xlabel('Time (ms)')
plt.ylabel('Temperature (C)')
plt.title('Temperature Data from Results')
plt.grid(True)
plt.show()
