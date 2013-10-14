import numpy as np
cimport numpy as np
import math
#cdef extern from "math.h":
#    double exp(double)

DTYPE = np.float64
ctypedef np.float64_t DTYPE_t

def gaussian(np.ndarray[DTYPE_t,ndim=2] data,sigma):
    cdef int n_instances,n_features
    cdef Py_ssize_t i,j
    cdef DTYPE_t tmp
    cdef np.ndarray[DTYPE_t,ndim=2] mtr

    n_instances = data.shape[0]
    n_features = data.shape[1]
    mtr = np.zeros((n_instances,n_instances),dtype=DTYPE)
    for i in range(n_instances):
        for j in range(n_instances):
            tmp = sum((data[i,:]-data[j,:])**2)
            #mtr[i,j] = math.exp(-tmp/(2*sigma**2))
    
    return mtr
