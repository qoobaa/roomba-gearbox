include <../MCAD/involute_gears.scad>

$fn = 100;

/* # cylinder(5, 16, 16); */
union() {
     difference() {
          gear(number_of_teeth=43,
               diametral_pitch=1.45,
               bore_diameter=3.2,
               hub_thickness=0,
               gear_thickness=5.5,
               rim_thickness=5.5);

          cylinder(1, 13, 13);
     }

     translate([0, 0, 5.5]) difference() {
          cylinder(4, 7.6, 7.6);
          cylinder(4, 7.5, 7.5, $fn=4);
     }
}
