
module semiSphereLayer(
  height,
  thickness,
  topDiameter
  bottomDiameter
){
  intersection(){
  sphere(d=bottomDiameter, center=true)
  cube([bottomDiameter, bottomDiameter, height], center=true)
  }//errmn this is not working, not the code but rather the tangency
}