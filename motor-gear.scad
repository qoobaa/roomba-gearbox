include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(4.5, 13.1/2, 13.1/2);


difference() {
     union() {
          gear(number_of_teeth=17,
               diametral_pitch=1.39,
               bore_diameter=3.5,
               hub_thickness=0,
               gear_thickness=4.5,
               rim_thickness=4.5);

          translate([0, 0, 4.5])
               cylinder(4.3, 3, 3);
     }

     translate([0, 0, 2.5])
          cylinder(8, 2.5, 2.5, $fn=6);

     /* cylinder(1, 8/2, 8/2); */
}
