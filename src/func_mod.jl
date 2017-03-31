## =========================== ## ## =========================== ##
## 	   Store's Spatial Distribution Agent Based Model 			 ##
##                    Simulations' functions                     ##
## =========================== ## ## =========================== ##


## =========================== ## ## =========================== ##
## 	                 Estimate Manhattan Distance  			     ##
## =========================== ## ## =========================== ##
"""
    manh_dist(s1::Array{Int64,1},s2::Array{Int64,1})
Estimates Manhattan Distance from s1 to s2
"""
function manh_dist(s1::Array{Int64,1},s2::Array{Int64,1})
    return abs(s1[1]-s2[1]) + abs(s1[2]-s2[2])
end

## =========================== ## ## =========================== ##
## 	                 Compute Travelling Cost      			     ##
## =========================== ## ## =========================== ##
"""
    cost_travel(d::Int)
Computes cost of traveling distance *b*
"""
function cost_travel(d::Int64)
    return d
end

## =========================== ## ## =========================== ##
## 	                 Compute All Travelling Cost      			     ##
## =========================== ## ## =========================== ##
"""
    cost_all_dists(dim::Array{Int64,1})
Computes traveling cost for all possible distances in the system.
Returns a dictionary with:
* key -> travelling distance *d*
* value -> travelling cost of distance *d*
"""
function cost_all_dists(dim::Array{Int64,1})
    dists = collect(0:sum(dim)) # Possible distances between points
    costs = Dict{Int, Int}()

    for d in dists
        costs[d] = cost_travel(d)
    end
    return costs
end

## =========================== ## ## =========================== ##
## 	                 Compute Store's Market        			     ##
## =========================== ## ## =========================== ##
function get_markt()

end

## =========================== ## ## =========================== ##
## 	                 Compute Store's Profit        			     ##
## =========================== ## ## =========================== ##
function util()


end

## =========================== ## ## =========================== ##

function prob_site()

end

## =========================== ## ## =========================== ##
