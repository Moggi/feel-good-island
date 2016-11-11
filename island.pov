#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
#include "catavento.inc"
#include "engine.inc"
#include "txttree.inc"
#include "maketree.pov"
#include "tree.inc"
#include "balcao.inc"
#include "cerca.inc"
#include "island.inc"

//============================================================================//
//      GENERAL
//============================================================================//

#declare height = 0;

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
    location <0,2,-30>
    look_at <0,11,10>
    angle 43
    translate <0,height,0>
}
//front
/*camera {
    location <0,10,-40>
    look_at <0,5,10>
    angle 90
    translate <0,height,0>
}*/
// up front
camera {
    location <0,15,-40>
    look_at <0,0,5>
    angle 70
    translate <0,height,0>
}
// up right
/*camera {
    location <0,3.5,-6>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
    rotate <0,-90,0>
    translate <0,height,0>
}*/
// right
/*camera {
    location <0,0.5,-8>
    look_at <0,2,10>
    translate <0,2,-3>
    rotate <0,-90,0>
    translate <0,height,0>
}*/
// up left
/*camera {
    location <0,3,-5>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
    rotate <0,90,0>
    translate <0,height,0>
}*/
// up
/*camera {
    location <0,30,5>
    look_at <0,3,5>
    angle 60
    translate <0,height,0>
}*/
// up front
/*camera {
    location <0,25,-5>
    look_at <0,3,10>
    angle 60
    translate <0,height,0>
}*/
// top
camera {
    location <0,35,0>
    look_at <0,3,0>
    angle 60
    translate <0,height,0>
}
// door
/*camera {
    location <0,2,4.5>
    look_at <0,1.9,10>
    angle 110
    translate <0,height,0>
}*/
camera {
    location <0,10,-50>
    look_at <0,0,10>
    angle 50
    translate <0,height,0>
}
// geral
camera {
    location <0,15,-30>
    look_at <0,5,10>
    angle 50
    translate <0,height,0>
}
// geral diagonal
camera {
    location <0,15,-30>
    look_at <0,10,0>
    angle 40
    rotate <0,-40,0>
    translate <0,height,0>
}

//==============================================================================
//      LIGHT
//============================================================================//
global_settings { ambient_light rgb<1, 1, 1> }

// cima do objeto
light_source {
    <1,80,0>
    color rgbt<1,1,1,0.1>
    translate <0,height,0>
}
// frente
/*light_source {
    <3,1,-50>
    color Gray
}*/
// traz
light_source {
    <1,40,10>
    color rgbt<1,1,1,0.1>
    translate <0,height,0>
}
light_source {
    <2,1,-10>
    color rgbt<1,1,1,0.7>
}
light_source {
    <-2,1,10>
    color rgbt<1,1,1,0.7>
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


difference {
    union {
        height_field {
            tga "mount2.tga"
            smooth
            pigment { Brown }
            rotate <0,270,180>
            scale <3.3,2,4.2>
            scale 3
            translate <-5,0,-5>
            scale 2
        }
        box {
            <-10,0,-10>
            <11,0.1,15.2>
            texture {
                pigment {
                    color Black
                }
            }
        }
        translate <0,0.2,0>
    }
    box {
        <-200,0,-200>
        <200,40,200>
        texture {
            pigment{ color MediumSeaGreen }
            normal { agate 1.00 // bump depth
                    turbulence 3
                    scale 0.03 }
        }
    }
    translate <-0.90,13,-2.5>
}






//
