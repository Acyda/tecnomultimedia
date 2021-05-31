int texto, timer, mifondo, movmara, movmarb, movmarc, creditofinal;
PFont nombres,protagonistas;
PImage ventana, mara, marb, marc;

void setup() {
  size(700, 500);
  movmarb=1250;
  movmarc=2300;
  creditofinal=600;
  protagonistas= loadFont("Candara-Bold-48.vlw");
  nombres = loadFont("SansSerif.plain-35.vlw");
  mara= loadImage("marfondo.jpg");
  marb= loadImage("fondomar2.jpg");
  marc= loadImage("fondodemar3.jpg");
  ventana=loadImage("ventanasubmarino.png");
  noStroke();
}
void draw() {
  timer++;
  ////////////////////////////////////
  movmara--;
  movmarb--;
  movmarc--;

  image(mara, movmara, height/-1, width*2, height*2); 
  image(marb, movmarb, height/-1, width*2, height*2);
  image(marc, movmarc, height/-1, width*2, height*2);
  ////////////texto///////////////////
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
    textFont(protagonistas, 38);
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
  if (timer>100&&timer<350) { 
    text("Captain 'No One'", 350, height/2);
  } else if (timer>350&&timer<700) { 
    text("Captain 'Someone'", 350, height/2);
  } else if (timer>700&&timer<1150) { 
    text("The Kraken", 350, height/2);
  } else if (timer>1150&&timer<2000) {
    text("Someone Else", 350, height/2);
  }
  println(timer, texto);
  image(ventana, 0, 0, width, height);
  if (timer>1500) {
    fill(0, mifondo);
    rect(0, 0, 1000, 1000);
    textFont(nombres, 35);
    if (mifondo>250) {
      fill(255);
      creditofinal--;
      textFont(nombres, 25);
      textAlign(LEFT);
      text("  Julio Verne\n  Julio Verne\n  Poseidon\n  Leonardo Garay\n  Juliana 'Acyda' Ramírez\n  Processing\n  Tobías Albirosa\n  Goya\n  Ludwing Van Beethoven\n  Paco Jamandreu\n  Jorge Ibánez\n  Pierre Aronnax", 350, creditofinal);
      textAlign(RIGHT);
      text("Directed by  \nWritten by  \nProduced by  \nExecutive producers  \nProduction designer  \nFilm editor  \nVisual effects supervisor  \nMusic by  \nMusic supervisor  \nCostume designer  \n\nCasting by  ", 350, creditofinal);
      textAlign(CENTER);
      text("A GitHub Production\n\n\n\n\n\nNo cracken has been hurt during the filming of this movie\nWe cannot say the same about the student who did this work",350,creditofinal+470);
    }
  }
  ////////////

  /* image(marb,movmarb,height/-1,width*2,height*2);
   image(marc,movmarc,height/-1,width*2,height*2);*/
}
