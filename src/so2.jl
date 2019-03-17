export SO2,
        matrix,
        generator

using StaticArrays
using LinearAlgebra

mutable struct SO2{T<:AbstractFloat}
    DoF::Int8
    tangent::AbstractFloat

    function SO2(tangent::AbstractFloat)
        # DoF = Int(8)
        new{typeof(tangent)}(Int8(1), tangent)
    end
end

function generator()
    return SMatrix{2, 2, AbstractFloat}(0, -1, 1, 0)
end

function matrix(group::SO2)
    return group.tangent * SMatrix{2, 2, AbstractFloat}(0, -1, 1, 0)
end
