using BidirectionalMaps
using Test

@testset "main" begin
    U = ["A", "D", "B"]
    V = ["F", "G", "B"]

    b = ImmutableBimap{String,String}(U, V)
    @test b.left["A"] == "F"
    @test_throws MethodError b.left["A"] = "Z"
    @test b.left["D"] == "G"
    @test b.right["G"] == "D"
end
