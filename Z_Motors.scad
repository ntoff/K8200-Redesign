include <includes/config.scad>
include <includes/nema_mount.scad>


module z_motor_mount(){
    difference(){
        union(){
            nema_mount(); //obvious
            translate([-21,0,15-3])cube([4,90,30],center=true); // vertical for mounting to frame
            translate([0,21+3,15-3])cube([42,6,30],center=true); //support sides should be polyhedron but this'll do for now
            translate([0,-21-3,15-3])cube([42,6,30],center=true); //support sides should be polyhedron but this'll do for now
            translate([-21-2-1.5-0.75,0,15-3])cube([1.5,90,11.5],center=true); //this bit
            translate([-21-2-0.75,0,15-3])cube([1.5,90,15.5],center=true); //and this bit are to sit into the frame
        }
        translate([-31/2,-31/2,0])screw_cutouts(); //this
        translate([-31/2,31/2,0])screw_cutouts(); //and this are from nema_mount.scad but they need repeating because of an earlier union here.
        translate([-20,0,6.01])cube([42,41.99,6],center=true);
        translate([7,0,28])rotate([0,35,0])cube([50,70,20],center=true);
        translate([-23,-35,15-3])rotate([0,90,0])cylinder(d=z_motor_bolt,h=15,center=true,$fn=8);
        translate([-23,35,15-3])rotate([0,90,0])cylinder(d=z_motor_bolt,h=15,center=true,$fn=8);
    }
}

//translate([15,20,0])rotate([0,0,180])z_motor_mount();
//z_motor_mount();