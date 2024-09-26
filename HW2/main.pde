float x1, y1,d1,vx1,vy1;
float x2, y2,d2,vx2,vy2;
float x3 ,y3,d3,vx3,vy3;
void setup(){
  size(800,800); // x가 width, y가 height
  x1=600; y1=200; d1=10; vx1=15; vy1=10;
  x2=400; y2=400; d2=5; vx2=10; vy2=15;
  x3=200; y3=600; d3=1; vx3=20; vy3=5;
}

void draw(){
  background(#c6c6c6);
  x1 +=vx1;
  y1 +=vy1;
  x2 +=vx2;
  y2 +=vy2;
  x3 +=vx3;
  y3 +=vy3;
   
  drawChar(x1,y1,d1);
  YHJ(x2,y2,d2);
  minsu(x3,y3,d3);

  if(y1<0 || y1>height) vy1=-vy1;
  if(x1<0 || x1>width) vx1=-vx1;
  if(y2<0 || y2>height) vy2=-vy2;
  if(x2<0 || x2>width) vx2=-vx2;
  if(y3<0 || y3>height) vy3=-vy3;
  if(x3<0 || x3>width) vx3=-vx3;
}
