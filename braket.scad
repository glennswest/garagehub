

spacing = 47.625;
hspace = 58;

module body()
{
     rotate([0,-90,0]) cube([30,140,8]);
     translate([0,0,0]) cube([100,140,8]);
     translate([50,70,8]) cylinder(r=82/2,h=1);
     

}

module bracket()
{
     difference(){
      body();
      for ( i = [ 20 : spacing : 120 ] ){
         rotate([0,-90,0]) translate([20, i, -10]) cylinder(r=5.5/2,h=20);
         }
     translate([(50-(hspace/2)),70,0]) cylinder(r=4/2,h=10);    
     translate([(50+(hspace/2)),70,0]) cylinder(r=4/2,h=10); 
     }
     
}     
     
     bracket();