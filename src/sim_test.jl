##################Simulation####################################################
#loading the libraries
using StoresModel, Distributions
#parameters
dim = [11,11] #Lx, Ly
λ = 6
nb = 100
bs = [buyer(dim,λ) for _ in 1:nb]
t1 = store([6,6])
