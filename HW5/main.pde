HJ ss;
float frames,r,g,e;
void setup(){
  
  r=123;
  g=123;
  e=123;
  size(1600,800);
  ss= new HJ(10,15,15);
}

void draw(){
  float a,b;

  background(0);
  frames = frames + 1;
  if((frames%30)==0){
    r=int(random(255));
    g=int(random(255));
    e=int(random(255));
  }
  ss.update();
  ss.show(r,g,e);
}
