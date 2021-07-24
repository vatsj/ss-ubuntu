print("\n Julia - installing commonly-used packages \n")
using Pkg

# kernel for jupyterlab
Pkg.add("IJulia")

Pkg.add("JSON")

Pkg.add("LinearAlgebra")
Pkg.add("Plots")
