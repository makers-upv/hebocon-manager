//Este archivo pertenece a Hebocon Manager 1_0

public class torneo{
  int ID = -1;  //ID de la partida
  int fase = -1;  //Fase del torneo
  int[] players = {0,0,0,0};  //ID de los jugadores en la partida (0 es nadie)
  int ganador = 0; //ID del ganador
  int next = -1; //ID de la partida a la que se clasifica el ganador
  
  //N_fases = log2(N_PLAYERS)  ----- log2(x) = log(x)/log(2) DE MOMENTO NO SE UTILIZA
}


void generarTorneo(){
  
  partidaIDs[0] = "<Seleccionar>";
  partida[0] = new torneo();
  partida[0].ID = 0;
  partida[0].fase = 0;
  
  for(int k=1;k<partida.length;k++){ //Genera los ID de partida por defecto, está programado sólo para 25 participantes
    partida[k] = new torneo();
    partidaIDs[k] = str(k);
    partida[k].ID = k;
    if(k<=etapa[1])partida[k].fase=1;
    else if(k<=(etapa[1]+etapa[2]))partida[k].fase=2;
    else if(k<=(etapa[1]+etapa[2]+etapa[3]))partida[k].fase=3;
    else partida[k].fase=4;
    if(partida[k].fase<3) partida[k].next = int(ceil(float(partida[k].ID)/2.0))+etapa[1]; 
    if(partida[k].fase==3)partida[k].next = 22;
  }
}


void guardarPartida(int k){ //Los datos de las partidas se guardan en el disco local
    String[] auxdata = new String[8];
    auxdata[0] = str(partida[k].ID);
    auxdata[1] = str(partida[k].fase);
    auxdata[2] = str(partida[k].players[0]);
    auxdata[3] = str(partida[k].players[1]);
    auxdata[4] = str(partida[k].players[2]);
    auxdata[5] = str(partida[k].players[3]);
    auxdata[6] = str(partida[k].ganador);
    auxdata[7] = str(partida[k].next);
    saveStrings("/data/torneo/"+auxdata[0], auxdata);
}


void cargarPartida(){
  for(int k=1;k<partida.length;k++){
    String[] auxdata = loadStrings("/data/torneo/"+k);
    partida[k].ID = Integer.parseInt(auxdata[0]);
    partida[k].fase = Integer.parseInt(auxdata[1]);
    partida[k].players[0] = Integer.parseInt(auxdata[2]);
    partida[k].players[1] = Integer.parseInt(auxdata[3]);
    partida[k].players[2] = Integer.parseInt(auxdata[4]);
    partida[k].players[3] = Integer.parseInt(auxdata[5]);
    partida[k].ganador = Integer.parseInt(auxdata[6]);
    partida[k].next = Integer.parseInt(auxdata[7]);
  }
}


void generarAleatorio(){ //Emparejamientos aleatorios
  boolean[] checklist = new boolean[25];
  for(int a=0;a<checklist.length;a++){
    checklist[a]=false;
  }
  int index=int(random(0,25));
  for(int b=1;b<13;b++){
    for(int c=0;c<2;c++){
      while(checklist[index]==true)index=int(random(0,25));
      checklist[index]=true;
      partida[b].players[c]=index+1;
    }
    partida[b].ganador = 0;
    guardarPartida(b);
  }
  while(checklist[index]==true)index=int(random(0,25));
  checklist[index]=true;
  partida[12].players[2]=index+1;
  guardarPartida(12);
  
  for(int d = 13; d < partida.length; d++){
    partida[d].ganador = 0;
    for(int e = 0; e < 4; e++){
      partida[d].players[e] = 0;
    }
    guardarPartida(d);
  }
}

void actualizaGanadores(){ //Comprueba los ganadores de cada partida y los pasa a la siguiente fase
  for(int c = 1; c < 19; c++){
    if(partida[c].ID % 2 != 0){
      if(partida[c].ganador == 0){partida[partida[c].next].players[0] = 0;guardarPartida(partida[partida[c].next].ID);}
      if(partida[c].ganador != 0){
        partida[partida[c].next].players[0] = partida[c].players[partida[c].ganador-1];
        //println("actualizado de"+ partida[c].ID + " a "+ partida[c].next + " nuevo valor "+partida[partida[c].next].players[0]);
        guardarPartida(partida[partida[c].next].ID);
      }
    }
    if(partida[c].ID % 2 == 0){
      if(partida[c].ganador == 0){partida[partida[c].next].players[1] = 0;guardarPartida(partida[partida[c].next].ID);}
      if(partida[c].ganador != 0){
        partida[partida[c].next].players[1] = partida[c].players[partida[c].ganador-1];
        //println("actualizado de"+ partida[c].ID + " a "+ partida[c].next + " nuevo valor "+partida[partida[c].next].players[0]);
        guardarPartida(partida[partida[c].next].ID);
      }
    }
  }
  if(partida[19].ganador ==0 ) {partida[partida[19].next].players[0] = 0;guardarPartida(partida[partida[19].next].ID);}
  if(partida[19].ganador !=0 ){ 
    partida[partida[19].next].players[0] = partida[19].players[partida[19].ganador-1];
    guardarPartida(partida[partida[19].next].ID);
    //println("actualizado de"+ partida[19].ID + " a "+ partida[19].next + " nuevo valor "+partida[partida[19].next].players[0]);
  }
  if(partida[20].ganador ==0 ){ partida[partida[20].next].players[1] = 0; guardarPartida(partida[partida[20].next].ID);}
  if(partida[20].ganador !=0 ){
    partida[partida[20].next].players[1] = partida[20].players[partida[20].ganador-1];
    guardarPartida(partida[partida[20].next].ID);
    //println("actualizado de"+ partida[20].ID + " a "+ partida[20].next + " nuevo valor "+partida[partida[20].next].players[1]);
  }
  if(partida[21].ganador ==0 ){ partida[partida[21].next].players[2] = 0; guardarPartida(partida[partida[21].next].ID);}
  if(partida[21].ganador !=0 ){
    partida[partida[21].next].players[2] = partida[21].players[partida[21].ganador-1];
    guardarPartida(partida[partida[21].next].ID);
    //println("actualizado de"+ partida[19].ID + " a "+ partida[19].next + " nuevo valor "+partida[partida[19].next].players[2]);
  }
}