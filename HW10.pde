HJ [] ss;
float frames;
float [] d,r,g,e,vx,vy;
void setup(){
  
  frameRate(60);
  d= new float[30];
  r= new float[30];
  g= new float[30];
  e= new float[30];
  vx= new float[30];
  vy= new float[30];
  
  for(int i=0; i<30; i++){
    d[i] = random(3,7);
  }
    for(int i=0; i<30; i++){
      r[i]=random(0);
      g[i]=random(0);
      e[i]=random(0);
      if((i%2)==0){
        vx[i] = random(5,20);
        vy[i] = random(5,20);
      }
      else{
        vx[i] = -random(5,20);
        vy[i] = -random(5,20);
      }
  }
  size(1600,800);
  ss = new HJ[30];
  for(int i=0; i<30; i++){
    ss[i] = new HJ(d[i],vx[i],vy[i]);
  }
}

void draw(){
  float a,b;

  background(0);

  frames = frames + 1;
  for(int i=0; i<30; i++){
    if((frames%60)==0){
      r[i]=int(random(255));
      g[i]=int(random(255));
      e[i]=int(random(255));
    }
  }
  for(int i=0; i<30; i++){
    ss[i].update();
    ss[i].show(r[i],g[i],e[i]);
  }
    for(int i=0; i<30; i++){
    if(i!=29){
      for(int j=i+1; j<30; j++){
        ss[i].collide(ss[j]);
      }
    }
  }

}
