$fn = 100;
sphereLayer(10, 10, 30, 20);
translate([0, 0, 10])
  sphereLayer(10, 10, 10, 30);



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
      sphere(r = sphereRadius);
  }
}