#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"


background {
    color Black
}
camera {
    angle 80
    location <0,5,-10>
    look_at <0,4,100>
}
global_settings { ambient_light rgb<2, 2, 2> }
light_source {
    <0,10,0>
    color Gray
}

// Sala
box {
    <-7,0,-10>, <7,10,4>
    texture {
        pigment {
            color Quartz
        }
    }
}

// Metro
box {
    <0,0,0>, <1,1,0.2>
    texture {
        pigment {
            color Gray
        }
    }
}


// Chao
plane {
    <0,1,0>, 0
    texture {
        pigment {
            color NeonBlue
        }
    }
}

// Mesa redonda
disc {
    <0, 2, 2>, <0,1,0>, 1
    texture {
        pigment {
            color White
        }
    }
}
