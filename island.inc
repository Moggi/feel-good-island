#declare island =
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
        translate <0,1,0>
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
    translate <0,0,-2.5>
}






//
