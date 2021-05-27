int texto, timer, mifondo;
PFont nombres;
PImage ventana, mara, marb, marc;

void setup() {
  size(700, 500);
  nombres = loadFont("SansSerif.plain-35.vlw");
  mara= loadImage("marfondo.png");
  marb= loadImage("fondomar2.png");
  marc= loadImage("fondomar3.png");
  ventana=loadImage("ventanasubmarino.png");
  textFont(nombres, 35);
  noStroke();
}
void draw() {
  if (timer>1) {
  }
  timer++;
  background(255, 0, 0);
  ////////////////////////////////////
  
  ////////////texto///////////////////
  if (mifondo>255) { mifondo=255;
  }else if(mifondo<-1){ mifondo=0;
  }
  if (texto<=-1) {  texto=0;
  } else if (texto>255) { texto=255;
  }
  fill(255, 0, 0, texto);
  if (timer>100&&timer<500||timer>800&&timer<1100||timer>1500&&timer<1900) { texto++;
  } else { texto=texto-4;
  }
  //////////////////////////

  if (timer>50&&timer<550||timer>750&&timer<1150||timer>1450&&timer<1950) { mifondo=mifondo+5;
  }else{mifondo=mifondo-2;
  }
  fill(0, mifondo);
  ellipse( width/2, height/2, 400, 400);
  fill(255, 255, 255, texto);
  if (timer>100&&timer<700) { text("Había una vez", 250, height/2);
  } else if (timer>800&&timer<1400) { text("Un pollito amarillo", 220, height/2);
  } else if (timer>1400&&timer<2000) { text("Y el pollito murió\ny desaprobo tecno\nfin :D", 200, height/2-40);
  }
  println(timer, texto);
  image(ventana,0,0,width, height);
}
