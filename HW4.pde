float [] x,y,vx,vy;
float [] a,e,s,r,g,b;
int n = 50;
int c,d;

void setup(){
  size(1600,800);
  x = new float [n];            // x,y는 좌표
  y = new float [n];        
  vx = new float [n];           // vx,vy는 이동속도
  vy = new float [n];
  a = new float [n];            
  e = new float [n];
  s = new float [n];            //s는 사이즈
  r = new float [n];            //r,g,b는 색
  g = new float [n];
  b = new float [n];
  
  for(int i=0; i<n; i++){
    a[i] = random(2);
    e[i] = random(2);
    x[i] = random(width);
    y[i] = random(height);
    c = int(a[i]);
    d = int(e[i]);
    s[i] = random(2,5);                    // 캐릭터의 크기를 랜덤하게 지정
    r[i] = int(random(255));                    // rgb 값 랜덤하게 설정
    g[i] = int(random(255));
    b[i] = int(random(255));
    
    if(c==1){                              // c가 1이면 초기 이동 방향이 -방향
      vx[i] = -random(15);
    }
    else vx[i] = random(15);                // c가 0이면 초기 이동 방향이 +방향
    
    if(d==1){                               // d가 1이면 초기 이동 방향이 -방향
      vy[i] = -random(15);  
    }
    else vy[i] = random(15);                 // d가 0이면 초기 이동 방향이 +방향
  }
  
}

void draw(){

  background(0);
  
  for(int i=0; i<n; i++){
    x[i] += vx[i];
    y[i] += vy[i];

    if((x[i]>width)||(x[i]<0)) vx[i] = -vx[i];                //벽에 닿으면 튕기게 하기
    if((y[i]>height)||(y[i]<0)) vy[i] = -vy[i];
    
    heejun(x[i],y[i],s[i],r[i],g[i],b[i]);
  }
  
}
