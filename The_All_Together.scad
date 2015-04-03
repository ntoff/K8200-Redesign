include <X-rod_mount.scad>
include <X-rod_nema_mount.scad>
include <X-rod_Z_Mounts.scad>
include <Z_Motors.scad>

%color("lightblue")translate([0,0,-5])square(200,center=true); //build plate stand in

translate([-70,58,0])X_Rod();
translate([-20,58,0])X_Rod_Nema();
translate([-60,5,0])rotate([0,0,90])backing_plate();
translate([0,5,0])rotate([0,0,90])backing_plate();
translate([-50,-42,0])rotate([0,0,-90])z_motor_mount();
translate([-30,-57,0])rotate([0,0,90])z_motor_mount();