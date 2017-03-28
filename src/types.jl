#in this file is the definition of the types used.
using Distributions

type store
    pos::Array{Int64,1} #position of the store
    inc::Float64 #this is the income or profit.
    ps::Float64 #price
    function store(pos::Array{Int64,1}) #this function is to asign values to the variable
        this = new()
        this.pos = pos
        this.inc = 0
        this.ps = 0
        return this
    end
end

type buyer
    pos::Array{Int64,1} #position of the buyer
    pr::Float64 #reservoir price
    function buyer(dim::Array{Int64,1},λ::Int64)
        this = new()
        this.pos = [rand(1:dim[1]),rand(1:dim[2])] #choosen from uniform random distribution
        this.pr = rand(Exponential(λ)) #the price is a random number generated with an exponentian distribution with scale λ
        return this
    end
end
