int Episodio;
int botonStart;
int posXX; ////// POSICION DE LOS RECTANGULOS
int posYY; //////            ||
int largoX1;////// LARGO de mi PRIMER cuadrado
int largoY1; ////// ANCHO de mi PRIMER cuadrado
int largoX2;////// LARGO de mi SEGUNDO cuadrado
int largoY2;////// ANCHO de mi SEGUNDO cuadrado
int colClaroR; ////////colores R,G,B de los cuadrados claritos
int colClaroG;
int colClaroB;
int colObsR;////////colores R,G,B de los cuadrados obscuros
int colObsG;
int colObsB;
int diametro ; ////// EL DIAMETRO DE TODOS MIS CIRCULOS
int radio ; /////// EL RADIO DE TODOS MIS CIRCULOS
int posX;
int posY;
int diametro2;
int a;
int render;
int posY2;
int posX2;
PImage pez,teclas,r;
void setup() {
  rectMode(CENTER);
  textAlign(CENTER);
  size(800, 800, P3D);
  pez= loadImage("pez.png");
  teclas= loadImage("teclas.png");
  r= loadImage("r.png");
  Episodio =0;
  posXX = 20;   
  posYY = 20;
  largoX1=40;
  largoX2=20;
  largoY2=40;
  colClaroR=204;
  colClaroG=204;
  colClaroB=204;
  colObsR=102;
  colObsG=102;
  colObsB=102;
  largoY1  = 20;
  diametro = 20;
  radio = diametro/2;
  posX=0;
  posY=40;
  posX2=40;
  posY2=0;
  diametro2=diametro-3;
}

void draw() {
  /////////EL INICIO////////
  //////////NOTA=usé una figura 3D que en la medida de lo básico aprendí a usar/////////////
  botonStart=round(dist(mouseX, mouseY, width/2, height/4+height/2));
  background(153,137,92);
  
  if (Episodio==0) {
    image(teclas,0,0,400,200);
    image(r,550,90,100,100);
    noStroke();
    translate(width/2, height/4+height/2);
    lights();
    fill(250,120,200);
    sphereDetail(round(dist(width/2, height/4+height/2,mouseX,mouseY)));
    sphere(50);
    translate(-width/2, -height/4-height/2-10,70);
    fill(a);
    textSize(20);
    text(" Start ",width/2,height/4+height/2);
    text(" EINICIAR ",650,170);
    text(" Use las teclas para jugar\ncon tamaños, formas y colores ",200,250);
    text("PRESIONE START PARA COMENZAR",width/2,height/2);
  }
  if (Episodio==1) {    
    background(255);
    fill(255, 255, 255);
    rect((width/2)-30, height/2, 800, 800);
    noStroke();
    fill(a);
    //////////TODOS LOS CIRCULOS NEGROS DEL FONDO//////////////////
   for (int cant=0; cant<21; cant++) {
      if (cant==3||cant==5||cant==6||cant==8||cant==11||cant==13||cant==14||cant==16||cant==19||cant==20) {
        for (int k=0; k<801; k=k+40) {
          ellipse(posX+k, posX+k, diametro2, diametro2);
          ellipse(posX+k, cant*posY+k, diametro2, diametro2);
        }
      }
    }
    for (int cant=0; cant<21; cant++) {
      if (cant==2||cant==5||cant==8||cant==10||cant==11||cant==13||cant==15||cant==16||cant==18||cant==20) {
        for (int k=0; k<801; k=k+40) {
          ellipse(cant*posX2+k, posY2+k, diametro2, diametro2);
        }
      }
    }
    noFill();
    ////////////////este ciclo for lo use para generar los cuadrados superiores,
    ////////////////que al tener formas redondeadas utilice dos rectangulos y 4 ellipses en cada esquina
    for (int j=1; j<160; j+=2) for (int i =1; i<160; i+=2) {
      if ((j&2)==0&&(i&2)==0) {
        fill(colClaroR, colClaroG, colClaroB);
      } else if ((i&2)==0) {
        fill(colObsR, colObsG, colObsB);
      } else if ((j&2)==0) {
        fill(colObsR, colObsG, colObsB);
      } else {
        fill(colClaroR, colClaroG, colClaroB);
      }
      rect(posXX*j, posYY*i, largoX1, largoY1);
      rect(posXX*j, posYY*i, largoX2, largoY2);
      ellipse(posXX*j-radio, posYY*i-radio, diametro, diametro);
      ellipse(posXX*j+radio, posYY*i-radio, diametro, diametro);
      ellipse(posXX*j+radio, posYY*i+radio, diametro, diametro);
      ellipse(posXX*j-radio, posYY*i+radio, diametro, diametro);
    }
  } 
  /////////////////pecesito porque si, parecian escamas////////////////
  if (posXX==7) {
    image(pez, 0, 0, width, height);
  }
  if(diametro<=0){
    diametro=0;
  }else if(diametro>=40){
    diametro=40;
  }
}

void mouseClicked() {
  //////////////Inicializacion de la ilusion///////////////////
  if (botonStart<50&&Episodio==0) {
    Episodio++;
  }
}
void keyPressed() {
  /////////////interaccion de color y distancia////////////////
  if (keyCode == UP) {
    if (Episodio==1&&posXX>5||posYY>5) {
      posXX--;
      posYY--;
      colClaroR=round(random(0, 255));
      colClaroG=round(random(0, 255));
      colClaroB=round(random(0, 255));
      colObsR=round(random(0, 255));
      colObsG=round(random(0, 255));
      colObsB=round(random(0, 255));
    }
  }
  if (keyCode == DOWN) {
    if (Episodio==1&&posXX<40||posYY<40) {
      posXX++;
      posYY++;
      colClaroR=round(random(0, 255));
      colClaroG=round(random(0, 255));
      colClaroB=round(random(0, 255));
      colObsR=round(random(0, 255));
      colObsG=round(random(0, 255));
      colObsB=round(random(0, 255));
    }
  }
  /////////////interaccion de tamaño sobre las ellipses//////////////////
  if (keyCode == LEFT) {
    diametro++;
  }
  if (keyCode == RIGHT) {
    diametro--;
  }
  if (Episodio==1) {
  }
  if (keyCode == 'r'||keyCode=='R') {
    setup();
  }
}
