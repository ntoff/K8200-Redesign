include <includes/config.scad>
include <includes/nema_mount.scad>

//support sides should be polyhedron but this'll do for now

difference(){
    union(){
        nema_mount(); //obvious
        translate([-21,0,15-3])cube([4,90,30],center=true); // vertical for mounting to frame
        translate([0,21+3,15-3])cube([42,6,30],center=true); //support sides
        translate([0,-21-3,15-3])cube([42,6,30],center=true); //support sides
        translate([-21-2-1.5-0.75,0,15-3])cube([1.5,90,12],center=true); //this bit
        translate([-21-2-0.75,0,15-3])cube([1.5,90,16],center=true); //and this bit are to sit into the frame
    }
    translate([-20,0,6.01])cube([42,41.99,6],center=true);
    translate([7,0,28])rotate([0,35,0])cube([50,70,20],center=true);
    translate([-23,-35,15-3])rotate([0,90,0])cylinder(d=z_motor_bolt,h=15,center=true,$fn=8);
    translate([-23,35,15-3])rotate([0,90,0])cylinder(d=z_motor_bolt,h=15,center=true,$fn=8);
}

