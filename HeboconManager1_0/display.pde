//Este archivo pertenece a Hebocon Manager 1_0

public void marcador(){
  
  switch(flag.displayMode){
    
    case(1): //MODO PARTIDA
    //Dibujar el fondo  
    dibujaFondo();
    
    
    //Dibujar el marcador  
    noStroke();
    rectMode(CORNER);
    image(marcador,0,30,width, height/9);
        
    
    //Cronómetro  
    if(flag.cronoTime <= 0.0){ //Evita que a veces salgan negativos
      flag.cronoTime = 0.0;
      timer2.stop();
      flag.cronoStatus = 2;
    }
    
    cronoCheckFlags();
    cronoDisplayNumero(flag.cronoTime);
        
    /*println("Time"+flag.cronoTime);    // CODIGO DEBUG CRONO
    println("Start"+flag.cronoStart);
    println("Stop"+flag.cronoStop);
    println("Reset"+flag.cronoReset);
    println("Status"+flag.cronoStatus);*/
    
    
    //Poner los nombres de los jugadores
    displayNombres();
    if(flag.cronoInicio == true) initialCountdown();
  
      
  break;
  
  case(2): //MODO SOLO EL LOGO
    dibujaFondo();
  break;
  
  case(3): //MODO PROXIMO JUEGO
    image(proxima,0,0,width,height);
    displayNombres();
  break;
  
  }
}
  
  
  //Dibuja en el fondo bien el logo o la imagen de la camara
void dibujaFondo(){
  if(flag.videoON == true){
      cam.read();
      image(cam,0,0,width,height); 
    }
    
    else image(logo,0,0,width,height);
}
  
//Gestiona los flags del cronómetro
void cronoCheckFlags(){
    switch(flag.cronoStatus){
        case(0):                   //Estado inicial
        if(flag.cronoStart==true){
            flag.cronoStart=false;
            if(flag.countdownON == true){
              flag.cronoInicio = true;
              timer1.start();
            }
            else{
              flag.cronoStatus=1;
              timer2.start();
            }
        }
        if(flag.cronoStop==true){
          flag.cronoStop=false;
          timer2.stop();
        }
        if(flag.cronoReset==true){
          flag.cronoTime =  flag.configTime;
          flag.cronoReset=false;
        }
        break;
      case(1):                    //En marcha
        if(flag.cronoStart==true){
          flag.cronoStart=false;
        }
        if(flag.cronoStop==true){
          flag.cronoStatus=2;
          flag.cronoStop=false;
          timer2.stop();
        }
        if(flag.cronoReset==true){
          flag.cronoReset=false;
        }
        break;
      case(2):                  //Parado
        if(flag.cronoStart==true){
          flag.cronoStart=false;
          flag.cronoStatus=1;
          timer2.start();
        }
        if(flag.cronoStop==true){
          flag.cronoStop=false;
          timer2.stop();
        }
        if(flag.cronoReset==true){
           flag.cronoReset=false;
           flag.cronoTime =  flag.configTime;
           flag.cronoStatus=0;
        }
        break;     
    }
}
  
  
//Muestra el reloj por pantalla
//NOTA. Al final he decidido usar imágenes en vez de texto porque reescalar y cambiar la fuente daba problemas de compatibilidad
void cronoDisplayNumero(float numero){
      
    int a = int(numero/10);
    int b = int(numero-10*(int(numero/10)));
    int c = int((10*(numero-int(numero))));
    
    if(numero > 10.0){
      image(numerosN[a], 0.4375*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(numerosN[b], 0.47125*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(numerosN[c], 0.522*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(dot[0], 0.51*width, 30+0.01*height, 0.0175*width, 0.08*height);
    }
    
    if(numero <= 10.0){
      image(numerosR[a], 0.4375*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(numerosR[b], 0.47125*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(numerosR[c], 0.522*width, 30+0.01*height, 0.04375*width, 0.08*height);
      image(dot[1], 0.51*width, 30+0.01*height, 0.0175*width, 0.08*height);
    }
    
  }
  
  //Muestra los nombres de los jugadores
  void displayNombres(){
    switch(flag.displayMode){
       case(1):
        if(flag.numPlayers == 2){
          if(dropList2.getSelectedIndex() != 0)
            image(nombres[dropList2.getSelectedIndex()-1], 0.035*width, 30+0.02*height, 0.375*width, 0.058*height);
          if(dropList3.getSelectedIndex() != 0)
            image(nombres[dropList3.getSelectedIndex()-1], 0.6*width, 30+0.02*height, 0.375*width, 0.058*height);
        }
        else{
          if(dropList2.getSelectedIndex() != 0)
            image(nombres[dropList2.getSelectedIndex()-1], 0.035*width, 30+0.005*height, 0.375*width, 0.045*height);
          if(dropList3.getSelectedIndex() != 0)
            image(nombres[dropList3.getSelectedIndex()-1], 0.6*width, 30+0.0048*height, 0.375*width, 0.045*height);
          if(dropList4.getSelectedIndex() != 0)
            image(nombres[dropList4.getSelectedIndex()-1], 0.035*width, 30+0.052*height, 0.375*width, 0.045*height);
          if(flag.numPlayers == 4 && dropList5.getSelectedIndex() != 0)
            image(nombres[dropList5.getSelectedIndex()-1], 0.6*width, 30+0.048*height, 0.375*width, 0.045*height);         
        }
      break;
      case(3):
        imageMode(CENTER);
        if(flag.numPlayersP == 2){
          if(dropList6.getSelectedIndex() != 0)
            image(nombres[dropList6.getSelectedIndex()-1], 0.5*width, 0.52*height, 0.75*width, 0.12*height);
          if(dropList7.getSelectedIndex() != 0)
            image(nombres[dropList7.getSelectedIndex()-1], 0.5*width, 0.68*height, 0.75*width, 0.12*height);
        }
        else if(flag.numPlayersP == 3){
          if(dropList6.getSelectedIndex() != 0)
            image(nombres[dropList6.getSelectedIndex()-1], 0.5*width, 0.45*height, 0.75*width, 0.12*height);
          if(dropList7.getSelectedIndex() != 0)
            image(nombres[dropList7.getSelectedIndex()-1], 0.5*width, 0.6*height, 0.75*width, 0.12*height);
          if(dropList8.getSelectedIndex() != 0)
            image(nombres[dropList8.getSelectedIndex()-1], 0.5*width, 0.75*height, 0.75*width, 0.12*height);
        }
        else{
          if(dropList6.getSelectedIndex() != 0)
            image(nombres[dropList6.getSelectedIndex()-1], 0.5*width, 0.4*height, 0.75*width, 0.12*height);
          if(dropList7.getSelectedIndex() != 0)
            image(nombres[dropList7.getSelectedIndex()-1], 0.5*width, 0.55*height, 0.75*width, 0.12*height);
          if(dropList8.getSelectedIndex() != 0)
            image(nombres[dropList8.getSelectedIndex()-1], 0.5*width, 0.7*height, 0.75*width, 0.12*height);
          if(flag.numPlayersP == 4 && dropList9.getSelectedIndex() != 0)
            image(nombres[dropList9.getSelectedIndex()-1], 0.5*width, 0.85*height, 0.75*width, 0.12*height);         
        }
        imageMode(CORNER);
      break;
  }
}

void initialCountdown(){
  //Cuenta atrás al comenzar cada partida
  int framerate = TWEAKFPS; 
  rectMode(CORNER);
  image(countdown[flag.contNum],width/2-0.175*width*(framerate-flag.animFrames)/8,height/2-0.32*height*(framerate-flag.animFrames)/8,0.175*width*(framerate-flag.animFrames)/4,0.32*height*(framerate-flag.animFrames)/4);
  flag.animFrames++;
  if(flag.animFrames > framerate){
    flag.animFrames = 0;
    flag.contNum--; println(flag.contNum);
    if(flag.contNum == -1) {
        if(flag.audioON == true) audio02.play(); 
        timer2.start(); 
        flag.cronoStatus=1;
      }
    else if(flag.audioON == true)audio01.play();
  }
  if(flag.contNum < 0){
      flag.contNum = 3;
      timer1.stop();
      flag.cronoInicio = false;
  }

  flag.timerAnim = false;

}

//Dibuja el diagrama en árbol del torneo
void displayArbol(){
  arbolG[0].beginDraw();
    arbolG[0].background(80);
    arbolG[0].image(etiquetasNumeros[1],60,50,40,30);
    dibujaRotulo(1,0,0,80,41);
    dibujaRotulo(1,1,0,80,61);
    dibujaRotulo(1,2,0,80,21);
    dibujaRotulo(1,3,0,80,81);
    
    arbolG[0].image(etiquetasNumeros[2],60,150,40,30);
    dibujaRotulo(2,0,0,80,139);
    dibujaRotulo(2,1,0,80,159);
    dibujaRotulo(2,2,0,80,119);
    dibujaRotulo(2,3,0,80,179);
    
    arbolG[0].image(etiquetasNumeros[3],60,247,40,30);
    dibujaRotulo(3,0,0,80,237);
    dibujaRotulo(3,1,0,80,257);
    dibujaRotulo(3,2,0,80,217);
    dibujaRotulo(3,3,0,80,277);
    
    arbolG[0].image(etiquetasNumeros[4],60,345,40,30);
    dibujaRotulo(4,0,0,80,335);
    dibujaRotulo(4,1,0,80,355);
    dibujaRotulo(4,2,0,80,315);
    dibujaRotulo(4,3,0,80,375);
    
    arbolG[0].image(etiquetasNumeros[5],60,443,40,30);
    dibujaRotulo(5,0,0,80,433);
    dibujaRotulo(5,1,0,80,453);
    dibujaRotulo(5,2,0,80,413);
    dibujaRotulo(5,3,0,80,473);
    
    arbolG[0].image(etiquetasNumeros[6],60,541,40,30);
    dibujaRotulo(6,0,0,80,531);
    dibujaRotulo(6,1,0,80,551);
    dibujaRotulo(6,2,0,80,511);
    dibujaRotulo(6,3,0,80,571);
    
    
    arbolG[0].image(etiquetasNumeros[13],320,111,40,30);
    dibujaRotulo(13,0,0,340,101);
    dibujaRotulo(13,1,0,340,121);
    dibujaRotulo(13,2,0,340,91);
    dibujaRotulo(13,3,0,340,141);
    
    arbolG[0].image(etiquetasNumeros[14],320,297,40,30);
    dibujaRotulo(14,0,0,340,287);
    dibujaRotulo(14,1,0,340,307);
    dibujaRotulo(14,2,0,340,267);
    dibujaRotulo(14,3,0,340,317);
    
    arbolG[0].image(etiquetasNumeros[15],320,503,40,30);
    dibujaRotulo(15,0,0,340,493);
    dibujaRotulo(15,1,0,340,513);
    dibujaRotulo(15,2,0,340,473);
    dibujaRotulo(15,3,0,340,533);
    
    
    arbolG[0].image(etiquetasNumeros[19],580,190,40,30);
    dibujaRotulo(19,0,0,600,180);
    dibujaRotulo(19,1,0,600,200);
    dibujaRotulo(19,2,0,600,160);
    dibujaRotulo(19,3,0,600,220);
    
    arbolG[0].image(etiquetasNumeros[20],580,590,40,30);
    dibujaRotulo(20,0,0,600,580);
    dibujaRotulo(20,2,0,600,560);
    
    auxline01(1,290,61,0);
    auxline01(2,290,159,0);
    auxline01(3,290,257,0);
    auxline01(4,290,355,0);
    auxline01(5,290,453,0);
    auxline01(6,290,551,0);
    auxline02(13,550,121,0);
    auxline02(14,550,307,0);
    auxline02(15,550,513,0);
        
  arbolG[0].endDraw();
  
  
  arbolG[1].beginDraw();
    arbolG[1].background(80);
    
    arbolG[1].image(etiquetasNumeros[7],60,50,40,30);
    dibujaRotulo(7,0,1,80,41);
    dibujaRotulo(7,1,1,80,61);
    dibujaRotulo(7,2,1,80,21);
    dibujaRotulo(7,3,1,80,81);
    
    arbolG[1].image(etiquetasNumeros[8],60,150,40,30);
    dibujaRotulo(8,0,1,80,139);
    dibujaRotulo(8,1,1,80,159);
    dibujaRotulo(8,2,1,80,119);
    dibujaRotulo(8,3,1,80,179);
    
    arbolG[1].image(etiquetasNumeros[9],60,246,40,30);
    dibujaRotulo(9,0,1,80,237);
    dibujaRotulo(9,1,1,80,257);
    dibujaRotulo(9,2,1,80,217);
    dibujaRotulo(9,3,1,80,277);
    
    arbolG[1].image(etiquetasNumeros[10],60,345,40,30);
    dibujaRotulo(10,0,1,80,335);
    dibujaRotulo(10,1,1,80,355);
    dibujaRotulo(10,2,1,80,315);
    dibujaRotulo(10,3,1,80,375);
    
    arbolG[1].image(etiquetasNumeros[11],60,442,40,30);
    dibujaRotulo(11,0,1,80,433);
    dibujaRotulo(11,1,1,80,453);
    dibujaRotulo(11,2,1,80,413);
    dibujaRotulo(11,3,1,80,473);
    
    arbolG[1].image(etiquetasNumeros[12],60,540,40,30);
    dibujaRotulo(12,0,1,80,531);
    dibujaRotulo(12,1,1,80,551);
    dibujaRotulo(12,2,1,80,511);
    dibujaRotulo(12,3,1,80,571);
    
    
    arbolG[1].image(etiquetasNumeros[16],320,110,40,30);
    dibujaRotulo(16,0,1,340,101);
    dibujaRotulo(16,1,1,340,121);
    dibujaRotulo(16,2,1,340,91);
    dibujaRotulo(16,3,1,340,141);
    
    arbolG[1].image(etiquetasNumeros[17],320,296,40,30);
    dibujaRotulo(17,0,1,340,287);
    dibujaRotulo(17,1,1,340,307);
    dibujaRotulo(17,2,1,340,267);
    dibujaRotulo(17,3,1,340,327);
    
    arbolG[1].image(etiquetasNumeros[18],320,502,40,30);
    dibujaRotulo(18,0,1,340,493);
    dibujaRotulo(18,1,1,340,513);
    dibujaRotulo(18,2,1,340,473);
    dibujaRotulo(18,3,1,340,533);
    
    
    arbolG[1].image(etiquetasNumeros[21],580,385,40,30);
    dibujaRotulo(21,0,1,600,375);
    dibujaRotulo(21,1,1,600,395);
    dibujaRotulo(21,2,1,600,355);
    dibujaRotulo(21,3,1,600,415);
    
    arbolG[1].image(etiquetasNumeros[20],580,-10,40,30);
    dibujaRotulo(20,1,1,600,0);
    dibujaRotulo(20,3,1,600,20);
    
    auxline01(7,290,61,1);
    auxline01(8,290,159,1);
    auxline01(9,290,257,1);
    auxline01(10,290,355,1);
    auxline01(11,290,453,1);
    auxline01(12,290,551,1);
    auxline02(16,550,121,1);
    auxline02(17,550,307,1);
    auxline02(18,550,513,1);
    
  arbolG[1].endDraw();
  
  arbol[0] = arbolG[0];
  arbol[1] = arbolG[1];
}

//escribe el nombre del jugador en el árbol del torneo
void dibujaRotulo(int id, int jugador, int pag, int posx, int posy){
  if(partida[id].players[jugador] != 0){
    if(partida[id].ganador != 0)if(partida[id].players[partida[id].ganador-1] == partida[id].players[jugador]) {arbolG[pag].tint(130,255,20);arbolG[pag].stroke(130,255,20);}
    arbolG[pag].image(nombres[partida[id].players[jugador]-1],posx,posy,180,21);
    arbolG[pag].strokeWeight(3);
    arbolG[pag].line(posx+180+5, posy+10, posx+180+5+25, posy+10);
    if(jugador == 0) arbolG[pag].line(posx+180+5+25, posy+10, posx+180+5+25, posy+10+10);
    if(jugador == 1) arbolG[pag].line(posx+180+5+25, posy+10, posx+180+5+25, posy+10-10);
    if(jugador == 2) arbolG[pag].line(posx+180+5+25, posy+10, posx+180+5+25, posy+10+20);
    if(jugador == 3) arbolG[pag].line(posx+180+5+25, posy+10, posx+180+5+25, posy+10-20);
    arbolG[pag].tint(255);
    arbolG[pag].stroke(255);
  }

}

//Lineas auxiliares para el diagrama
void auxline01(int id, int px, int py, int pag){
  if(partida[id].ganador != 0) arbolG[pag].stroke(130,255,20);
  else arbolG[pag].stroke(255);
  arbolG[pag].strokeWeight(3);
  arbolG[pag].line(px, py, px+25, py);
  if(id % 2 != 0) arbolG[pag].line(px+25, py, px+25, py+49);
  else arbolG[pag].line(px+25, py, px+25, py-49);
  arbolG[pag].stroke(255);
}

void auxline02(int id, int px, int py, int pag){
  if(partida[id].ganador != 0) arbolG[pag].stroke(130,255,20);
  else arbolG[pag].stroke(255);
  arbolG[pag].strokeWeight(3);
  arbolG[pag].line(px, py, px+25, py);
  if(id == 16) arbolG[pag].line(px+25, py, px+25, py-121);
  else if(id % 2 != 0) arbolG[pag].line(px+25, py, px+25, py+102);
  else arbolG[pag].line(px+25, py, px+25, py-102);
  arbolG[pag].stroke(255);
}

//Controla el scroll del diagrama
void scrollDisplay(){
  if (window3.mouseY < 0.2*window3.height) if(flag.offsetY+10 <= 0) flag.offsetY = flag.offsetY+10;
  if (window3.mouseY > 0.8*window3.height) if(flag.offsetY-10 >= 0-window3.height) flag.offsetY = flag.offsetY-10;
  if(arbol[0] != null && arbol[1] != null){
    window3.image(arbol[0],0,flag.offsetY,window3.width,window3.height);
    window3.image(arbol[1],0,flag.offsetY+window3.height,window3.width,window3.height);
  }
}