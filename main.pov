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

#declare height = 500;

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
#declare bottom_front =
camera {
    location <0,2,-30>
    look_at <0,11,10>
    angle 43
    translate <0,height,0>
}
#declare front =
camera {
    location <0,10,-40>
    look_at <0,5,10>
    angle 90
    translate <0,height,0>
}
#declare up_front =
camera {
    location <0,15,-40>
    look_at <0,0,5>
    angle 70
    translate <0,height,0>
}
#declare up_right =
camera {
    location <0,3.5,-6>
    look_at <0,3,30>
    angle 70
    translate <0,0,0>
    rotate <50,0,0>
    translate <0,10,-6>
    rotate <0,-60,0>
    translate <0,height,0>
}
#declare right_camera =
camera {
    location <0,0.5,-8>
    look_at <0,2,10>
    translate <0,2,-3>
    rotate <0,-90,0>
    translate <0,height,0>
}
#declare up_left =
camera {
    location <0,3,-5>
    look_at <0,3,30>
    translate <0,0,0>
    rotate <45,0,0>
    translate <0,2,-3>
    rotate <0,90,0>
    translate <0,height,0>
}
#declare up_windmill =
camera {
    location <0,30,0>
    look_at <0,3,0>
    angle 60
    translate <0,height,0>
}
#declare up_front =
camera {
    location <0,25,-5>
    look_at <0,3,10>
    angle 60
    translate <0,height,0>
}
#declare top =
camera {
    location <0,100,0>
    look_at <0,3,0>
    angle 60
    translate <0,height,0>
}
// door
#declare door =
camera {
    location <0,2.0,4.5>
    look_at <0,1.9,10>
    angle 110
    translate <0,height,0>
}
// geral
#declare geral =
camera {
    location <0,10,-50>
    look_at <0,0,10>
    angle 100
    translate <0,height,0>
}
// geral diagonal
#declare geral_diagonal =
camera {
    location <0,8,-50>
    look_at <0,0,0>
    angle 100
    rotate <0,-40,0>
    translate <0,height,0>
}

//==============================================================================
//      LIGHT
//============================================================================//
global_settings { ambient_light rgb<0.7, 0.7, 0.7> }

// cima do objeto
light_source {
    <1,100,-2>
    color rgbt<1,1,1,0.5>
    translate <0,height,0>
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
    translate <0,height,0>
}
// dentro
light_source {
    <0,4,10>
    color rgbt<1,1,1,0.3>
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
            color Gray
        }
    }
    // Z = blue
    texture {
        Raster (1.0, 0.01,Blue)
        scale 0.3
    }
    // X = red
    texture {
        Raster (1.0, 0.01,Red)
        scale 0.3
        rotate <0,90,0>
    }
}


//============================================================================//
//      SCENE
//============================================================================//

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// sun ---------------------------------------------------------------------
light_source{<-1500,2000,-2500> color rgbt<0.1,0.1,0.1,0.9>}

// sky --------------------------------------------------------------
plane{<0,1,0>,1 hollow
       texture{ pigment{ bozo turbulence 0.92
                         color_map { [0.00 rgb <0.20, 0.20, 1.0>*0.9]
                                     [0.50 rgb <0.20, 0.20, 1.0>*0.9]
                                     [0.70 rgb <1,1,1>]
                                     [0.85 rgb <0.25,0.25,0.25>]
                                     [1.0 rgb <0.5,0.5,0.5>]}
                        scale<1,1,1.5>*2.5  translate< 0,0,0>
                       }
                finish {ambient 1 diffuse 0} }
       scale 10000}

// fog on the ground -------------------------------------------------
fog {
    fog_type   2
    distance   20
    color      rgbt<0.1,0.1,0.1,0.1>
    fog_offset 0.1
    fog_alt    3
    turbulence 1
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

#declare windmill =
difference {
    union {
        // Base
        cone {
            // bottom
            <0,0,0>, 2.5
            // top
            <0,6,0>, 1.3
            texture {
                pigment {
                    color Red
                }
            }
        }
        // Meio
        cone {
            // bottom
            <0,5.5,0>, 1.3
            // top
            <0,8.3,0>, 1.3
            texture {
                pigment {
                    color Red
                }
            }
        }
        // Cima
        cone {
            // bottom
            <0,8.3,0>, 1.4
            // top
            <0,9.2,0>, 0
            texture {
                pigment {
                    color Brown
                }
            }
        }
    }
    cone {
        // bottom
        <0,-0.1,0>, 2.4
        // top
        <0,6,0>, 1.2
        texture {
            pigment {
                color Gray
            }
        }
    }
}

#declare arvore =
object {
    #if (leafproba>0)
    #declare Leaf=object{MakeLeaf(lsize,seg,ll,wl,fl,lpow,al,apow,
             ndents,nlobes,alobes,qlobes,ls,ws,as,dofile,ffname)
             #if (dotexture=false)  // no texture applied to tree segments, so the leaf texture must be used for the individual leaf
                    texture{txtLeaf}
             #end
    }

    #end
    MakeTree()

    #if (dotexture = true) // texture is already applied to tree so that we can safely apply the leaf texture to the leaves
            texture {txtLeaf}
    #else

            texture {txtTree} // apply tree texture  regardless of the tree structure
    #end
    scale 0.2
}

#declare arvores =
union {
    object {
        arvore
        translate <-19,0,0>
    }
    object {
        arvore
        translate <-20,0,20>
    }
    object {
        arvore
        translate <-6,0,35>
    }
    object {
        arvore
        translate <16,0,30>
    }
    object {
        arvore
        translate <22,0,15>
    }
    object {
        arvore
        translate <18,0,0>
    }
}

#declare cercas =
union {
    union {
        object {
            cerca
        }
        object {
            cerca
            translate <10,0,0>
        }
        object {
            cerca
            translate <20,0,0>
        }
        scale 0.3
        rotate <0,240,0>
        translate <-9,0,-30>
    }

    union {
        object {
            cerca
        }
        object {
            cerca
            translate <10,0,0>
        }
        object {
            cerca
            translate <20,0,0>
        }
        object {
            cerca
            translate <30,0,0>
        }
        scale 0.3
        rotate <0,-60,0>
        translate <11,0,-29>
    }
}

#declare scene =
union {
    union {
        difference {
            object{
                windmill
                scale 2
            }
            box {
                <0,0,0>
                <2,4,4>
                texture {
                    pigment {
                        color Gray
                    }
                }
                scale 0.7
                translate <-0.7,0,-5.7>
            }
            translate <0,0,10>
        }
        object {
            engine
            rotate <0,0,20>
            translate <0,8,3>
            scale 1.8
        }
        translate <0,0,5>
    }

    object {
        arvores
    }

    object {
        balcao
        translate <-3,0,20>
        scale 0.7
    }

    object {
        cercas
    }
}


union {
    object {
        island
        scale 3
        translate <0,0,2>
    }

    object {
        scene
        scale 0.8
    }
    translate <0,height,0>
}

camera {
    geral
}






//
