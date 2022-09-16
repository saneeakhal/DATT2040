color bg =(#9937de);
color fg = (#f5e940);

void setup() {
  size(500, 500);
}

void draw() {
  background(bg);
  fill(fg);
  noStroke();
  
  float tilesX = 4;
  float tilesY = tilesX;
  
  float tileW = width / tilesX;
  float tileH = height / tilesY;
  
  for (int x = 0; x < tilesX; x++){
    for (int y = 0; y < tilesY; y++) {
      float posX = tileW * x;
      float posY = tileH * y;
      
      int selector = int(random (5));
      
      pushMatrix();
      translate(posX, posY);
      if (selector == 0){
        arc(0,0,tileW*2,tileH*2,radians(0),radians(90));
      }else if (selector ==1){
        arc(tileW,0,tileW*2,tileH*2,radians(90),radians(180));
      }else if (selector ==2){
        arc(tileW,tileH,tileW*2,tileH*2,radians(180),radians(270));
      }else if (selector ==1){
        arc(0,tileH,tileW*2,tileH*2,radians(270),radians(360));
      }else{
      rect(0,0,tileW,tileH);
      }
      
      popMatrix();
    }
  }
}
