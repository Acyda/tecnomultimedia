int texto, timer, mifondo, movmara, movmarb, movmarc, creditofinal;
PFont nombres;
PImage ventana, mara, marb, marc;

void setup() {
  size(700, 500);
  movmarb=1250;
  movmarc=2300;
  creditofinal=600;
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
  textFont(nombres, 35);
  movmara--;
  movmarb--;
  movmarc--;

  image(mara, movmara, height/-1, width*2, height*2); 
  image(marb, movmarb, height/-1, width*2, height*2);
  image(marc,movmarc,height/-1,width*2,height*2);
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
  if (timer>100&&timer<300||timer>600&&timer<900||timer>1200&&timer<1500||timer>1800&&timer<2100) { 
    texto=texto+2;
  } else { 
    texto=texto-4;
  }
  //////////////////////////

  if (timer>50&&timer<350||timer>550&&timer<950||timer>1150&&timer<1550||timer>1750&&timer<2150||timer>2350) { 
    mifondo=mifondo+5;
  } else {
    mifondo=mifondo-2;
  }
  fill(0, mifondo);
  if (timer<2350) {
    ellipse( width/2, height/2, 400, 400);
  }
  fill(255, 255, 255, texto);
  if (timer>100&&timer<500) { 
    text("Había una vez", 250, height/2);
  } else if (timer>500&&timer<1000) { 
    text("Un pollito amarillo", 220, height/2);
  } else if (timer>1000&&timer<1600) { 
    text("Y el pollito murió\ny desaprobo tecno\nfin :D", 200, height/2-40);
  } else if (timer>1600&&timer<2200) {
    text("Y revivió o.o", 200, height/2-40);
  }
  println(timer, texto);
  image(ventana, 0, 0, width, height);
  if (timer>2250) {
    fill(0, mifondo);
    rect(0, 0, 1000, 1000);
    if (mifondo>250) {
      fill(255);
      creditofinal--;
      textFont(nombres, 25);
      text("                            Directed by      Julio Verne\n                              Written by      Julio Verne\n                         Produced by      Poseidon\n        Executive producers      Leonardo Garay\n         Production designer      Juliana 'Acyda' Ramírez\n                              Film editor      Processing\nVisual effects supervisor      Tobías Albirosa\n                                 Music by      Goya\n                Music supervisor      Ludwing Van Beethoven\n              Costume designer      Paco Jamandreu\n                                                           Jorge Ibánez\n                              Casting by      Pierre Aronnax\n\n\n\n\n\n                                        A GitHub Production\n\n\n\n\n\nNo cracken has been hurt during the filming of this movie\nWe cannot say the same about the student who did this work", 50, creditofinal);
    }
  }
  ////////////

  /* image(marb,movmarb,height/-1,width*2,height*2);
   image(marc,movmarc,height/-1,width*2,height*2);*/
}
