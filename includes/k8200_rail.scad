
module k8200_rail(){
    union(){
        linear_extrude(rlen)translate([0,-0.7,0])square([16,1.5],center=true);
        linear_extrude(rlen)translate([0,-2.09,0])square([12,1.5],center=true);
    }
}
//k8200_rail(rlen=20);