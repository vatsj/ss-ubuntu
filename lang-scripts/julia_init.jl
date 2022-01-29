print("\n Julia - installing commonly-used packages \n")
using Pkg

# kernel for jupyterlab
Pkg.add("IJulia")

# JSON parser
Pkg.add("JSON")

# linalg helpers (STN - ee263)
Pkg.add("LinearAlgebra")
Pkg.add("Plots")

## convex opt (STN - ee364a)
Pkg.add("Convex")
Pkg.add("SCS")
