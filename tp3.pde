int rotacion =0;
int caca;
int circulos=0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  circulos=circulos+10;
  caca++;
  if (rotacion>=1) {
    rotacion++;
  }
/*  for (int rotation=0; circulos<50; rotation=rotation+100) {
    pushMatrix();
    rotate(0+rotation);
    ellipse(150, 150, 100, 100);
    popMatrix();
  }*/
  for (int d=10; caca<100; d=d+10) {
   pushMatrix();
   noFill();
   rotate(radians(d));
   strokeWeight(4);
   arc(0, 0, 10+d, 10+d, radians(0), radians(180));
   popMatrix();
   }

  /*  for (int j=200; caca<10; j++)for (int i=200; caca<10; i++)for (int circleDist=round(dist(0, 0, i, j)); caca<10; circleDist=circleDist*2) {
   if(j+i>circleDist){
   ellipse(circleDist,);
   }
   }*/
}

void mouseClicked() {
  rotacion++;
}
