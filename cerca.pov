#declare R_min = 0.25;
#declare R_maj = 1.00;
#declare Half_L = 0.25;
 // = half straight part!
#declare Link_Length =  2*(R_maj);


/*difference{
 torus { R_maj, R_min
         rotate <90,0,0>
       } // end of torus  --------------
 box{<           0,-R_maj-R_min,-R_min>,
     < R_maj+R_min, R_maj+R_min, R_min>
    }// end of box
 }// end of difference*/


#declare Left_Half =
union{
difference{
 torus { R_maj, R_min
         rotate <90,0,0>
       } // end of torus  -------------
 box{<          0,-R_maj-R_min,-R_min>,
     <R_maj+R_min, R_maj+R_min, R_min>
    }// end of box

 translate <-Half_L,0,0>
 }// end of difference

 cylinder {
    <-Half_L,0,0>,<Half_L,0,0>, R_min
    translate <0,R_maj,0>
  } // end of cylinder
}// end of union
//-------------------------------------
#declare Chain_Link =
union{
    object{ Left_Half }
    object{ Left_Half scale <-1,-1,1>}

    texture{
       pigment{color rgb<1,1,1>*0.2}
       normal {bumps 0.125 scale 0.015}
       finish {phong 0.5 reflection 0.2}
           } // end of texture
} // end of Chain_Element


#declare cerca =
union {
    box {
        <0,0,0>
        <1,7,1>
        texture {
            pigment {
                color Brown
            }
        }
        scale 0.7
    }
    union{
        #declare Nr = 0;    // start
        #declare EndNr = 25; // end
        #while (Nr< EndNr)
            object{
                Chain_Link
                #if ( int(Nr/2) != Nr/2 )
                    rotate <90,0,0>
                #end
                translate <Nr*Link_Length,0,0>
            }
            #declare Nr = Nr + 1;  // next Nr
        #end // ----------------- end of loop
        scale 0.2
        translate <0.4,4.5,0.3>
    }
    union{
        #declare Nr = 0;    // start
        #declare EndNr = 25; // end
        #while (Nr< EndNr)
            object{
                Chain_Link
                #if ( int(Nr/2) != Nr/2 )
                    rotate <90,0,0>
                #end
                translate <Nr*Link_Length,0,0>
            }
            #declare Nr = Nr + 1;  // next Nr
        #end // ----------------- end of loop
        scale 0.2
        translate <0.4,2.8,0.3>
    }
    box {
        <0,0,0>
        <1,7,1>
        texture {
            pigment {
                color Brown
            }
        }
        scale 0.7
        translate <10,0,0>
    }
}

cerca
