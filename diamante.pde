
class Diamante{
  
  int x=(int) random(3, 23);
  int y=(int) random(3, 23);
  int size=15;
 int d=0;
  Diamante() {
    
    
  }
  void dibujar() {
   
    
    PImage imgDia;
    imgDia= loadImage("ruby.png");
    imageMode(CENTER);
    image(imgDia, x*size, y*size, size, size);
    
  
  }
}
