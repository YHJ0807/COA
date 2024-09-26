void drawChar(float x, float y, float s) {
  stroke(0);
  fill(255);
  circle(x-5*s,y-0.5*s,2*s);
  circle(x+5*s,y-s,2*s);
  circle(x,y,10*s);
  circle(x-2*s,y-s,3*s);
  circle(x+2*s,y-s,3*s);
  arc(x,y+2*s,3*s,3*s,0,PI);
}
