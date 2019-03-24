using Darknet
using Test


@testset "Create Darknet image" begin
    darknet_img = Darknet.array_to_image(rand(Float32,100,10))

    @test typeof(darknet_img) == Darknet.image
    @test darknet_img.w == 100
    @test darknet_img.h == 10
    @test darknet_img.c == 1
end