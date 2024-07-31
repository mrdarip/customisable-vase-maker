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

  t = tan(alpha) * a;
  mm = sqrt(pow(e,2) + pow(h,2)) /2;
  
 u = mm/sin(beta) ;

  or = sqrt(pow(t+u-h,2) + pow(b,2));


  translate([0,0,oy])
  sphere(r = 1);

    translate([0,0,t+u])
  sphere(r = 2);

  translate([b,0,h])
  color("red") 
  sphere(r = 1);

  translate([a,0,0])
  sphere(r = 1);

  translate([0,0,h/2])
  sphere(r = 1);

  translate([mx,0,my])
  sphere(r = 1);

translate([0,0,t+u])
  #sphere(r = or);

}