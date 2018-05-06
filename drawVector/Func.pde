
void displayVector(Point A, Point B, float w, float h, float h2){
  float Vx = B.x - A.x;
  float Vy = B.y - A.y;
  float v = sqrt(Vx*Vx+Vy*Vy);
  float Ux = Vx/v;
  float Uy = Vy/v;
  Point L = new Point ( B.x - Uy*w - Ux*h, B.y + Ux*w - Uy*h );
  Point R = new Point ( B.x + Uy*w - Ux*h, B.y - Ux*w - Uy*h );
  Point M = new Point( B.x - Ux*h2, B.y - Uy*h2 );
  
  strokeWeight(5);
  line(A.x, A.y, B.x, B.y);
  fill(0);
  quad(B.x, B.y, L.x, L.y, M.x, M.y, R.x, R.y);
  // -->
}

