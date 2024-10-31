class HJ {
  HJ(float a, float b, float c){
    x= random(width);
    y= random(height);
    d =a;
    vx = b;
    vy = c;
    i=1;
    j=1;

 
  }
  float x,y,d,r,g,b;
  float vx, vy,i,j;

  void show(float r, float g, float b){
    fill(#DCDCDC);
    rect(x+d,y+13.5*d,4*d,5*d); //right leg
    rect(x-3*d,y+13.5*d,6*d,5*d); //left leg
    rect(x-4.5*d,y+3*d,10.5*d,11*d); //body
    rect(x+6*d,y+4*d,3*d,8*d); //body bag
    rect(x,y+8.5*d,3*d,3*d); //left arm
    fill(#DCDCDC); 
    circle(x,y,14*d); // helmet
    fill(0);
    arc(x,y,14*d,14*d,PI*3/4,PI*11/8); //helmet2
    fill(r,g,b);                       
    arc(x,y,13*d,13*d,PI*3/4,PI*11/8); //glass
    fill(#dcdcdc);
    circle(x,y,d); //glass2
  }
  void update(){
    x += vx;
    y += vy;
    if((x>width)||(x<0)){
      i=i*(-1);
      vx = i*random(15);                //벽에 닿으면 튕기게 하기
  }
    if((y>height)||(y<0)){
      j=j*(-1);
      vy = j*random(15);
    }
}
}
