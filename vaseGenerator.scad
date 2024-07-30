
module semiSphereLayer(
  height,
  thickness,
  topDiameter,
  bottomDiameter
){

  // calculating the intersection of the sphere center

//calculate the tangent of the two circles
// we need two points, the middle of the two circles and the normal vector of the two circles
  //the middle point
  middle = [(topDiameter-bottomDiameter)/2, height/2];
  //the normal vector

  m = (height - 0) / (topDiameter - bottomDiameter);
  normal = [];

  //y = mx + n
  //m = (y2 - y1) / (x2 - x1)
  //n = y1 - m * x1

  //y = m * 0 + n as we are looking for the intersection with the z axis
  //y = n = y1


  intersection(){
    sphere(d=bottomDiameter, center=true);
    cube([bottomDiameter, bottomDiameter, height], center=true);
  }//errmn this is not working, not the code but rather the tangency
}