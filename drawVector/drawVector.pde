
// drawVector
// this system draw vector as "->"

void setup(){
  size(400,400);
  
  // class ver
  Vector vec1 = new Vector(new Point(100,200), new Point(300,200),20,30,25);
  vec1.display();
  
  // func ver
  // displayVector(new Point(100,200), new Point(300,200),20,30,25);
  
}

