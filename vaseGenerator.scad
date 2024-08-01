$fn = 100;
/*
// alien
sphereLayer(10, 10, 30, 20);
translate([0, 0, 10])
  sphereLayer(10, 10, 25, 30);
translate([0, 0, 20])
  sphereLayer(30, 10, 0, 25); //dome
*/


layers = 3;
height = 5;
diameters = rands(10,20,layers+1);

for (i=[0:layers-1]) {
  translate([0, 0, i*height])
  sphereLayer(height, 1, diameters[i+1], diameters[i]);
}


module sphereLayer(
    h,
    thickness,
    topD,
    bottomD
){
  // based on formulas 2.png
  mx = (topD + bottomD) / 2; // midpoint x
  my = h / 2;                // midpoint y
  radiusDiff = topD - bottomD;
  beta = atan(h / radiusDiff);
  alpha = 180 - 90 - beta;

  t = tan(alpha) * bottomD;
  mm = sqrt(pow(radiusDiff, 2) + pow(h, 2)) / 2;

  u = mm / sin(beta);

  extra = bottomD > topD ? -2*u : 0;

  sphereHeight = t + u + extra;

  sphereRadius = sqrt(pow(sphereHeight - h, 2) + pow(topD, 2));

  intersection(){
    translate([0, 0, h/2])
      cube([10000, 100000, h], center = true);
    translate([0, 0, sphereHeight])
    difference() {
      sphere(r = sphereRadius);
      sphere(r = sphereRadius - thickness);
    }
  }
}