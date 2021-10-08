int pag=0;
int inicioCuentoFin =-1;
int historia=0;
int creditos=0;
int botonCreditos;
PFont fuente;
int texto=0, mifondo=0, movmara=0, movmarb=1250, movmarc=2300, creditofinal=600;
PFont nombres, protagonistas;
PImage ventana, mara, marb, marc, c;
float timer;
PImage [] imagenes = new PImage[18];
void setup() {
  size(700, 500);
  fuente = loadFont("MicrosoftTaiLe-Bold-24.vlw");
  textFont(fuente, 24);
  textAlign(CENTER);
  noStroke();
  rectMode(CENTER);
  textSize(20);
  for (int ima = 0; ima< imagenes.length; ima++) {
    imagenes[ima] = loadImage(ima+".png");
  }
  //------------------------------creditos-----------------------------------------------------
  c=loadImage("craken.png");
  mara= loadImage("marfondo.jpg");
  marb= loadImage("fondomar2.jpg");
  marc= loadImage("fondodemar3.jpg");
  ventana=loadImage("ventanasubmarino.png");
}
void draw() {
  botonCreditos=round(dist(width/10, mouseX, mouseY, height/8));
  if (inicioCuentoFin==-1) {
    background(0);
    fill(155, 155, 255);
    text("Veinte Mil Leguas De Viaje Submarino", width/2, height/3);
    if (botonCreditos<50) {
      fill(130, 130, 255);
    } else {
      fill(200, 200, 255);
    }
    ellipse(width/10, height/8, 100, 100);
    fill(255);
    text("Presione 'y' para comenzar\ny ENTER para navegar dentro de la aventura", width/2, 400);
    text("Créditos", width/10, height/8+5);
    creditos=0;
    timer=0;
    texto=0; 
    mifondo=0; 
    movmara=0; 
    movmarb=1250; 
    movmarc=2300; 
    creditofinal=600;
  } else if (inicioCuentoFin==0) {
    background(0);
    image(imagenes[pag], 0, 0, width, height);
    fill(0, 100);
    rect(width/2, height, width, 200);
    fill(255);
    texto(0, 0 );
    if (pag==2||pag==4||pag==7||pag==10) {
      botonDecision(0, 0);
    }
    if (pag==2) {
      text("no entrar", width-80, 390);
      text("entrar", 80, 390);
    }
    if (pag==4) {
      text("ir", width-80, 390);
      text("no ir", 80, 390);
    }
    if (pag==7) {
      text("ir", width-80, 390);
      text("no ir", 80, 390);
    }
    if (pag==10) {
      text("huir", width-80, 390);
      text("luchar", 80, 390);
    }
  }
  if (inicioCuentoFin==1) {
    round(timer);
    timer++;
    float d = random(-300, 400);
    float e = random(-100, height-100);
    movmara--;
    movmarb--;
    movmarc--;
    image(mara, movmara, height/-1, width*2, height*2); 
    image(marb, movmarb, height/-1, width*2, height*2);
    image(marc, movmarc, height/-1, width*2, height*2);
    ///////////////////////////////
    if (mifondo>255) { 
      mifondo=255;
    } else if (mifondo<-1) { 
      mifondo=0;
    }
    if (texto<=-1) {  
      texto=0;
    } else if (texto>255) { 
      texto=255;
    }
    fill(255, 0, 0, texto);
    if (timer>100&&timer<250||timer>450&&timer<600||timer>800&&timer<950||timer>1150&&timer<1250) { 
      texto=texto+2;
    } else { 
      texto=texto-4;
    }
    //////////////////////////
    if (timer>50&&timer<300||timer>400&&timer<650||timer>750&&timer<1000||timer>1100&&timer<1300||timer>1500) { 
      mifondo=mifondo+5;
    } else {
      mifondo=mifondo-3;
    }
    fill(0, mifondo);
    if (timer<1500) {
      ellipse( width/2, height/2, 400, 400);
    }
    fill(255, 255, 255, texto);
    textAlign(CENTER);
    if (timer>100&&timer<2000) { 

      text("Starring by", 350, height/2-40);
    }

    if (timer>100&&timer<350) { 
      text("Captain 'No One'", 350, height/2);
    } else if (timer>350&&timer<700) { 
      text("Captain 'Someone'", 350, height/2);
    } else if (timer>700&&timer<1150) { 
      text("The Kraken", 350, height/2);
    } else if (timer>1150&&timer<2000) {
      text("Someone Else", 350, height/2);
    }
    //////////////////////////
    println(timer, texto);
    image(ventana, 0, 0, width, height);
    if (timer>1500) {
      fill(0, mifondo);
      rect(width/2, height/2, 1000, 1000);

      if (mifondo>250) {
        if ((timer%10)==0) {
          image(c, d, e);
        }

        fill(255);
        creditofinal--;

        textAlign(LEFT);
        text("  Julio Verne\n  Julio Verne\n  Poseidon\n  Leonardo Garay\n  Juliana 'Acyda' Ramírez\n  Processing\n  Tobías Albirosa\n  Goya\n  Ludwing Van Beethoven\n  Paco Jamandreu\n  Jorge Ibánez\n  Pierre Aronnax", 350, creditofinal);
        textAlign(RIGHT);
        text("Directed by  \nWritten by  \nProduced by  \nExecutive producers  \nProduction designer  \nFilm editor  \nVisual effects supervisor  \nMusic by  \nMusic supervisor  \nCostume designer  \n\nCasting by  ", 350, creditofinal);
        textAlign(CENTER);
        text("A GitHub Production\n\n\n\n\n\nNo kraken has been hurt during the filming of this movie\nWe cannot say the same about the student who did this work", 350, creditofinal+470);
        if (timer>2850) {
          text("Presione ENTER para volver al Menú", width/2, height/2);
        }

        if (timer<1800) {
          text("Veinte mil leguas de viaje submarino\n    by Julio Verne", width/2, height/2);
        }
      }
    }//-----------------------------fin de los creditos----------------------
  }//me hubiera gustado aplicar los conceptos aprendidos a mis creditos pero por una desorganizacion no tuve tiempo de hacerlo

  println(pag, inicioCuentoFin);
}
void keyPressed() {
  if (inicioCuentoFin==-1&&key=='y') {
    inicioCuentoFin=0;
  }
  if (inicioCuentoFin==0) {
    if (key=='d'||key=='D') {
      if ((pag==2||pag==4||pag==7||pag==10)) {
        pag=incrementarPagina(pag);
      }
    } else if (key=='a'||key=='A') {
      if ((pag==2||pag==4||pag==7||pag==10)) {
        pag=incrementarPagina(pag);
      }
    }
    if (keyCode==ENTER && pag!=2 && pag!=4 &&pag!=7 &&pag!=10) {
      pag=incrementarPagina(pag);
    }
    if (keyCode==ENTER) {
      if (pag==11 || pag==14|| pag==15||pag==16) {
        inicioCuentoFin=1;
      }
      if (keyCode==ENTER) {
        if (pag==17) {
          inicioCuentoFin=1;
        }
      }
    }
  }
  if (inicioCuentoFin==1&&keyCode==ENTER) {
    inicioCuentoFin=-1;
  }
}
void mouseClicked() {
  if (inicioCuentoFin==-1) {
    if (botonCreditos<50) {
      inicioCuentoFin=1;
    }
  }
}
