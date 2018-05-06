
// 点を管理するクラス

class Point {
  float x;
  float y;

  Point( float _x, float _y ) {
    x = _x;
    y = _y;
  }
  
  Point( Point _p ){
    x = _p.x;
    y = _p.y;
  }
  
  boolean isEquals(Point _point){
    return ( x==_point.x ) && ( y==_point.y );
  }

  void display() {
    point(x, y);
  }
}
