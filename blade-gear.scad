include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(4.5, 20.2/2, 20.2/2);

union() {
     gear(number_of_teeth=27,
          diametral_pitch=1.43,
          bore_diameter=3.35, // original: 3.15
          hub_thickness=0,
          gear_thickness=4.5,
          rim_thickness=4.5);

     translate([0, 0, 4.5]) difference() {
          cylinder(4, 5, 5);
          cylinder(4, 5.25, 5.25, $fn=4);
     }
}
