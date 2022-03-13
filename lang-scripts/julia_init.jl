print("\n Julia - installing commonly-used packages \n")
using Pkg

# kernel for jupyterlab
Pkg.add("IJulia")

# JSON parser
Pkg.add("JSON")

# numpy-ish
Pkg.add("Distributions")
Pkg.add("Random")
Pkg.add("StatsBase")


# linalg helpers (STN - ee263)
Pkg.add("LinearAlgebra")
Pkg.add("Plots")

# convex opt (STN - ee364a)
Pkg.add("Convex")
Pkg.add("SCS")
Pkg.add("ECOS")
