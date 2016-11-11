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
