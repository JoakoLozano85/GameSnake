class Manzanas {

  int x=(int) random(3, 23);
  int y=(int) random(3, 23);
  int size=15;
  int d=0;
 

  Manzanas() {
    
    
  }
  void dibujar() {
    
    
       PImage imgMan;
    imgMan= loadImage("manzana.png");
    fill(#FC0D0D);
    imageMode(CENTER);
    image(imgMan, x*size, y*size, size, size);
    }
  
  
}
