//Hex nut template for cutouts in stuff that require nuts or bolts

//nutd=13; // change this to suit the size of bolt head you want
//h=8;

mult = 1.1538461538461538461538461538462; // don't change this
module nut()
{
cylinder(d=d*mult,h=h,center=center,$fn=6); // don't do anything here
}

