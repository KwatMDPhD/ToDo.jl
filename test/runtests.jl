TE = joinpath(tempdir(), "ToDo.test")

if isdir(TE)

    rm(TE, recursive = true)

end

mkdir(TE)

#using Revise
using ToDo
