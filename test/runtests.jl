using .JuliaConSamplePackage
using Test

@testset "JuliaConSamplePackage.jl" begin
    # Write your tests here.
    @test JuliaConSamplePackage.newton(sin, cos, 1.0) ≈ 0.0
    @test JuliaConSamplePackage.newton(cos, x-> -sin(x), 1.0) ≈ pi/2

    @testset "autodiff" begin
        @test abs(JuliaConSamplePackage.newton(sin,0.5) - 0.0) <= 100*eps(1.0)
        @test JuliaConSamplePackage.newton(cos, 1.0) ≈ pi/2
    end
end
