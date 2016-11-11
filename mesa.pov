#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

//============================================================================//
//      GENERAL
//============================================================================//

#macro Raster(RScale, RLine)
pigment{
    gradient x
    scale RScale
    color_map {
        [0.000   color rgbt<0,0,0,0>]
        [0+RLine color rgbt<0,0,0,0>]
        [0+RLine color rgbt<1,1,1,1>]
        [1-RLine color rgbt<1,1,1,1>]
        [1-RLine color rgbt<0,0,0,0>]
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
// front
camera {
    location <3,3,-5>
    look_at <3,2,0>
}
// detalhe frente
camera {
    location <3,2.3,-1.5>
    look_at <3,1,0>
}
// canto direito
/*camera {
    location <0,2.4,-5>
    look_at <0,0,0>
}*/
// canto direito
/*camera {
    location <7,1.7,-0.15>
    look_at <5,1,0>
}*/
// lateral direito
/*camera {
    location <8,1.4,-0.25>
    look_at <3,0.5,0.4>
}*/
// traz direito
/*camera {
    location <8,1.7,1.2>
    look_at <5,1,0.5>
}*/


//==============================================================================
//      LIGHT
//============================================================================//
//global_settings { ambient_light rgb<2, 2, 2> }
// cima do objeto
light_source {
    <3,10,-2>
    color White
}
/*// frente
light_source {
    <3,1,-50>
    color Gray
}
// traz*/
light_source {
    <3,1,50>
    color Gray
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
    texture {
        Raster (1.0, 0.045)
        scale 0.5
    }
    texture {
        Raster (1.0, 0.045)
        scale 0.5
        rotate <0,90,0>
    }
}


//============================================================================//
//      SCENE
//============================================================================//

#declare balcao =
union {
    // 1 parte baixo
    union {
        //parte principal
        box {
            <0,0,0>, <2,1.5,1>
            texture {
                pigment {
                    //color LightWood
                    //color Tan
                    color NewTan
                }
            }
        }
        //porta esquerda
        box {
            <0.05,0.05,-0.05>,<1,1.4,0>
            texture {
                pigment {
                    //color LightWood
                    color Flesh
                    //color NewTan
                }
            }
        }
        //porta direita
        box {
            <1.05,0.05,-0.05>,<2,1.4,0>
            texture {
                pigment {
                    //color LightWood
                    color Flesh
                    //color NewTan
                }
            }
        }
        //
        sphere {
            <0.9,1.3,-0.06>, 0.04
            texture {
                pigment {
                    color Gray
                }
            }
        }
        sphere {
            <1.15,1.3,-0.06>, 0.04
            texture {
                pigment {
                    color Gray
                }
            }
        }
    }
    // 2 parte baixo
    union {
        //parte principal
        box {
            <2,0,0>, <4,1.5,1>
            texture {
                pigment {
                    color NewTan
                }
            }
        }
        //relevo
        union {
            //#for(Identifier, Start, End [, Step])
            #for (I, 0, 1.9, 0.116)
                box {
                    <2.05,0.05,-0.05>,<2.15,1.4,0>
                    translate< I, 0, 0 >
                }
             #end // --------------- end of #for loop
            texture {
                pigment {
                    color rgb<0.807,0.447,0.459>
                }
            }
        }
        //
    }
    // 3 parte baixo
    union {
        //parte principal
        box {
            <0,0,0>, <2.1,1.5,1>

            texture {
                pigment {
                    //color LightWood
                    //color Tan
                    color NewTan
                }
            }
        }
        //porta esquerda
        box {
            <0.05,0.05,-0.05>,<1,1.4,0>
            texture {
                pigment {
                    //color LightWood
                    color Flesh
                    //color NewTan
                }
            }
        }
        //porta direita
        box {
            <1.05,0.05,-0.05>,<2,1.4,0>
            texture {
                pigment {
                    //color LightWood
                    color Flesh
                    //color NewTan
                }
            }
        }
        //
        sphere {
            <0.9,1.3,-0.06>, 0.04
            texture {
                pigment {
                    color Gray
                }
            }
        }
        sphere {
            <1.15,1.3,-0.06>, 0.04
            texture {
                pigment {
                    color Gray
                }
            }
        }
        translate <4,0,0>
    }
    // tabua cima
    union {
        box {
            <0,1.45,-0.04>, <6.1,1.5,1>
            texture {
                pigment {
                    color rgb<1,0.88,0.79>
                }
            }
        }
        cylinder {
            <0,1.474,-0.032>, <6.1,1.474,-0.032>, 0.0271
            texture {
                pigment {
                    color rgb<0.807,0.447,0.459>
                }
            }
        }
    }

}



balcao

//
