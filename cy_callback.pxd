import cython

cdef extern from "callback.hpp":
    ctypedef double (*Callback)( void *apply,
                                 const double &x )

    void function( Callback callback, 
                   void *apply, 
                   const double *x,
                   double *y,
                   int n )
