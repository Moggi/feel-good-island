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
