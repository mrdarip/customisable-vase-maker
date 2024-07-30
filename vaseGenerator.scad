semiSphereLayer(10, 10, 30, 20);

module semiSphereLayer(
  height,
  thickness,
  topDiameter,
  bottomDiameter
) {

  // calculating the intersection of the sphere center

  //calculate the tangent of the two circles
  // we need two points, the middle of the two circles and the normal vector of the two circles
  //the middle point
  middle = [(topDiameter - bottomDiameter) / 2, height / 2];
  //the normal vector

  m = (height - 0) / (topDiameter - bottomDiameter);
  normal = [];

  //y = mx + n
  //m = (y2 - y1) / (x2 - x1)
  //n = y1 - m * x1

  //y = m * 0 + n as we are looking for the intersection with the z axis
  //y = n = y1

  o = (height / 2) + middle[0] + tan(90 - atan(height / (topDiameter / 2 - bottomDiameter / 2))) * middle[0];
  echo(o);
  intersection() {
    spherer = sqrt(pow(bottomDiameter / 2, 2) + pow(o, 2));
    translate([0, 0, o])
    sphere(r = spherer, center = true);
    translate([0, 0, height / 2])
    #cube([1000, 10000, height], center = true);
  }
  cylinder(h = 1000, d = topDiameter);
}