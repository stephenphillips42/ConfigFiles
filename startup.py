import numpy as np 
import os
import sys
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import rlcompleter
import readline

def axes3d():
  fig = plt.figure()
  return fig, fig.add_subplot(111, projection='3d')

readline.parse_and_bind('tab: complete')
