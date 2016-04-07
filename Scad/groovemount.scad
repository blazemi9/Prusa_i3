union(){
    translate([0,28,0]){
    difference(){
     inductive_hole();
     fancy();      
    }
}
    default_groovemount();
    goovemount_extension();
}
module inductive_hole(){
    rotate([90,0,0]){
   difference(){
     translate([0,0,0])rotate([0,0,90])cube([6,32,28]);
       translate([-17,6.5,14])rotate([90,0,0])cylinder(r=10, h=7, $fn=40);
      // translate([-31,0,-7])rotate([0,-45,0])cube([10,6,11.5]);
    }
}
 }
 
 module fancy(){
     rotate([90,0,0]){
     translate([-32,0,-8])rotate([0,-45,0])cube([11.5,6,11.5]);
     //translate([-32+32,0,-8])rotate([0,-45,0])cube([11.5,6,11.5]);
     //translate([-32+32,0,-8+28])rotate([0,-45,0])cube([11.5,6,11.5]);
     translate([-32,0,-8+28])rotate([0,-45,0])cube([11.5,6,11.5]);
     }
 }
 
 module default_groovemount(){
         difference(){
    cube([50,20,6]);

    translate([5,10,0])cylinder(r=3.5,h=3.2);
    translate([45,10,0])cylinder(r=3.5,h=3.2);

    translate([5,10,3.5])cylinder(r=2,h=3.5);
    translate([45,10,3.5])cylinder(r=2,h=3.5);


    translate([20,10,0])cylinder(r=6.1,h=10);
    translate([20,10,4.5])cylinder(r=8.5,h=10);

    translate([20-6.1,0,0]) cube([12.2,10,10]);

    translate([20-8.5,0,4.5]) cube([17,10,10]);
}
}

module goovemount_extension(){
    difference(){
    translate([0,20,0]) cube([35,8,6]);
    translate([27,28,0])rotate([0,0,-45])cube([11.5,6,11.5]);  
    }
}