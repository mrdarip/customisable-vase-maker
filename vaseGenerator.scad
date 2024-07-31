$fn = 100;
semiSphereLayer(10, 10, 30, 20);

module semiSphereLayer(
  height,
  thickness,
  topDiameter,
  bottomDiameter
) {
//based on formulas 2.png
  a = bottomDiameter;
  b = topDiameter;
  h=height;
  mx = (b+a)/2;
  my = h/2;
  e = b-a; //check sign
  beta = atan(h/e);
  alpha = 180 - 90 - beta;
  s = tan(a) * mx;
  oy = s + h*2;

  or = sqrt(pow(oy-h,2) + pow(b,2));

}