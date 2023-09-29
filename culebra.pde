class Culebra {
  int x=100;
  int y=100;
  int vel=3;
  int dir=3;
  int size = 15;
  int[] dx = {0, 0, -1, 1};
  int[] dy = {-1, 1, 0, 0};
  float c=4, l=0;
  int d=0, p=0;
  ArrayList<Integer> posX = new ArrayList<Integer>();
  ArrayList<Integer> posY = new ArrayList<Integer>();
  Culebra() {
    frameRate(5);
    posX.add(10);
    posY.add(10);
  }
  void dibujar() {
    PImage imgCu;
    imgCu= loadImage("icon.png");
    imageMode(CENTER);
    posX.add(0, posX.get(0)+dx[dir]);
    posY.add(0, posY.get(0)+dy[dir]);
    posX.remove(posX.size()-1);
    posY.remove(posY.size()-1);
    fill(#BF00FA);
    for (int i= 0; i< posX.size(); i++) {

      image(imgCu, posX.get(i)*size, posY.get(i)*size, size, size);
    }
  }
  void mover() {

    if (keyCode==RIGHT) {
      if (dir!=2) {

        dir=3;
      }
    }
    if (keyCode==LEFT) {
      if (dir!=3) {
        dir=2;
      }
    }
    if (keyCode==UP) {
      if (dir!=1) {
        dir=0;
      }
    }
    if (keyCode==DOWN) {
      if (dir!=0) {
        dir=1;
      }
    }
  }
  void chocar() {
    if ( ( posX.get(0)<2 )||( posX.get(0)>24 )||( posY.get(0)<2 )||( posY.get(0)>24 )) {
      noLoop();
      background(0, 0, 0);
      textSize(50);
      textAlign(CENTER);
      fill(#FC0000);
      text("Game Over", width/2, height/2);
    }
  }

  void comer() {
    if ((posX.get(0)==manzanas.x) &&(posY.get(0)==manzanas.y)) {
      
      manzanas.x=(int) random(3, 23);
      manzanas.y=(int) random(3, 23);
      posX.add(posX.get(posX.size()-1));
      posY.add(posY.get(posY.size()-1));
      c=c+1;
      d=d+1;
      p=p+1;
      
      
      frameRate(c-l);
    }
  }
  void comerDiamante() {
    
    if (d==5) {
      l=c-4;

      if ((posX.get(0)==diamante.x) &&(posY.get(0)==diamante.y)) {
        diamante.x=(int) random(3, 23);
        diamante.y=(int) random(3, 23);
       d=d+1;
        frameRate(l);
         
      }
    
    }
     
  }
}
