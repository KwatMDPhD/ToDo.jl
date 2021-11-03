# TensorFunction.jl

Apply function on tensors :magic_wand:

This package drives various bioinformatiocs analyses. Workflow of computing differential gene expressions between samples given a phenotype, a bread-and-butter in computational biology (and many other common workflows) depend on this core operation.

## Use

```jl
using TensorFunction
```

:warning: _We are currently in development._ Please set the `binary_vector` to be a `BitVector` and the `vector` or the `matrix` to be of `Float64`. After registering this package in the Julia Registry, we plan to use `Real` for all number interfaces :rocket:

### Split and Apply

Use a binary vector to separate a vector, and then apply a given function on the separated vectors, returning what the function returns:

```jl
apply(binary_vector, vector, function_of_2_vectors)
```

### Apply against Each Row

Apply a given function on a vector and each row of a matrix, returning a vector of what the function returns:

```jl
apply(vector, matrix, function_of_2_vectors)
```

### Split and Apply against Each Row

Do [Split and Apply](described above) on a binary vector and each row of a matrix, returning a vector of what the function returns:

```jl
apply(binary_vector, matrix, function_of_2_vectors)
```

### Apply on Row and Row

Apply a given function on each combination of rows of 2 matrices, returning a vector of waht of what the function returns:

```jl
apply(matrix1, matrix2, function_of_2_vectors)
```

## Howdy :wave: :cowboy_hat_face:

To report a bug, request a feature, or leave a comment (about anything related to this project), just [submit an issue](https://github.com/KwatMDPhD/TensorFunction.jl/issues/new/choose).

---

Made by https://github.com/KwatMDPhD/PkgRepository.jl
