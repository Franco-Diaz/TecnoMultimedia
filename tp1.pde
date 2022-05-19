// Franco Diaz
PFont font;
float mdtexto1;

PImage inicio;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage ulti;

void setup() {
  size(700, 700);
  font = loadFont("Cambria-48.vlw");

  inicio = loadImage("inicio.jpg");
  pantalla1 = loadImage("templo0.jpg");
  pantalla2 = loadImage("templo1.jpg");
  pantalla3 = loadImage("templo2.jpg");
  pantalla4 = loadImage("templo3.jpg");
  pantalla5 = loadImage("templo4.jpg");
  ulti = loadImage("final.jpg");
  textFont(font);
  mdtexto1 = 350;
  textSize(30);



  frameRate(15);
} 


void draw() {
  background(0);
  println(frameCount);

  image(inicio, 0, 0);
  if (frameCount >= 131 && frameCount<190) {
    image(pantalla1, 0, 0);}
else if (frameCount >= 190 && frameCount<250) {
  image(pantalla2, 0, 0);}
else if (frameCount >= 250 && frameCount<310) {
  image(pantalla3, 0, 0);}
else if (frameCount >= 310 && frameCount<330) {
  image(pantalla4, 0, 0);}
  if (frameCount >= 330) {
    image(ulti, 0, 0);
}



text("Game System Directors", 350, mdtexto1 + 500);
text("Yoichi Yamada", 350, mdtexto1 + 560);
text("Eiji Onozuka", 350, mdtexto1 + 620);
text("3D System Director/Character Desing", 350, mdtexto1 + 680);
text("Yoshiaki Koizumi", 350, mdtexto1 + 740);
text("Program Director", 350, mdtexto1 + 800);
text("Toshio Iwanaki", 350, mdtexto1 + 860);
text("Music Composer", 350, mdtexto1 + 920);
text("Koji Kondo", 350, mdtexto1 + 980);
text("Cinema Scene Directors", 350, mdtexto1 + 1040);
text("Takumi Kawagoe", 350, mdtexto1 + 1100);
text("Naoki Mori", 350, mdtexto1 + 1160);
text("Map Data Manager", 350, mdtexto1 + 1220);
text("Shigeo Kimura", 350, mdtexto1 + 1280);
text("Programmers", 350, mdtexto1 + 1340);
text("Main System", 350, mdtexto1 + 1400);
text("Kenzo Hayakawa", 350, mdtexto1 + 1460);
text("Display System", 350, mdtexto1 + 1520);
text("Yasunari Soejima", 350, mdtexto1 + 1580);
text("Boss Enemy Program", 350, mdtexto1 + 1640);
text("Kazuaki Morita", 350, mdtexto1 + 1700);
text("Enemy Program", 350, mdtexto1 + 1760);
text("Masumi Tarukado", 350, mdtexto1 + 1820);
text("Hiroshi Umemiya", 350, mdtexto1 + 1880);
text("Masaro Sakakabara", 350, mdtexto1 + 1940);

mdtexto1 = mdtexto1 - 7;
textAlign(CENTER);
}

void mousePressed(){
  
  if(frameCount >= 350){
    frameCount=0;
  mdtexto1 = 350;}
}
  
