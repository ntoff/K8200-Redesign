include <includes/nema_mount.scad>
include <includes/X-rod spacing.scad>

module X_Rod(){
    difference(){
        union(){
            x_rod_spacing();
            smooth_rod_block();
        }
        block_bolt_cutouts();
        smooth_rods();
    }
}
//X_Rod();