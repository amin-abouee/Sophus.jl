using Sophus
using Test
using StaticArrays

@testset "Sophus.jl" begin
    # Write your own tests here.
    so = SO2(Float16(3.2))
    @test typeof(so.tangent) == Float16
    @test so.DoF == Int16(1)
    @test generator(so) == SMatrix{2,2,Float16}(0, -1, 1, 0)
    @test matrix(so) == SMatrix{2,2,Float16}(0, -3.2, 3.2, 0)
    @test transformation(so) == exp.(SMatrix{2,2,Float16}(0, -3.2, 3.2, 0))
end
