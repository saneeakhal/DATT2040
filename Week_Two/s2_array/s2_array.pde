PVector[] sp;
PVector[] acc;


int num = 222;

void setup() {
  size(800, 800);
 
  sp = new PVector[num];
  acc = new PVector[num];
 
  for (int i = 0; i < num; i++) {
    sp[i] = new PVector(random(width), random(height), random(3, 100));
    acc[i] = new PVector(random(-17, 17), random(-17, 17), 0.08);
  }
  stroke(255, 204, 229);
  strokeWeight(4);
  fill(229, 204, 255);
  background(255);
}

void draw() {
  background(255);

  for (int j = 0; j < num; j++) {
    sp[j].add(acc[j]);

    if ((sp[j].x > width) || (sp[j].x < 0)) {
      acc[j].x = acc[j].x * -1;
    }

    if ((sp[j].y > height) || (sp[j].y < 0)) {
      acc[j].y = acc[j].y * -1;
    }

    ellipse(sp[j].x, sp[j].y, sp[j].z, sp[j].z);
  }
}
