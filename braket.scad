

spacing = 47.625;
hspace = 58;

module body()
{
     rotate([0,-90,0]) cube([30,140,4]);
     translate([0,26,0]) cube([250,80,4]);
     translate([0,26,0]) cube([250,4,30]);
     translate([0,26+80,0]) cube([250,4,30]);
     //translate([105,70,8]) cylinder(r=82/2,h=1);
     

}

module bracket()
{
     difference(){
      body();
      for ( i = [ 20 : spacing : 120 ] ){
         rotate([0,-90,0]) translate([20, i, -10]) cylinder(r=5.5/2,h=20);
         }
     rotate([0,-90,0]) translate([20, 68, -10]) cylinder(r=14/2,h=20);
     translate([50,70,-.1]) cylinder(r=32,h=10);
     translate([125,70,-.1]) cylinder(r=32,h=10);
     translate([(205-(hspace/2)),70,0]) cylinder(r=4.4/2,h=10);    
     translate([(205+(hspace/2)),70,0]) cylinder(r=4.4/2,h=10); 
     }
     
}     
     
     bracket();