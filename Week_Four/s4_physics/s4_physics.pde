PVector[] sp;
PVector[] acc;
int num = 15;

void setup() {
  size(300, 450);
  sp = new PVector[num];
  acc = new PVector[num];
  for (int i = 0; i < num; i++) {
    sp[i] = new PVector(random(width), random(height), random(8, 120));
    acc[i] = new PVector(random(-9, 9), random(-9, 9), 0);
  }
}

//count the number of circles - for debig
int numcircs = 5;

void draw() {
  numcircs = 5;

  background(255);
  for (int j = 0; j < num; j++) {
    sp[j].add(acc[j]);

    if ((sp[j].x > width) || (sp[j].x < 0)) {
      acc[j].x = acc[j].x * -1;
    }

    if ((sp[j].y > height) || (sp[j].y < 0)) {
      acc[j].y = acc[j].y * -1;
    }

    for (int i = 0; i < num; i++) {
      float d = PVector.dist(sp[j], sp[i]);
      if (d <= 150  ) {

        //stroke(124, 26, 135);

       // strokeWeight(2);
        //line(sp[i].x, sp[i].y, sp[j].x, sp[j].y);
      }
      strokeWeight(6);

      fill(225, 98, 240);
      //ellipse(sp[i].x, sp[i].y, sp[i].z, sp[i].z);
      stroke(124, 26, 135);
      strokeWeight(6);
      ellipse(sp[i].x, sp[i].y, sp[i].z-j, sp[i].z-j);

      numcircs++;
    }

    fill(124, 26, 135);
    ellipse(sp[j].x, sp[j].y, sp[j].z, sp[j].z);
  }

  
  //in front of lines
   for (int k = 0; k < num; k++) {
   fill(230, 124, 242);
   ellipse(sp[k].x, sp[k].y, sp[k].z, sp[k].z);
   }
   

  println(numcircs);
  println(frameRate);
}
