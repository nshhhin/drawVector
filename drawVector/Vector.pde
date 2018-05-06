
// 矢印を管理するクラス

class Vector {
  Point P1,P2;
  float w;
  float h;
  float h2;
  
  float Vx;
  float Vy;
  float v;
  float Ux;
  float Uy;
  
  Point L,R,M;
  
  Vector(Point _p1, Point _p2, float _w, float _h, float _h2){
    P1 = new Point( _p1 );
    P2 = new Point( _p2 );
    w = _w;
    h = _h;
    h2 = _h2;
    
    Vx = P2.x - P1.x;
    Vy = P2.y - P1.y;
    v = sqrt(Vx*Vx+Vy*Vy);
    Ux = Vx/v;
    Uy = Vy/v;
    
    L = new Point ( P2.x - Uy*w - Ux*h, P2.y + Ux*w - Uy*h );
    R = new Point ( P2.x + Uy*w - Ux*h, P2.y - Ux*w - Uy*h );
    M = new Point( P2.x - Ux*h2, P2.y - Uy*h2 );
  }
  
  void display(){
    strokeWeight(5);
    line(P1.x, P1.y, P2.x, P2.y);
    fill(0);
    quad(P2.x, P2.y, L.x, L.y, M.x, M.y, R.x, R.y);
  }
  
}
