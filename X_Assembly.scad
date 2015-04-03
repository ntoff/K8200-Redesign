include <X-rod_mount.scad>
include <X-rod_nema_mount.scad>
include <X-rod_Z_Mounts.scad>

%color("lightblue")translate([0,0,-5])square(200,center=true); //build plate stand in

translate([-50,40,0])X_Rod();
translate([0,40,0])X_Rod_Nema();
translate([-45,-25,0])rotate([0,0,90])backing_plate();
translate([15,-25,0])rotate([0,0,90])backing_plate();