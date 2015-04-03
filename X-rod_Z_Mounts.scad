include <includes/nema_mount.scad>
include <includes/X-rod spacing.scad>
include <includes/hex nut sizes.scad>

module backing_plate(){
    union(){
        difference(){
            x_rod_spacing();
            block_bolt_cutouts();
        }
        translate([0,0,23/2])
            rotate([90,0,0])
                difference(){
                    cylinder(d=23,h=y,center=true,$fn=6);
                    cylinder(d=z_rod+2,h=y,center=true,$fn=32);
                    translate([0,0,-13])nut(d=z_nut,h=y+1,center=true);
                    translate([0,0,y/2-4])nut(d=z_nut,h=8,center=true);
                }
    }
}

// backing_plate();