#in this file is the definition of the types used.
type store
    pos::Array{Int64,1}
    inc::Array{Float64,2}
    ps::Float64
    function store(dim::Array{Int64,1},ps::Float64)
        this = new()
        this.pos = [rand(1:dim[1]),rand(1:dim[2])]
        this.inc = zeros(dim[1],dim[2])
        this.ps = ps
        return this
    end
end

type buyer
    pos::Array{Int64,1}
    pr::Float64
    function buyer(dim::Array{Int64,1},pr::Float64)
        this = new()
        this.pos = [rand(1:dim[1]),rand(1:dim[2])]
        this.pr = pr
        return this
    end
end
