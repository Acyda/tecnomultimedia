void texto(int ancho, int alto) {
  String [] pantallas = loadStrings("pantallas.txt");
  for (int posPant=0; posPant<=22; posPant++) {
    text(pantallas[pag], width/2, (height/-8) + height*(posPant));
  }
  String [] pantallas2 = loadStrings("pantallas2.txt");
  for (int posPant=0; posPant<=22; posPant++) {
    text(pantallas2[pag], width/2, (height/-16) + height*(posPant));
  }
  
}
