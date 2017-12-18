include <../MCAD/involute_gears.scad>

$fn = 100;

/* # cylinder(5, 10, 10); */
union() {
     difference() {
          gear(number_of_teeth=27,
               diametral_pitch=1.45,
               bore_diameter=3.2,
               hub_thickness=0,
               gear_thickness=5.5,
               rim_thickness=5.5);

          cylinder(1, 7.6, 7.6);
     }

     translate([0, 0, 5.5]) difference() {
          cylinder(4, 5, 5);
          cylinder(4, 5.2, 5.2, $fn=4);
     }
}
