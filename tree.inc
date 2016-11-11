//=========================================
// Tree macro Parameters
//-----------------------------------------
// These parameters must be declared before calling the tree macro
//-----------------------------------------
#declare dofile=false;    // true creates a tree file ; false otherwise
#declare dotexture=true;  // true creates a textured tree (with the texture following the branch); false otherwise
#declare ftname="gttree2.inc" // file name for tree
#declare fvname="gtfoliage2.inc" // file name for foliage
#declare ffname="gtleaf2.inc" // file name for leaf
#declare txtTree=texture{txtTree_6} // Bark texture

//-----------------------------------------
// Random streams
// one stream for branches and another one for leaves
// so that the leafed tree has the same structure as the leafless one
//-----------------------------------------
#declare rsd=211;      // random seed
//#declare rsd=212;      // random seed
//#declare rsd=213;      // random seed
#declare rd=seed(rsd);  // random stream for branches
#declare rdl=seed(rsd); // separate random stream for leaves

//-----------------------------------------
// Tree structure parameters
// test with low level0 and nseg0 (3 or 4)
// High (>=6) recursion levels [level0] gives more complex trees
// High (>=6) segment numbers [nseg0] gives smoother trees
//-----------------------------------------
#declare level0=4;      // recursion level
//#declare level0=2;      // recursion level
#declare nseg0=10;       // initial number of branch segments (decreases of one at each level)
#declare nb=7;          // max number of branches per level
#declare dotop=false;   // if true, generates an extra branch on top of trunk (sometimes necessary to give more verticality)

#declare lb0=35;        // initial branch length
#declare rb0=2;         // initial branch radius
#declare ab0=95;        // initial branch angle (x angle between the trunk and the first branch)
#declare qlb=0.6;       // branch length decrease ratio (1=constant length)
#declare qrb=0.4;       // branch radius decrease ratio (1=constant radius)
#declare qab=0.7;       // branch angle decrease ratio (1=constant angle)
#declare stdax=10;      // stdev of x angle (angle x = ax+(0.5-rand)*stdax)
#declare stday=10;      // stdev of y angle (angle y = ay+(0.5-rand)*stday)

#declare branchproba=1; // probability of branch apparition
#declare jb=0.5;        // secondary branches start after this ratio of branch length

#declare fgnarl=0.4;    // gnarledness factor - keep it low <0.8
#declare stdlseg=0;     // stddev of branch segment length (0...1) (adds more randomness to branch length)

#declare twigproba=0.5; // probability to have a twig on a trunk segment

#declare v0=<0,1,0>;    // initial direction - change to give an initial orientation
#declare pos0=<0,0,0>;  // initial trunk position (no need to change this one)

//-----------------------------------------
// constraints parameters
//-----------------------------------------
#declare vpush=<0,0.2,0>;// direction of push (wind, gravity...) <0,-1,0> = gravity ; <0,1,0> = antigravity
#declare fpush=1;       // force of push
#declare aboveground=4; // constrains the branches above this level
#declare belowsky=140;  // constrains the branches below this level

//-----------------------------------------
// root parameters
//-----------------------------------------
#declare rootproba=1;   // probability of root 0=no root ; 1=all [nb] roots
#declare nroot=5;      // number of main roots;
#declare vroot=<1,-0.1,0>; // initial direction of root
#declare yroot=<0,1.5,0>;   // initial position of root above ground

//-----------------------------------------
// leaf position parameters
//-----------------------------------------
#declare leafproba=1;   // probability of leaf 0=no leaf ; 1=leaf on each segment
#declare leaflevel=4;   // level where the leaves start to appear
#declare alz0=40;       // max z angle for leaf
#declare alx0=-20;      // start x angle for leaf
#declare stdalx=40;     // std x angle for leaf
#declare stdlsize=0.5;     // stddev of leaf size 0=constant size; size = leafsize*(1+stdlsize*rand)

//-----------------------------------------
// leaf structure parameters
//-----------------------------------------
#declare txtLeaf=texture{txtLeaf_3} // Leaf texture
#declare lsize=0.4;     // leaf size
#declare seg=10;        // nb of leaf segments and stalk segments : increase to smooth
#declare ll=5;          // leaf length
#declare wl=1;          // leaf width
#declare fl=0.5;        // depth of leaf fold
#declare lpow=2;        // modifies the leaf shape : lpow=3 makes heart-shaped leaf
#declare al=100;        // leaf bending angle : the leaf bends backward until this angle
#declare apow=1;        // curve power, how slow the leaf bends
#declare ndents=0;      // dents in the leaf (8 = "oak" leaf). May require a high seg >20
#declare nlobes=7;      // number of lobes (individual leaves)
#declare alobes=280;    // angle made by all the lobes
#declare qlobes=0.6;    // size of the farest lobe (0.9 = size will be 0.9*leaf length)
#declare ls=3;          // stalk length (0=no stalk)
#declare ws=0.1;        // width of stalk
#declare as=10;         // stalk bending angle : the stalk bends forward
//-----------------------------------------
// end of parameters
//=========================================
