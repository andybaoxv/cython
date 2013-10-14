cdef double f(double x) except? -2:
    return x**2-x

# Python function withtout static declaration
cdef double integrate_f(double a,double b,int N):
    cdef int i
    cdef double s, dx
    s = 0
    dx = (b-a)/N
    for i in range(int(N)):
        s += f(a+i*dx)
    return s*dx

def tp(a,b,N):
    return integrate_f(a,b,N)

if __name__ == "__main__":
    from time import time
    t0 = time()
    result = tp(0,10,1e6)
    t1 = time()
    print ["Result:",result,"Running Time",t1-t0]
