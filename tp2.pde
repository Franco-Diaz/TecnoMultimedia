final int cant = 80;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  translate(width*.5, height*.5);
      for (int i=0; i<cant; i++) {
    if (i!=0) {
      if (i%2 ==0) {
        fill(255);
        stroke(255);
      } else {
        fill(0);
        stroke(0);
      }
      rect(0, 0, width/i+cant, height/i+cant);
      rotate(map(frameCount, 0, width, 0, getPos()));
    }
    }
}

float getPos(){
    if(mouseButton==LEFT){
        return radians(-360);
    }
    else{
        return radians(360);
    }
}
