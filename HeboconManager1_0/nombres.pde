//Este archivo pertenece a Hebocon Manager 1_0

//Carga la lista de participantes del archivo de texto
void cargarLista(){
  listaP = loadStrings("Participantes.txt");
  String aux1 = "Nadie";
  texto1 = "#" + "01" + " " + listaP[0] + "\n";
  selecJugador[0] = aux1;
  selecJugador[1] = texto1;
    for(int j=1;j<listaP.length;j++){
      texto1 = texto1 + "#" + nf((j+1),2) + " " + listaP[j] + "\n";
      selecJugador[j+1] = "#" + nf((j+1),2) + " " + listaP[j];
    }
}

//Transforma los nombres en imágenes
void crearEtiquetas(){
  PGraphics alphaG[] = new PGraphics[100];
  
  for(int j=0;j<listaP.length;j++){
    alphaG[j] = createGraphics(400,45, JAVA2D);
    background(0);
    alphaG[j].beginDraw();
      alphaG[j].textFont(myfont);
      alphaG[j].fill(255);
      alphaG[j].textSize(31);
      alphaG[j].textAlign(LEFT,TOP);
      alphaG[j].text("#"+nf((j+1),2)+" " +listaP[j],0,2);
    alphaG[j].endDraw();
    
    nombres[j] = alphaG[j];
  }

}

//Etiquetas de los ID de partida
void crearEtiquetasNumeros(){
  for(int k=0; k < partida.length; k++){
    etiquetasNumeros[k] = createGraphics(100,50,JAVA2D);
    etiquetasNumeros[k].beginDraw();
      etiquetasNumeros[k].textFont(myfont);
      etiquetasNumeros[k].fill(220,220,82);
      etiquetasNumeros[k].textSize(30);
      etiquetasNumeros[k].textAlign(LEFT,TOP);
      etiquetasNumeros[k].text(nf(k,2),0,2);
    etiquetasNumeros[k].endDraw();
  }

}