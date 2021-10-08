int incrementarPagina(int paginaActual) { 
  if (paginaActual>16) {
    return 0;
  }
  if (paginaActual==17) {
    paginaActual=0;
  }
  if (inicioCuentoFin==0) {
    if (key=='a'&&pag==2) {
      return paginaActual=16;
    }
    if (key=='a'&&pag==4) {
      return paginaActual=12;
    }
    if (key=='a'&&pag==7) {
      return paginaActual=14;
    }
    if (key=='a'&&pag==10) {
      return paginaActual=15;
    }
    if (key=='d'&&paginaActual==2&&paginaActual==4&&paginaActual==7&&paginaActual==10) {
      return paginaActual+1;
    }

    if (pag==13) {
      return paginaActual=7;
    }
    if (keyCode==ENTER&&pag==11 || pag==14|| pag==15||pag==16) {
      return paginaActual =17;
    }
    return paginaActual+1;
  } else { 
    return paginaActual=0;
  }
}
