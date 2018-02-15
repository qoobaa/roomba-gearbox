include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(4.5, 31.4/2, 31.5/2);

union() {
     gear(number_of_teeth=43,
          diametral_pitch=1.43,
          bore_diameter=3.35, // original: 3.15
          hub_thickness=0,
          gear_thickness=4.5,
          rim_thickness=4.5);

     translate([0, 0, 4.5]) difference() {
          cylinder(4, 7.55, 7.55);
          cylinder(4, 7.5, 7.5, $fn=4);
     }
}
