#!/usr/bin/env python

import numpy as np
from callback import pyfun

x = np.arange(11,dtype=np.double)
y = np.zeros(11)

def f(x):
    return x*x

pyfun(f,x,y)

print(y)
    




