include <includes/nema_mount.scad>
include <includes/X-rod spacing.scad>

module X_Rod_Nema(){
    union(){
    translate([42/2+(x+9.9)/2,0,1])nema_mount();
        difference(){
            union(){
                x_rod_spacing();
                smooth_rod_block();
            }
            block_bolt_cutouts();
            smooth_rods();
        }
    }
}

//X_Rod_Nema();