rotate([0,0,0]){
 //rotate([0,180,0])translate([-14,-18,0]){
difference(){
 translate([35.4,-3.5,0])rotate([0,0,90])cube([20,22,4]);    
 translate([17.5,+2.5,0])rotate([0,0,0])cylinder(r=1.6, h=5, $fn=15);
 translate([31,2.5,0])rotate([0,0,0])cylinder(r=1.6, h=5, $fn=15);
 }
 translate([30.75,16,0]){
 difference(){
 // Plocha s dírou pro indukcak
 translate([35.4-28,-3.5,0])rotate([0,0,90])cube([4,28,28]);
 translate([24.5-31,+1,16])rotate([90,0,0])cylinder(r=10, h=5, $fn=40);
}
// stabilizacni pahyl
//translate([26.4,-3.5,-12])rotate([0,0,90])cube([9.4,4.8,15]);
// spojovaci trojuhelnik
//translate([26.4,0.5,-12])rotate([90,-90,0])linear_extrude(height = 4)polygon([[16,-9],[12,13],[12,19],[40,19]]);
//}
}
}