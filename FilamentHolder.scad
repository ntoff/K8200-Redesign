x=174;
y=35;
z=6;
dpp=144;

include <includes/k8200_rail.scad>;

difference(){
    union(){
    translate([-15,-y/2,0])cube([x,y,z]);
    translate([0,-y/2,z])rotate([-90,0,0])k8200_rail(rlen=y);
    translate([dpp,-y/2,z])rotate([-90,0,0])k8200_rail(rlen=y);
    }
union(){
    translate([dpp,0,-1])cylinder(d=6,h=10);
    translate([0,0,-1])cylinder(d=6,h=10);
    translate([dpp/2,0,-1])cylinder(d=8.5,h=10);
}
}
