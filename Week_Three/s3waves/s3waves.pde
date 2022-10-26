void setup(){
  size(800, 800);
}
int w=400, r=5, N=16;
float k =0, t=0;

void draw(){
  background(#003249);
  float dw=350/N;
  stroke(152);
  translate(width/2,width/2);
  rectMode(CENTER);
  for (int i=0; i<N; i++){
    rotate(radians(t*(N-i)));
    if(i%2 ==0)
      fill(-1);
      else
      fill(#CCDBDC);
      rect(0,0,w-i*dw,w-1*dw,
      r*(N-i), r*(N-i),
      r*(N-1), r*(N-i));
  }
  t = sin(radians(k));
  k++;
}
