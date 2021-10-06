void texto(int ancho, int alto) {
  String [] pantallas = loadStrings("pantallas.txt");
  for (int posPant=0; posPant<=15; posPant++) {
    text(pantallas[pag], width/4, height/2 +height*posPant);
  }
}
