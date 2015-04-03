module nema_mount() {
    difference(){
        cube([42,42,6],center=true);
        cylinder(d=24,h=7,center=true);
        translate([12,0,0])cube([24,22,7],center=true);
        translate([-31/2,-31/2,0])cylinder(d=3.5,h=7,center=true);
        translate([31/2,-31/2,0])cylinder(d=3.5,h=7,center=true);
        translate([-31/2,31/2,0])cylinder(d=3.5,h=7,center=true);
        translate([31/2,31/2,0])cylinder(d=3.5,h=7,center=true);
    }
}

//nema_mount();