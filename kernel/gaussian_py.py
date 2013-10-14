import numpy as np
import math

def gaussian_py(data,sigma):
    n_instances,n_features = data.shape

    mtr = np.zeros((n_instances,n_instances))
    for i in range(n_instances):
        for j in range(n_instances):
            tmp = sum((data[i,:]-data[j,:])**2)
            #mtr[i,j] = math.exp(-tmp/(2*sigma**2))
    
    return mtr
