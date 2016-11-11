//=========================================
// Leaf & Tree template file for the MakeTree macro
//==========================================  
// Copyright 1999-2004 Gilles Tran http://www.oyonale.com
// -----------------------------------------
// This work is licensed under the Creative Commons Attribution License. 
// To view a copy of this license, visit http://creativecommons.org/licenses/by/2.0/ 
// or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.
// You are free:
// - to copy, distribute, display, and perform the work
// - to make derivative works
// - to make commercial use of the work
// Under the following conditions:
// - Attribution. You must give the original author credit.
// - For any reuse or distribution, you must make clear to others the license terms of this work.
// - Any of these conditions can be waived if you get permission from the copyright holder.
// Your fair use and other rights are in no way affected by the above. 
//==========================================  
// This file reads the includes files generated
// by the MakeTree macro if dofile=true was set
// If you asked for leaves (leafproba>0), you have three files
// - the leaf include file (contains the leaf mesh definition)
// - the include tree file (contains the branch & root definitions)
// - the foliage include file (contains the positions of the individual leaves)
// If you didn't ask for leaves (leafproba=0) you only have the tree include file
//-----------------------------------------
// Note on texturing
//-----------------------------------------
// You need to define two textures, one for the leaf (txtLeaf) and one for the tree bark (txtTree)
// How the texture is applied depends on the choice of the dotexture parameter during the tree generation
// If dotexture=true, then the tree include file contains already the call for the texture
//                    and the texture is positionned according to its position in the tree. This allows for
//                    more realistic texturing but can be expensive memorywise.
// If dotexture=false then you need to apply it here.
// The leaf texture is applied on the whole foliage (though you can add it manually in the leaf include file
// if you want to have leaves individually textured).

#include "colors.inc"
#include "txttree.inc"

//=========================================
// Camera & light
//-----------------------------------------
#declare PdV=<0, 4 , -110>;
#declare PdA=<0,25,0>;
camera {location  PdV direction <0.0 , 0.0 , 1.7 > up y  right 4*x/3 look_at   PdA}
//-----------------------------------------
light_source{PdV color White*0.5  shadowless}
light_source{<130,40,-200> color White*1.8}
// ----------------------------------------
// Read the include files
// Replace the file names and the textures by the right ones
// ----------------------------------------
#declare txtTree=texture{txtTree_5}
#declare txtLeaf=texture{txtLeaf_1}
#declare Leaf=object{#include "gtleaf3.inc"} // declares the Leaf object
#declare Tree1=object{#include "gttree3.inc"
//        texture{txtTree} // remove if the tree was textured with dotexture=true
}                        
// remove the following for leafless tree or for test
#declare Foliage1=object{#include "gtfoliage3.inc"
        texture{txtLeaf} 
}
                                                     
union{
     object{Tree1}
     object{Foliage1}
}

plane { y, 0 pigment {color rgb <0.7,0.5,0.3>*2}}
background{color rgb <0.8,0.9,1>}

