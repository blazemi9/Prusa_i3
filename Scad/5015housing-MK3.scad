use <BezierScad.scad>;


rotate([180,0,0]){difference(){
    
    
union(){
    difference(){
  linear_extrude(height = 3, center = false, convexity = 10, $fn=100)
  import (file = "5015housing-MK3.dxf", layer = "Base");
   
  // korekce vnitrku tunelu
  translate([36,-22.5,-16])rotate([0,0,0])cube([20,17,20]);
    }
    
  translate([0,0, -7])linear_extrude(height = 10, center = false, convexity = 10, $fn=150)
  import (file = "5015housing-MK3.dxf", layer = "pillar");
   
    
//Strany tunelu
  difference(){
  translate([0,0, -14]){
  linear_extrude(height = 14, center = false, convexity = 10, $fn=150)import (file = "5015housing-MK3.dxf", layer = "Funnel");
}
    //korekce vnitrku tunelu
    translate([36,-22.5,-16])rotate([0,0,0])cube([20,17,20]);
   }
    
    //vrsek tunelu
   difference(){
   translate([0,0, -15])linear_extrude(height = 1.5, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Top");    
   // korekce vnitrku tunelu
   translate([36,-22.5,-16])rotate([0,0,0])cube([20,17,20]);
   }
    
   // translate([0,0, -9])linear_extrude(height = 9, center = false, convexity = 10, $fn=200)
   //import (file = "5015housing-MK3.dxf", layer = "Pins");
    
}

 //translate([0,0, -10])linear_extrude(height = 10, center = false, convexity = 10, $fn=200)
   //import (file = "5015housing-MK3.dxf", layer = "holes");

//díry
 translate([0,0, -5])linear_extrude(height = 10, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Holes-thru");

 translate([0,0, -7])linear_extrude(height = 0.8, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Ziptie-cutout");

translate([-36,-12.5+4+6.2,5])rotate([12.5,100,0])rotate([0,0,1])cylinder(r=1.65, h=38, $fn=20);
translate([-36,-12.5+4+6.2,5.1])rotate([12.5,100,0])rotate([0,0,1])cylinder(r=1.65, h=38, $fn=20);

}
difference(){
    union(){
translate([29-3-0.5-2,-12.5,-22-2])rotate([0,0,1])cube([6,7,9]);
    translate([29-3-2,-12.5-2,-22+5.2])cube([5,9,2]);
    }
translate([20,-12.5+3.5,-22+3.5-2+0.5])rotate([0,90,0])rotate([0,0,1])cylinder(r=1.6, h=20, $fn=20);

            
}
translate([36,-19.4,3])rotate([-90,0,0])vyfuk_spodek_vrsek();
translate([36,-8,3])vyfuk_boky();
translate([44.9,-10.5,-18])trychtyr();
}

module vyfuk_spodek_vrsek(){
    p=[[0,0],[5,0],[15,2],[20,4],[23,7],[25,10],[27,15],[28,18],[0,18]];
    linear_extrude(height = 1.3)polygon(p);
    translate([0,0,10.15])linear_extrude(height = 1.3)polygon(p);
}

module vyfuk_boky(){
       k=[[0,0],[0,5],[2,15],[4,20],[7,23],[10,25],[15,27],[18,28],
          [18,25],[15,24],[10,22],[7,19],[5,16],[4,12],[3,3],[3,0]]; 
        m = [[16.5,10],[18,10],[18,0],[16.5,0]];
    
       rotate([90,90,0])linear_extrude(height = 11.3)polygon(k);
       rotate([90,90,0])linear_extrude(height = 11.3)polygon(m);
}
module trychtyr(){
   difference(){
    union(){
   rotate([-20,0,0])cube([19,1.3,4]);
   translate([0,-10,0])rotate([-20,0,0])cube([19,1.3,4]);
    
    t = [[0,-10],[0,1.35],[3,2.5],[3,-9]];
    translate([1.1,0,0])rotate([0,-90,0])linear_extrude(height = 1.5)polygon(t);
    translate([19.1,0,0])rotate([0,-90,0])linear_extrude(height = 3)polygon(t);
    }
    translate([-2,-11,-2])cube([22,13,2]);
}
}  
