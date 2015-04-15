include <includes/hex nut sizes.scad>
include <includes/k8200_rail.scad>

rlen=22;

//this won't be rendered in the STL, it's only for design reference
%translate([0,0,5+6])cube([30,30,1],center=true); //nothing below this to allow clearance from switch contacts to bolt head

//rotate([-90,0,0])
difference(){
union(){
    k8200_rail();
    translate([0,0.75,rlen/2])cube([18,1.5,rlen],center=true);
    
}
    translate([0,0,5])rotate([90,0,0])cylinder(d=5,h=10,center=true);
    translate([0,0,5+6+6])
        rotate([90,0,0]){
            translate([-9.5/2,0,0])cylinder(d=2,h=10,center=true);
            translate([9.5/2,0,0])cylinder(d=2,h=10,center=true);
            }
}



