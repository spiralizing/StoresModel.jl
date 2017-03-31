## =========================== ## ## =========================== ##
## 	   Store's Spatial Distribution Agent Based Model 			 ##
##	                     Type definitions                        ##
## =========================== ## ## =========================== ##

module StoresModel

export Store, Buyer, manh_dist

## TYPES DEFINITIONS
include("types.jl")

## SIMULATION FUNCTIONS
include("func_mod.jl")

end
