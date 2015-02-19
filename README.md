# cython-callback-numpy-arrays
A variation on cython-callback-test hopefully without any data copying

In this example, we do not use std::vector since this seems to require data copying. This is 
because we cannot create an std::vector from a "raw array" without data copying. We can, however,
directly access the raw pointer of a NumPy array which means the array can be modified at the C++
level without copying. 
