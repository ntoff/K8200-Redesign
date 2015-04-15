X=40;
Y=57;
Z=10;
difference(){
    cube([X,Y+6,Z],center=true);
    
    translate([3,0,0])cube([X,Y,Z+1],center=true);
}