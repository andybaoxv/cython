import numpy as np

def matmul_py(A,B):
    out = np.zeros((A.shape[0],B.shape[1]))
    for i in range(A.shape[0]):
        for j in range(B.shape[1]):
            s = 0
            for k in range(A.shape[1]):
                s += A[i,k]*B[k,j]
            out[i,j] = s

    return out
