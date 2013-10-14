Build the code
Method 1: In iPython: run setup.py build_ext --inplace
Method 2: In sage notebook, add %cython in the beginning of the cell

Faster code via static typing:
All C types are available for type declarations: int, float, complex, struct,
union, pointer types

In a loop, it's better to declare all the variables as static type.
For np.ndarray, it's better to specify its dimension and the type of elements.


