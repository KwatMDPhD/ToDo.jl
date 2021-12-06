TE = joinpath(tempdir(), "TensorFunction.test", "")

if isdir(TE)

    rm(TE; recursive = true)

end

mkdir(TE)

println("Made ", TE)

using Revise
using BenchmarkTools

using TensorFunction

n_ro = 5

n_co = 4

n_ze = convert(Int64, n_co / 2)

n_on = n_co - n_ze

bi_ = convert(BitVector, [zeros(n_ze); ones(n_on)])

ve = convert(Vector{Float64}, [10^(id - 1) for id = 1:n_co])

ma = convert(Matrix{Float64}, reshape(1:n_ro*n_co, (n_ro, n_co)))

TensorFunction.apply(bi_, ve, .*)

TensorFunction.apply(ve, ma, .*)

TensorFunction.apply(bi_, ma, .*)

TensorFunction.apply(ma, ma, (ro1, ro2) -> minimum([ro1; ro2]))

rm(TE; recursive = true)

println("Removed ", TE)
