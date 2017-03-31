## =========================== ## ## =========================== ##
## 	   Store's Spatial Distribution Agent Based Model 			 ##
##	                     Type definitions                        ##
## =========================== ## ## =========================== ##

using Distributions

## =========================== ## ## =========================== ##

"""
    Store
Store type abstraction
# Constructor Arguments
* pos -> [x, y] spatial coordinates

# Fields
* pos  -> [x, y] spatial coordinates
* incm -> income or profit
* prc_sell -> store's selling price
"""
type Store
    pos ::Array{Int64,1} # store's spatial coordinates
    incm ::Float64 # income or profit.
    prc ::Float64 # store's selling price

    # Default constructor
    Store() = new(zeros(Int, 2), 0, 0)

    Store(pos::Array{Int64,1}) = new(pos, 0, 0)

end

## =========================== ## ## =========================== ##

"""
    Buyer(dim, λ)
Buyer type abstraction
# Constructor Arguments
* dim -> [Lx, Ly] world's discrete spatial dimensions
* the buyer's reserve price is a random number drwan from an exponential distribution with mean λ

# Fields
* pos  -> [x, y] buyer's current spatial coordinates
* prc_rsrv -> buyer's reserve price
"""
type Buyer
    pos ::Array{Int64,1} # buyer's current spatial coordinates
    prc_rsrv ::Float64 # reserve price

    Buyer() = new(zeros(Int, 2), 0)

    Buyer(dim::Array{Int64,1}, λ::Int64) = new([rand(1:dim[1]),rand(1:dim[2])], rand(Exponential(λ)))

end
