float x,y,s,i,vx,vy,k,frames,time;
void setup(){
  size(800,800);
  x = y = 100;    s = 10;
  vx = 5; vy = 5;
  k=0; frames=0;
}
void draw(){  
  frames++;                               //배경 색깔 5초마다 변경
  if((frames % 60)==0){
    time = frames/60;
    if((time % 5)==0){
      k+=50;
      if(k>255){
        k=0;
      }
      background(k);
    }
  }
  background(k);
  if(keyPressed){                        // 1,2,3으로 캐릭터 색상 변경
    if(key == '1') i=1;                  // 각각 red green blue
    else if(key == '2') i=2;
    else if(key == '3') i=3;
  }
  else i=4;
  heejun(x,y,s,i);
}

void mouseWheel(MouseEvent ee){         //마우스 휠로 캐릭터 크기 설정 가능
  float e = ee.getCount();
  if(e>0) s *= 1.1;
  else if(e<0) s *= 0.9;
}

void keyPressed(){                      // WASD로 캐릭터 이동
  if(key == 'a') x -= vx;               
  else if(key == 'd') x += vx;
  else if(key == 'w') y -= vy;
  else if(key == 's') y += vy;
    
  else if(key == CODED){                 // 방향키로 캐릭터 이동 속도 변경
  if(keyCode == UP){
    if(vx>=0) {vx += 5; vy +=5;}
  }else if(keyCode == DOWN){ 
    if(vx>0) {vx -=5; vy -=5;}
  }
 }
}
