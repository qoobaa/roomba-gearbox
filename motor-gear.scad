include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(5, 13.2/2, 13.2/2);
%cylinder(5, 9.86/2, 9.86/2);

difference() {
     union() {
          gear(number_of_teeth=17,
               diametral_pitch=1.4,
               bore_diameter=3.5,
               hub_thickness=0,
               gear_thickness=5,
               rim_thickness=5,
               pressure_angle=20,
               clearance=0.5);

          translate([0, 0, 5])
               cylinder(3.5, 3.05, 3.05);
     }

     translate([0, 0, 3.5])
          cylinder(6, 2.5, 2.5, $fn=6);
}
