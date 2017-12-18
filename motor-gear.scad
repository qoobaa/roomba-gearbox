include <../MCAD/involute_gears.scad>

$fn = 100;

/* # cylinder(5.5, 13.2/2, 13.2/2); */

difference() {
     union() {
          gear(number_of_teeth=17,
               diametral_pitch=1.4,
               bore_diameter=3.2,
               hub_thickness=0,
               gear_thickness=5.5,
               rim_thickness=5.5);
          translate([0, 0, 5.5])
               cylinder(3.5, 3.05, 3.05);
     }
     cylinder(1, 4, 4);

     translate([0, 0, 3.5])
          cylinder(6, 2.85, 2.85, $fn=6);
}
