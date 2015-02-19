typedef double (*Callback)( void *apply, double &x );
void function( Callback callback, 
               void *apply,
               double *x,
               double *y,
               int n );


