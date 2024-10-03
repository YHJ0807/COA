void heejun(float x, float y, float d,float i){
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
 
 if(i == 1) fill(255,0,0);
 else if(i == 2) fill(0,255,0);
 else if(i == 3) fill(0,0,255);
 else if(i == 4) fill(#DAA520);                      

 arc(x,y,13*d,13*d,PI*3/4,PI*11/8); //glass
 fill(#dcdcdc);
 circle(x,y,d); //glass2
}
