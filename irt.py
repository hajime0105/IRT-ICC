import numpy as np
import pandas as pd

def logistic(a, b, theta) :
    p = 1.0 / (1.0 + (-1.7 * a * (theta - b)))
    return p
