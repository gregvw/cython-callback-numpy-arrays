#include "callback.hpp"
#include<iostream>

void function( Callback callback, void* apply, 
                         double *x, double *y, int n ) {

    for(int i=0;i<n;++i) {
        y[i] = callback(apply,x[i]);
    }
}

