include <../MCAD/involute_gears.scad>

$fn = 100;

/* # cylinder(5.5, 9, 9); */

gear(number_of_teeth=24,
     diametral_pitch=1.45,
     bore_diameter=3.5,
     hub_thickness=0,
     gear_thickness=5.5,
     rim_thickness=5.5);
