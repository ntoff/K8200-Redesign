include <includes/nema_mount.scad>
include <includes/X-rod spacing.scad>
include <includes/config.scad>
include <X-rod_nema_mount.scad>

module X_Rod(){
    difference(){
        union(){
            x_rod_spacing();
            smooth_rod_block();
            translate([0,0,5])cutout(d=d_spacer,h=8);
        }
        block_bolt_cutouts();
        smooth_rods();
        translate([-5,0,-1])cutout(d=8+clearance,h=3);
        translate([-5,0,0])cutout(d=d_bolt,h=50);
    }
}

module cutout(){
translate([-d,0,0])cylinder(d=d,h=h,center=true,$fn=16);
cube([d*2,d,h],center=true);
translate([d,0,0])cylinder(d=d,h=h,center=true,$fn=16);
}

//translate([-50,0,0])X_Rod();
//X_Rod_Nema();