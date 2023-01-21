//credits to thedotisblack on youtube for the guidline

float angle;

void setup() {
  size(800, 800);
  surface.setLocation(957, 0);
  noStroke();
  fill(50, 131, 135);
}

void draw() {
  background(255);

  float x = width;
  float dia = 150;
  int num = 100;

  translate(width/2, height/2);
  for (float  a=0; a<360; a+=45) {
    rotate(radians (a));
    pushMatrix();
    for (int  i=0; i<num; i++) {
      scale(0.95);
      rotate(radians(angle));
      ellipse(x, 0, dia, dia);
    }
    popMatrix();
    
    pushMatrix();
    for (int  i=0; i<num; i++) {
      scale(0.95);
      rotate(radians(angle));
      ellipse(x, 0, dia, dia);
    }
    popMatrix();
  }
  angle+=0.01;
}
