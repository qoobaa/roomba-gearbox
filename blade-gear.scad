include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(5, 20.2/2, 20.2/2);
%cylinder(5, 16/2, 16/2);

union() {
     gear(number_of_teeth=27,
          diametral_pitch=1.42,
          bore_diameter=3.15,
          hub_thickness=0,
          gear_thickness=5,
          rim_thickness=5,
          pressure_angle=20,
          clearance=0.5);

     translate([0, 0, 5]) difference() {
          cylinder(4, 5.05, 5.05);
          cylinder(4, 5.2, 5.2, $fn=4);
     }
}
