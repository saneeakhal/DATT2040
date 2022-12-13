//FLASH WARNING 

float x, y;
float xStep = 200;
float yStep = 10;
float a, a_;
int num = 420;


void setup(){
  size (800, 800);
  num = int((width/xStep)*(height/yStep));
}

void draw(){
  background(255);
  strokeCap(CENTER);
  strokeWeight(xStep);
  
  int n=0;
  while(n<num){
    stroke(255-255*cos(radians(a)),255*cos(radians(a)),255*sin(radians(a)), 255-255*sin(radians(a)));
    line(x, y, x, y+yStep);   
    x+=xStep;
    if (x>width){
      x=xStep/2;
      y+=yStep;
    }
    if(y>=height){
      y=0;
      a=0;
    }
    n++;
    a+=a_;
  }
  a_+=1; //0.1 SLOWES IT DOWN, 20 GIVES U A SEIZURE
}
