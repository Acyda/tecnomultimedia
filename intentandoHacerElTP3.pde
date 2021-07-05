int gr =0;
int caca;
int circulos=0;

void setup() {
  size(500, 500);
}
void draw() {
  gr++;
  background(175);
  translate(width/2, height/2);
rotate(radians(gr));
  for (int grad=0; grad<=360; grad=grad+10) {

    noStroke();
    fill(255, 0, 0);
    ellipse(100, 0, 30, 30);
    rotate(radians(grad));
  }
  
}
