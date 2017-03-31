## =========================== ## ## =========================== ##
## 	   Store's Spatial Distribution Agent Based Model 			 ##
##                        Simulation Test                        ##
## =========================== ## ## =========================== ##

# Loading the libraries
using StoresModel, Distributions

# Parameters
dim = [11,11] #Lx, Ly
λ = 6
nb = 100

# Agents arrays
bs = [Buyer(dim,λ) for i in 1:nb]
t1 = Store([6,6])
