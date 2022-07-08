ArrayList bullets = new ArrayList();
ArrayList balloonCollection = new ArrayList();
int gridsize = 4 * 7 +5;
int direction=1;
boolean incy=false;
Triangle player;
int score=0;
PFont f;

void setup() {
  size(800, 550);
  noStroke();
  smooth();
  player=new Triangle();
  f= createFont("Arial", 36, true);
  for (int i = 0; i < width/gridsize/2; i++) {
    for (int j = 0; j <= 5; j++) {
      balloonCollection.add(new Balloon(i*gridsize, j*gridsize + 70));
    }
  }
}


void draw() {
  background(50);
  drawScore();
  player.draw();
  for (int i = 0; i < bullets.size(); i++) {
    Bullet bullet = (Bullet) bullets.get(i);
    bullet.draw();
  }
  for (int i = 0; i < balloonCollection.size(); i++) {
    Balloon balloon=(Balloon)balloonCollection.get(i);
    if (balloon.outside()==true) {
      direction *= (-1);
      incy = true;
      break;
    }
  }
  for ( int i = 0; i < balloonCollection.size(); i++) {
    Balloon balloon=(Balloon)balloonCollection.get(i);
    if (balloon.alive) {
      balloon.draw();
    } else {
      balloonCollection.remove(i);
    }
  }
  incy=false;
}

void drawScore() {
  textFont(f);
  text("Puntuación: " + String.valueOf(score), 300, 50);
}

class Figures {
  color baseColor = color(255, 255, 255);
  String sprite[];
  color nextColor = baseColor;
  boolean alive;
  int x, y;

  void draw() {
    updateObj();
    drawSprite();
  }


  void drawSprite() {
    fill(nextColor);
    nextColor = baseColor;
    display();
  }

  void updateObj() {
  }
  void display() {
  }
}




class Triangle extends Figures {
  boolean canShoot=true;
  int shootDelay=0;

  Triangle() {
    this.x=width/gridsize/2;
    this.y=height-(10*4);
  }

  void display() {
    fill(255, 0, 0);
    triangle(x+25, y-20, x, y+30, x+50, y+30);
  }

  void updateObj() {
    if (keyPressed && keyCode == LEFT) {
      x -= 5;
    }

    if (keyPressed && keyCode == RIGHT) {
      x += 5;
    }

    if (keyPressed && keyCode == UP && canShoot) {
      bullets.add(new Bullet(x, y));
      canShoot = false;
      shootDelay = 0;
    }

    shootDelay++;

    if (shootDelay >= 20) {
      canShoot = true;
    }
  }
}

class Balloon extends Figures {

  int life = 3;

  Balloon(int x1, int y1) {
    this.alive=true;
    this.x = x1;
    this.y = y1;
  }
  void updateObj() {
    if (frameCount%30 == 0) {
      x += direction * gridsize;
    }

    if (incy == true) {
      y += gridsize / 2;
    }
  }

  boolean alive() {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bullet = (Bullet) bullets.get(i);

      if (bullet.x > x && bullet.x < x + 7 * 4 + 5 && bullet.y > y && bullet.y < y + 5 * 4) {
        bullets.remove(i);

        life--;
        nextColor = color(255, 0, 0);
        if (life == 0) {
          score += 50;
          return false;
        }

        break;
      }
    }

    return true;
  }

  boolean outside() {
    return x + (direction*gridsize) < 0 || x + (direction*gridsize) > width - gridsize;
  }

  void display() {
    fill(nextColor);
    ellipse(x, y, 30, 30);
  }
}
class Bullet {
  int x, y;

  Bullet(int posX, int posY) {
    this.x=posX + gridsize/2 - 4;
    this.y=posY;
  }
  void draw() {
    fill(0, 255, 0);
    rect(x, y, 4, 4);
    y -= 4 * 2;
  }
}
