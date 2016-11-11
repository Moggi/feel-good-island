
#declare catevento =
union {
    // base
    box {
        <-0.05,0,0>,<0.05,4,0.1>
    }
    // base esquerdo
    box {
        <-0.05,0,0>,<0.05,0.64,0.1>
        rotate <0,0,45>
        translate <0,0.85,0>
    }
    // base direito
    box {
        <-0.05,0,0>,<0.05,0.64,0.1>
        rotate <0,0,-45>
        translate <0,0.85,0>
    }
    // laretal esquerda
    box {
        <-0.4,1.27,0>,<-0.5,4.03,0.1>
    }
    // lateral direita
    box {
        <0.4,1.27,0>,<0.5,4.03,0.1>
    }

/**//**//**//**//**//**//**//**//**//**//**/
    #for (step, 1, 10, 1)
    box {
        <-0.05,0,0>,<0.05,0.64,0.1>
        rotate <0,0,45>
        translate<0,1+step*0.25,0 >
    }
    #end
/**//**//**//**//**//**//**//**//**//**//**/
    #for (step, 1, 10, 1)
    box {
        <-0.05,0,0>,<0.05,0.64,0.1>
        rotate <0,0,-45>
        translate<0,1+step*0.25,0 >
    }
    #end
/**//**//**//**//**//**//**//**//**//**//**/
    // topo
    box {
        <-0.05,0,0>,<0.05,1,0.1>
        rotate <0,0,-90>
        translate <-0.5,4,0>
    }
    texture {
        pigment {
            color Brown
        }
    }
}
