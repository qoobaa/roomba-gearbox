include <../MCAD/involute_gears.scad>

$fn = 100;

%cylinder(4.5, 18/2, 18/2);

gear(number_of_teeth=24,
     diametral_pitch=1.43,
     bore_diameter=3.4,
     hub_thickness=0,
     gear_thickness=4.5,
     rim_thickness=4.5);
