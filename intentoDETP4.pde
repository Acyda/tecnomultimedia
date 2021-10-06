int pag=0;
int posY=0;
PImage [] imagenes = new PImage[16];
void setup() {
  size(500, 300);
  rect(width/2, height/2, 200, 50, 250);
  fill(0,110,0);
  textSize(50);
  for (int ima = 0; ima< imagenes.length; ima++) {
    imagenes[ima] = loadImage(ima +".png");
  }
}
void draw() {
  background(0);
  image(imagenes[pag],0,0,width,height);
  texto(200, posY);
}
void keyPressed() {
  if (key=='d') {
    posY++;
    pag=incrementarPagina(pag);
  } else if (key=='a') {
    posY--;
    pag=decrementarPagina(pag);
  }
}
void mouseClicked() {
}
