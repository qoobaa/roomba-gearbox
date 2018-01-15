include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(5, 31.5/2, 31.5/2);
%cylinder(5, 26.9/2, 26.9/2);

union() {
     gear(number_of_teeth=43,
          diametral_pitch=1.42,
          bore_diameter=3.15,
          hub_thickness=0,
          gear_thickness=5,
          rim_thickness=5,
          pressure_angle=20,
          clearance=0.5);

     translate([0, 0, 5]) difference() {
          cylinder(4, 7.6, 7.6);
          cylinder(4, 7.5, 7.5, $fn=4);
     }
}
