void minsu(float x, float y, float m){ //m is multiple
  stroke(0);
  fill(250, 224, 212);
  ellipse(x, y, 100*m, 200*m); // face
  fill(255);
  circle(x-50*m, y-10*m, 40*m); //left eye
  circle(x+50*m, y-10*m, 40*m); //right eye
  fill(250, 224, 212);
  rect(x-10*m, y-30*m, 20*m, 80*m); // nose
  fill(0);
  circle(x-55*m, y-10*m, 25*m); // left pupil
  circle(x+55*m, y-10*m, 25*m); //right pupil
  fill(255,0,0);
  arc(x-10*m, y+80*m, 40*m, 20*m, 0, PI); // mouth
  noStroke();
  fill(153, 103, 0);
  ellipse(x, y-70*m, 220*m, 50*m); // hat
  circle(x, y-100*m, 100*m); //hat
}
