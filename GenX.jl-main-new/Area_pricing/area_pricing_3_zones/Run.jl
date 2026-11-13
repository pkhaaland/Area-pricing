import Pkg
ENV["CPLEX_STUDIO_BINARIES"] = "/cluster/home/pkhaalan/opt/ibm/ILOG/CPLEX_Studio2211/cplex/bin/x86-64_linux/"
Pkg.build("CPLEX")

cd("/cluster/home/pkhaalan/GenX.jl-main/src")
include("/cluster/home/pkhaalan/GenX.jl-main/src/GenX.jl")
Pkg.activate(".")


using .GenX
using CPLEX

run_genx_case!(dirname(@__FILE__), CPLEX.Optimizer)
