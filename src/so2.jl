export SO2,
        matrix,
        generator,
        transformation

using StaticArrays
using LinearAlgebra

mutable struct SO2{T<:AbstractFloat}
    DoF::Int8
    tangent::T
    generator::SMatrix{2, 2, T}

    function SO2(tangent::AbstractFloat)
        generator = SMatrix{2, 2, typeof(tangent)}(0, -1, 1, 0)
        new{typeof(tangent)}(Int8(1), tangent, generator)
    end
end

function generator(group::SO2)
    return group.generator
end

function matrix(group::SO2)
    return group.tangent * SMatrix{2, 2, typeof(group.tangent)}(0, -1, 1, 0)
end

function transformation(group::SO2)
    # println(typeof(group.tangent))
    return exp.(group.tangent * group.generator)
end
