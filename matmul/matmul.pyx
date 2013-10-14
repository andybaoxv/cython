import numpy as np
cimport numpy as np

ctypedef np.float64_t dtype_t

def matmul(np.ndarray[dtype_t,ndim=2] A, np.ndarray[dtype_t,ndim=2] B):
    cdef np.ndarray[dtype_t,ndim=2] out = np.zeros((A.shape[0],B.shape[1]))
    cdef int i,j
    cdef float s

    for i in range(A.shape[0]):
        for j in range(B.shape[1]):
            s = 0
            for k in range(A.shape[1]):
                s += A[i,k]*B[k,j]
            out[i,j] = s

    return out
