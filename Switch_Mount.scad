z = 6;
z2 = z+14;
x = 12;
y = 45;
d = 5;

difference(){
    union(){
        cube([x,y,z],center=true);
        translate([0,22.5,0])roundy(h=z);
        translate([0,-y/2,7-1.25])cube([x,5,z2-d/2],center=true);
        translate([0,-y/2,z/2+14-d/2])rotate([90,0,0])roundy(h=5);
    }
    //single bolt cutout
    translate([0,-22.5,z2/2])rotate([90,0,0])cylinder(d=5.5,h=10,center=true,$fn=8);
    //slider cutout
    translate([0,18,0])cylinder(d=3.5,h=z+1,$fn=64,center=true);
    translate([0,-2,0])cylinder(d=3.5,h=z+1,$fn=64,center=true);
    translate([0,8,0])cube([3.5,20,z+1],center=true);
    //end slider
}

module roundy(){
        translate([-3.5,0,0])cylinder(d=d,h=h,center=true,$fn=32);
        translate([3.5,0,0])cylinder(d=d,h=h,center=true,$fn=32);
        translate([0,0,0])cube([7,5,h],center=true);
}