import cython
from cy_callback cimport function
import numpy as np
cimport numpy as np

@cython.boundscheck(False)
@cython.wraparound(False)
def pyfun(f,np.ndarray[double,ndim=1,mode="c"] x not None,
            np.ndarray[double,ndim=1,mode="c"] y not None):
    cdef int n
    
    n = x.shape[0]
    function( cb, <void*> f, &x[0], &y[0], n )
    return None
    

cdef double cb(void* f, const double &x ):
    return (<object>f)(x)

