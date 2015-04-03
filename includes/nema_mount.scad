module nema_mount() {
    difference(){
        cube([46,42,6],center=true);
        translate([-3,0,0])cylinder(d=24,h=7,center=true);
        translate([10,0,0])cube([27,24,7],center=true);
        translate([31/2,-31/2,0])screw_cutouts();
        translate([-31/2,-31/2,0])screw_cutouts();
        translate([-31/2,31/2,0])screw_cutouts();
        translate([31/2,31/2,0])screw_cutouts();
    }
}


module screw_cutouts(){
translate([-3.5,0,0])cylinder(d=3.5,h=7,center=true,$fn=16);
cube([3.5*2,3.5,7],center=true);
translate([3.5,0,0])cylinder(d=3.5,h=7,center=true,$fn=16);
}
//nema_mount();