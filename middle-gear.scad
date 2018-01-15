include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(5.5, 18/2, 18/2);
%cylinder(5.5, 14/2, 14/2);

gear(number_of_teeth=24,
     diametral_pitch=1.42,
     bore_diameter=3.3,
     hub_thickness=0,
     gear_thickness=5,
     rim_thickness=5,
     pressure_angle=20,
     clearance=0.5);
