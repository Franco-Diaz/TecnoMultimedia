void setup(){
  size(500,500);
  background(255);
  
}

void draw(){
  
  noFill();  
  strokeWeight(2);
ellipse(width/2,height/2,300,300);


strokeWeight(1);
//ROJO
fill(255,0,0);
ellipse(250,105,60,60);


//AMARILLO
fill(255,255,0);
ellipse(400,250,60,60);


//AZUL
fill(0,0,255);
ellipse(105,250,60,60);

//CIAN
fill(0,255,255);
ellipse(250,400,60,60);

//NARANJA
fill(255,100,0);
ellipse(360,150,60,60);

//VIOLETA
fill(255,0,255);
ellipse(140,145,60,60);

//VERDE
fill(0,255,0);
ellipse(355,360,60,60);

//Color
fill(0,100,255);
ellipse(140,355,60,60);



}
