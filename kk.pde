float x1, y1,d1,vx1,vy1;
float x2, y2,d2,vx2,vy2;
void setup(){
  size(800,600); // x가 width, y가 height
  x1=400;
  y1=200;
  d1=3;
  vx1=40;
  vy1=40;
  x2=400;
  y2=400;
  d2=5;
  vx2=15;
  vy2=15;
}

void draw(){
  background(0);
  x1 +=vx1;
  y1 +=vy1;
  heejun(x1,y1,d1);
  if(y1<0 || y1>height) vy1=-vy1;
  if(x1<0 || x1>width) vx1=-vx1;
   
  x2 +=vx2;
  y2 +=vy2;
  heejun(x2,y2,d2);
  if(y2<0 || y2>height) vy2=-vy2;
  if(x2<0 || x2>width) vx2=-vx2;
}
