//rectangle
int X= 500;
int Y= 500;
int Q= 0;
int W= 0;
//line
int Z= 0;
//line
int A= 0;
//line
int D= 500;
int G= 500;
int E= 0;
int F= 0;
//speed
int Bounce= -5;
int repeat= 4;
int diagonal= 3;

void setup() {
  size(500,500);
  fill(205);
}

void draw() {
  background(random(0,60));
  frameRate(60);
    X=X+Bounce;
    Y=Y+Bounce;
  rect(X,Y,100,100);
  if(X<-80 || Y<-80) {
   X= 600;
   Y= 600;
  }
    Q=Q-Bounce;
    W=W-Bounce;
  rect(Q,W,100,100);
  if(Q>580 || W>580) {
   Q= -100;
   W= -100;
  }
  stroke(#CE7521);
  line(Z,0,Z,500);
  Z=Z+repeat;
  if(Z>500 || Z<0) {
    Z=0;
  }
  line(0,A,500,A);
    A=A+repeat;
  if(A>500 || A<0) {
    A=0;
  }
  line(D,500,500,G);
  D=D-diagonal;
  G=G-diagonal;
  if(D<-500 || G<-500) {
    D=500;
    G=500;
}
  line(E,0,0,F);
  E=E+diagonal;
  F=F+diagonal;
  if(E>1000 || F>1000) {
    E=0;
    F=0;
}
}

