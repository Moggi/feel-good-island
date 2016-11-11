#declare engine =
merge {
    cylinder {
        <0,0,0>,
        <0,0,2>, 0.15
        texture {
            pigment {
                color Brown
            }
        }
    }
    cylinder {
        <0,0,-0.1>,
        <0,0,0.1>, 0.15
        texture {
            pigment {
                color Black
            }
        }
    }
    cylinder {
        <0,0,-0.05>,
        <0,0,0.25>, 0.3
        texture {
            pigment {
                color Gray
            }
        }
    }
    cylinder {
        <0,0,1.0>,
        <0,0,1.6>, 0.45
        texture {
            pigment {
                color Brown
            }
        }
    }

    object{
        catevento
    }
    object{
        catevento
        rotate <0,10,91>
    }
    object{
        catevento
        rotate <0,5,180>
    }
    object{
        catevento
        rotate <0,-10,269>
    }
}
