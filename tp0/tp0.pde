PFont font;




void setup(){
  size(400,400);
  font = loadFont("Cambria-48.vlw");
  textFont(font);
  textSize(90);
  
}

void draw(){
  background(255,245,100);
  fill(255,0,0);
  rect(260,100,100,250);
  rect(50,90,250,350);
  fill(110,120,255);
  rect(70,100,150,120);
  
  text("SUS", 100,70);
  
 
  
  

}
