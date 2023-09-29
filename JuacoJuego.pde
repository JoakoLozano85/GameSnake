Culebra culebra;
Manzanas manzanas;
Diamante diamante;
Puntos puntos;
void setup() {
  size(400, 400);  
  background(#D6CFCF);
  culebra = new Culebra();
  manzanas = new Manzanas();
  diamante = new Diamante();
  puntos = new Puntos();
}
void draw() {
  
  PImage img;
  img = loadImage("fondo.jpg");
  background(img);
  culebra.dibujar();
  fill(#7C6060);
  rect(20,20, 350, 5);
  fill(#7C6060);
  rect(20,20, 5, 350);
  fill(#7C6060);
  rect(20,370, 350, 5);
  fill(#7C6060);
  rect(370,20, 5, 350);
  manzanas.dibujar();
  culebra.comer();
  if (culebra.d==5) {
    diamante.dibujar();
  }
  if (culebra.d>5) {
    culebra.d=0;
    culebra.l=0;
  }
  puntos.dibujar();
  
  culebra.comerDiamante();

  culebra.chocar();
}
void keyPressed() {
  culebra.mover();
}
