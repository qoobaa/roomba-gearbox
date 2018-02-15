$fn = 100;

difference() {
     cylinder(4, 10/2, 10/2);
     cylinder(4, 5.6/2, 5.6/2);
     translate([5, 0, 0])
          cylinder(1.25, 5/2, 5/2);
}
