class Puntos {
  int x=30;
  int y=10;
  int size=15;
  Puntos() {
  }
  void dibujar() {
    PImage imgPu;
    imgPu= loadImage("trofeo.png");
    imageMode(CENTER);
    image(imgPu, x, y, size, size);
    textSize(15);
    textAlign(CENTER);
    fill(#00FF9F);
    text("= "+ culebra.p, 50, 15);
  }
}
