#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
#include "catavento.inc"
#include "engine.inc"

//============================================================================//
//      GENERAL
//============================================================================//
#macro Raster(RScale, RLine, Color)
pigment{
    gradient x
    scale RScale
    color_map {
        [0.000   color rgbt<0,0,0,0>]
        [0+RLine color Color]
        [0+RLine color rgbt<1,1,1,1>]
        [1-RLine color rgbt<1,1,1,1>]
        [1-RLine color Color]
        [1.000   color rgbt<0,0,0,0>]
        }
    }
#end // of macro

background {
    color SlateBlue
}

//============================================================================//
//      CAMERA
//============================================================================//
// bottom front
camera {
    location <0,5,-30>
    look_at <0,6,10>
    angle 35
}
// up front
/*camera {
    location <0,3,-5>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
}*/
// up right
/*camera {
    location <0,3.5,-6>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
    rotate <0,-90,0>
}*/
// right
/*camera {
    location <0,0.5,-8>
    look_at <0,2,10>
    translate <0,5,-3>
    rotate <0,-90,0>
}*/
// up left
/*camera {
    location <0,3,-5>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,7,-4>
    rotate <0,90,0>
}*/
// up back
/*camera {
    location <0,5,-7>
    look_at <0,3,20>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
    rotate <0,180,0>
}*/
// top
/*camera {
    location <0,15,1>
    look_at <0,3,0>
}*/



//==============================================================================
//      LIGHT
//============================================================================//
global_settings { ambient_light rgb<1, 1, 1> }

// cima do objeto
light_source {
    <1,10,-2>
    color rgbt<1,1,1,0.1>
}
// frente
/*light_source {
    <3,1,-50>
    color Gray
}*/
// traz
light_source {
    <1,40,50>
    color rgbt<1,1,1,0.1>
}


//============================================================================//
//      GRID
//============================================================================//
plane {
    <0,0.1,0>, 0
    texture{
        pigment {
            color White
        }
    }
    // Z = blue
    texture {
        Raster (1.0, 0.045,Blue)
        scale 0.5
    }
    // X = red
    texture {
        Raster (1.0, 0.045,Red)
        scale 0.5
        rotate <0,90,0>
    }
}


//============================================================================//
//      SCENE
//============================================================================//

object {
    engine
    translate <0,5,0>
}

//
