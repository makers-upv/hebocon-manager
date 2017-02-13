/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:control:670780:
  appc.background(230);
  appc.frameRate(15);
  
} //_CODE_:control:670780:

public void panel3_Click1(GPanel source, GEvent event) { //_CODE_:panel3:946865:
  //println("panel3 - GPanel >> GEvent." + event + " @ " + millis());
  //PANEL CONTROL DE PARTIDA
} //_CODE_:panel3:946865:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:256670:
  //println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  //INPUTBOX CON EL TIEMPO DE RONDA
} //_CODE_:textfield1:256670:

public void button6_click1(GButton source, GEvent event) { //_CODE_:button6:560892:
  //println("button6 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON APLICAR TIEMPO DE RONDA
  try{
        flag.configTime =  Float.parseFloat(textfield1.getText());
        if(flag.configTime >= 100)flag.configTime = 99.9;
  }catch(Exception e){}
} //_CODE_:button6:560892:

public void button7_click1(GButton source, GEvent event) { //_CODE_:button7:740840:
  //println("button7 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON START
  if(flag.displayMode == 1){
    flag.cronoStart = true;
    flag.cronoStop = false;
    flag.cronoReset = false;
  }
} //_CODE_:button7:740840:

public void button8_click1(GButton source, GEvent event) { //_CODE_:button8:480641:
  //println("button8 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON STOP
  flag.cronoStart = false;
  flag.cronoStop = true;
  flag.cronoReset = false;
} //_CODE_:button8:480641:

public void button9_click1(GButton source, GEvent event) { //_CODE_:button9:335283:
  //println("button9 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON RESET
  flag.cronoStart = false;
  flag.cronoStop = false;
  flag.cronoReset = true;
} //_CODE_:button9:335283:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:295690:
  //println("checkbox1 - GCheckbox >> GEvent." + event + " @ " + millis());
  //CHECKBOX AUDIO ON
    if (checkbox1.isSelected() == true) {
      flag.audioON = true;
    }
    else flag.audioON = false;
} //_CODE_:checkbox1:295690:

public void checkbox3_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox3:702761:
  //println("checkbox3 - GCheckbox >> GEvent." + event + " @ " + millis());
  //VER CUENTA ATRAS
  if (checkbox3.isSelected() == true) {
      flag.countdownON = true;
    }
    else {flag.countdownON = false;}
  
} //_CODE_:checkbox3:702761:

public void dropList2_click1(GDropList source, GEvent event) { //_CODE_:dropList2:809396:
  //println("dropList2 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER1 PARTIDA ACTUAL
} //_CODE_:dropList2:809396:

public void dropList3_click1(GDropList source, GEvent event) { //_CODE_:dropList3:462502:
  //println("dropList3 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 2 PARTIDA ACTUAL
} //_CODE_:dropList3:462502:

public void dropList4_click1(GDropList source, GEvent event) { //_CODE_:dropList4:285209:
  //println("dropList4 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 3 PARTIDA ACTUAL
} //_CODE_:dropList4:285209:

public void dropList5_click1(GDropList source, GEvent event) { //_CODE_:dropList5:493006:
  //println("dropList5 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 4 PARTIDA ACTUAL
} //_CODE_:dropList5:493006:

public void option3_clicked1(GOption source, GEvent event) { //_CODE_:option3:892214:
  //println("option3 - GOption >> GEvent." + event + " @ " + millis());
  //PARTIDA ACTUAL SELEC. 2 PLAYER
  dropList2.setVisible(true);
  dropList3.setVisible(true);
  dropList4.setVisible(false);
  dropList5.setVisible(false);
  flag.numPlayers = 2;
} //_CODE_:option3:892214:

public void option4_clicked1(GOption source, GEvent event) { //_CODE_:option4:517072:
  //println("option4 - GOption >> GEvent." + event + " @ " + millis());
  //PARTIDA ACTUAL SELEC. 3 PLAYER
  dropList2.setVisible(true);
  dropList3.setVisible(true);
  dropList4.setVisible(true);
  dropList5.setVisible(false);
  flag.numPlayers = 3;
} //_CODE_:option4:517072:

public void option5_clicked1(GOption source, GEvent event) { //_CODE_:option5:488207:
  //println("option5 - GOption >> GEvent." + event + " @ " + millis());
  //PARTIDA ACTUAL SELEC. 4 PLAYER
  dropList2.setVisible(true);
  dropList3.setVisible(true);
  dropList4.setVisible(true);
  dropList5.setVisible(true);
  flag.numPlayers = 4;
} //_CODE_:option5:488207:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:600672:
  //println("button1 - GButton >> GEvent." + event + " @ " + millis());
  //PARTIDA ACTUAL RECARGA LISTA JUGADORES
  cargarLista();
  crearEtiquetas();
  dropList2.setItems(selecJugador,0);
  dropList3.setItems(selecJugador,0);
  dropList4.setItems(selecJugador,0);
  dropList5.setItems(selecJugador,0);
} //_CODE_:button1:600672:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:663501:
  //println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
  //CAMPANA
  if(flag.audioON) audio03.play();
} //_CODE_:imgButton1:663501:

public void panel4_Click1(GPanel source, GEvent event) { //_CODE_:panel4:624918:
  //println("panel4 - GPanel >> GEvent." + event + " @ " + millis());
  //PANEL CONFIGURAR CAMARA
} //_CODE_:panel4:624918:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:dropList1:809096:
  //println("dropList1 - GDropList >> GEvent." + event + " @ " + millis());
  //LISTA CON LAS CAMARAS
  String[] info = camaraInfo(dropList1.getSelectedIndex());
  flag.camaraName = info[0];
  flag.camaraResW = info[1];
  flag.camaraResH = info[2];
  flag.camaraFps  = info[3];
  println(flag.camaraName + "  " + flag.camaraResW + "  " + flag.camaraResH + "  " + flag.camaraFps);
  
  if(flag.camaraHayCamara == true) cam.stop();
  cam = new Capture(this, Integer.parseInt(flag.camaraResW), Integer.parseInt(flag.camaraResH), flag.camaraName, Integer.parseInt(flag.camaraFps));
  cam.start();
  flag.camaraHayCamara = true;
  checkbox4.setVisible(true);
} //_CODE_:dropList1:809096:

public void button10_click1(GButton source, GEvent event) { //_CODE_:button10:405764:
  //println("button10 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON ACTUALIZAR LISTA CAMARAS
  cameras = Capture.list();
  datosCamaras();
  dropList1.setItems(flag.camaraTitulo,0);
} //_CODE_:button10:405764:

public void option1_clicked1(GOption source, GEvent event) { //_CODE_:option1:641871:
  //println("option1 - GOption >> GEvent." + event + " @ " + millis());
  //OPCION MODO PARTIDA
  flag.displayMode = 1;
} //_CODE_:option1:641871:

public void option2_clicked1(GOption source, GEvent event) { //_CODE_:option2:704345:
  //println("option2 - GOption >> GEvent." + event + " @ " + millis());
  //OPCION MODO LOGO
  flag.displayMode = 2;
  flag.cronoStart = false;
  flag.cronoStop = true;
  flag.cronoReset = false;
} //_CODE_:option2:704345:

public void option6_clicked1(GOption source, GEvent event) { //_CODE_:option6:504467:
  //println("option6 - GOption >> GEvent." + event + " @ " + millis());
  //OPCION MODO PROXIMO JUEGO
  flag.displayMode = 3;
  flag.cronoStart = false;
  flag.cronoStop = true;
  flag.cronoReset = false;
} //_CODE_:option6:504467:

public void panel1_Click1(GPanel source, GEvent event) { //_CODE_:panel1:936528:
  //println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
  //PANEL PRÓXIMO JUEGO
} //_CODE_:panel1:936528:

public void option7_clicked1(GOption source, GEvent event) { //_CODE_:option7:351045:
  //println("option7 - GOption >> GEvent." + event + " @ " + millis());
  //PROXIMA PARTIDA SELEC. 2 PLAYER
  dropList6.setVisible(true);
  dropList7.setVisible(true);
  dropList8.setVisible(false);
  label17.setVisible(false);
  dropList9.setVisible(false);
  label18.setVisible(false);
  flag.numPlayersP = 2;
} //_CODE_:option7:351045:

public void option8_clicked1(GOption source, GEvent event) { //_CODE_:option8:238505:
  //println("option8 - GOption >> GEvent." + event + " @ " + millis());
  //PROXIMA PARTIDA SELEC. 3 PLAYER
  dropList6.setVisible(true);
  dropList7.setVisible(true);
  dropList8.setVisible(true);
  label17.setVisible(true);
  dropList9.setVisible(false);
  label18.setVisible(false);
  flag.numPlayersP = 3;
} //_CODE_:option8:238505:

public void option9_clicked1(GOption source, GEvent event) { //_CODE_:option9:324527:
  //println("option9 - GOption >> GEvent." + event + " @ " + millis());
  //PROXIMA PARTIDA SELEC. 4 PLAYER
  dropList6.setVisible(true);
  dropList7.setVisible(true);
  dropList8.setVisible(true);
  label17.setVisible(true);
  dropList9.setVisible(true);
  label18.setVisible(true);
  flag.numPlayersP = 4;
} //_CODE_:option9:324527:

public void dropList6_click1(GDropList source, GEvent event) { //_CODE_:dropList6:281130:
  //println("dropList6 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 1 PROXIMA PARTIDA
} //_CODE_:dropList6:281130:

public void dropList7_click1(GDropList source, GEvent event) { //_CODE_:dropList7:513049:
  //println("dropList7 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 2 PROXIMA PARTIDA
} //_CODE_:dropList7:513049:

public void dropList8_click1(GDropList source, GEvent event) { //_CODE_:dropList8:434489:
  //println("dropList8 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 3 PROXIMA PARTIDA
} //_CODE_:dropList8:434489:

public void dropList9_click1(GDropList source, GEvent event) { //_CODE_:dropList9:219071:
  //println("dropList9 - GDropList >> GEvent." + event + " @ " + millis());
  //DROPLIST PLAYER 4 PROXIMA PARTIDA
} //_CODE_:dropList9:219071:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:639237:
  //println("button2 - GButton >> GEvent." + event + " @ " + millis());
  //COPIAR PROXIMA PARTIDA A PARTIDA ACTUAL
  flag.numPlayers = flag.numPlayersP;
  flag.currentID = flag.nextID;
  label19.setText("Partida ID: " + flag.currentID);
  if(flag.currentID == 0) label19.setText("Partida ID: -");
  dropList2.setSelected(dropList6.getSelectedIndex()); 
  dropList3.setSelected(dropList7.getSelectedIndex());
  dropList4.setSelected(dropList8.getSelectedIndex());
  dropList5.setSelected(dropList9.getSelectedIndex());
  dropList2.setVisible(dropList6.isVisible());
  dropList3.setVisible(dropList7.isVisible());
  dropList4.setVisible(dropList8.isVisible());
  dropList5.setVisible(dropList9.isVisible());
  option3.setSelected(option7.isSelected());
  option4.setSelected(option8.isSelected());
  option5.setSelected(option9.isSelected());
  
} //_CODE_:button2:639237:

public void checkbox4_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox4:422489:
  //println("checkbox4 - GCheckbox >> GEvent." + event + " @ " + millis());
  //CHECKBOX VIDEO ON
  if(flag.camaraHayCamara == true){
    if (checkbox4.isSelected() == true) {
      flag.videoON = true;
      cam.start();
    }
    else{ flag.videoON = false;
    cam.stop();}
  }
  else checkbox4.setSelected(false);
} //_CODE_:checkbox4:422489:

public void panel2_Click1(GPanel source, GEvent event) { //_CODE_:panel2:654467:
  //println("panel2 - GPanel >> GEvent." + event + " @ " + millis());
  //PANEL PROGRAMAR TORNEO
} //_CODE_:panel2:654467:

public void dropList10_click1(GDropList source, GEvent event) { //_CODE_:dropList10:239419:
  //println("dropList10 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA ID LIST
  cargarPartida();
  dropList11.setSelected(partida[dropList10.getSelectedIndex()].players[0]);
  dropList12.setSelected(partida[dropList10.getSelectedIndex()].players[1]);
  dropList13.setSelected(partida[dropList10.getSelectedIndex()].players[2]);
  dropList14.setSelected(partida[dropList10.getSelectedIndex()].players[3]);
  ganador[1] = "J1: " + selecJugador[dropList11.getSelectedIndex()];
  ganador[2] = "J2: " + selecJugador[dropList12.getSelectedIndex()];
  ganador[3] = "J3: " + selecJugador[dropList13.getSelectedIndex()];
  ganador[4] = "J4: " + selecJugador[dropList14.getSelectedIndex()];
  dropList15.setItems(ganador,partida[dropList10.getSelectedIndex()].ganador);
} //_CODE_:dropList10:239419:

public void dropList11_click1(GDropList source, GEvent event) { //_CODE_:dropList11:328160:
  //println("dropList11 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA JUGADOR 1
  ganador[1] = "J1: " + selecJugador[dropList11.getSelectedIndex()];
  dropList15.setItems(ganador,0);
} //_CODE_:dropList11:328160:

public void dropList12_click1(GDropList source, GEvent event) { //_CODE_:dropList12:314565:
  //println("dropList12 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA JUGADOR 2
  ganador[2] = "J2: " + selecJugador[dropList12.getSelectedIndex()];
  dropList15.setItems(ganador,0);
} //_CODE_:dropList12:314565:

public void dropList13_click1(GDropList source, GEvent event) { //_CODE_:dropList13:993364:
  //println("dropList13 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA JUGADOR 3
  ganador[3] = "J3: " + selecJugador[dropList13.getSelectedIndex()];
  dropList15.setItems(ganador,0);
} //_CODE_:dropList13:993364:

public void dropList14_click1(GDropList source, GEvent event) { //_CODE_:dropList14:218081:
  //println("dropList14 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA JUGADOR 4
  ganador[4] = "J4: " + selecJugador[dropList14.getSelectedIndex()];
  dropList15.setItems(ganador,0);
} //_CODE_:dropList14:218081:

public void dropList15_click1(GDropList source, GEvent event) { //_CODE_:dropList15:927799:
  //println("dropList15 - GDropList >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA GANADOR
  partida[dropList10.getSelectedIndex()].ganador = dropList15.getSelectedIndex();
  guardarPartida(dropList10.getSelectedIndex());
  actualizaGanadores();
} //_CODE_:dropList15:927799:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:896920:
  //println("button4 - GButton >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA GUARDAR
  if(dropList10.getSelectedIndex()!=0){
    partida[dropList10.getSelectedIndex()].players[0]=dropList11.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[1]=dropList12.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[2]=dropList13.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[3]=dropList14.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].ganador=dropList15.getSelectedIndex();
    guardarPartida(dropList10.getSelectedIndex());
  }
} //_CODE_:button4:896920:

public void button5_click1(GButton source, GEvent event) { //_CODE_:button5:887649:
  //println("button5 - GButton >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA GUARDAR Y ENVIAR A PROXIMO JUEGO
  if(dropList10.getSelectedIndex()!=0){
    partida[dropList10.getSelectedIndex()].players[0]=dropList11.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[1]=dropList12.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[2]=dropList13.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].players[3]=dropList14.getSelectedIndex();
    partida[dropList10.getSelectedIndex()].ganador=dropList15.getSelectedIndex();
    guardarPartida(dropList10.getSelectedIndex());
    flag.nextID = dropList10.getSelectedIndex();
  }
  label14.setText("PARTIDA ID#"+partidaIDs[dropList10.getSelectedIndex()]);
  dropList6.setSelected(dropList11.getSelectedIndex());
  dropList7.setSelected(dropList12.getSelectedIndex());
  flag.numPlayersP = 2;
  dropList8.setVisible(false);
  dropList9.setVisible(false);
  if(dropList13.getSelectedIndex() != 0){
    dropList8.setSelected(dropList13.getSelectedIndex());
    option8.setSelected(true);
    flag.numPlayersP = 3;
    dropList8.setVisible(true);
  }
  if(dropList14.getSelectedIndex() != 0){
    dropList9.setSelected(dropList14.getSelectedIndex());
    option9.setSelected(true);
    flag.numPlayersP = 4;
    dropList9.setVisible(true);
  }
  
} //_CODE_:button5:887649:

public void button11_click1(GButton source, GEvent event) { //_CODE_:button11:583701:
  //println("button11 - GButton >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA RECARGAR DATOS
  cargarPartida();
} //_CODE_:button11:583701:

public void button13_click1(GButton source, GEvent event) { //_CODE_:button13:904398:
  //println("button13 - GButton >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA PARTIDA SIGUIENTE
  if(dropList10.getSelectedIndex() < partidaIDs.length)
  dropList10.setSelected(dropList10.getSelectedIndex()+1);
  cargarPartida();
  dropList11.setSelected(partida[dropList10.getSelectedIndex()].players[0]);
  dropList12.setSelected(partida[dropList10.getSelectedIndex()].players[1]);
  dropList13.setSelected(partida[dropList10.getSelectedIndex()].players[2]);
  dropList14.setSelected(partida[dropList10.getSelectedIndex()].players[3]);
  ganador[1] = "J1: " + selecJugador[dropList11.getSelectedIndex()];
  ganador[2] = "J2: " + selecJugador[dropList12.getSelectedIndex()];
  ganador[3] = "J3: " + selecJugador[dropList13.getSelectedIndex()];
  ganador[4] = "J4: " + selecJugador[dropList14.getSelectedIndex()];
  dropList15.setItems(ganador,partida[dropList10.getSelectedIndex()].ganador);
} //_CODE_:button13:904398:

public void button14_click1(GButton source, GEvent event) { //_CODE_:button14:691804:
  //println("button14 - GButton >> GEvent." + event + " @ " + millis());
  //EDITAR PARTIDA PARTIDA ANTERIOR
  if(dropList10.getSelectedIndex() > 1)
  dropList10.setSelected(dropList10.getSelectedIndex()-1);
  cargarPartida();
  dropList11.setSelected(partida[dropList10.getSelectedIndex()].players[0]);
  dropList12.setSelected(partida[dropList10.getSelectedIndex()].players[1]);
  dropList13.setSelected(partida[dropList10.getSelectedIndex()].players[2]);
  dropList14.setSelected(partida[dropList10.getSelectedIndex()].players[3]);
  ganador[1] = "J1: " + selecJugador[dropList11.getSelectedIndex()];
  ganador[2] = "J2: " + selecJugador[dropList12.getSelectedIndex()];
  ganador[3] = "J3: " + selecJugador[dropList13.getSelectedIndex()];
  ganador[4] = "J4: " + selecJugador[dropList14.getSelectedIndex()];
  dropList15.setItems(ganador,partida[dropList10.getSelectedIndex()].ganador);
} //_CODE_:button14:691804:

public void panel5_Click1(GPanel source, GEvent event) { //_CODE_:panel5:345808:
  //println("panel5 - GPanel >> GEvent." + event + " @ " + millis());
  //PANEL GENERAR NUEVO TORNEO
} //_CODE_:panel5:345808:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:607916:
  //println("button3 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON GENERAR TORNEO ALEATORIO
  generarTorneo();
  generarAleatorio();
} //_CODE_:button3:607916:

public void button12_click1(GButton source, GEvent event) { //_CODE_:button12:652619:
  //println("button12 - GButton >> GEvent." + event + " @ " + millis());
  //BOTON DISPLAY ARBOL
  crearEtiquetasNumeros();
  window3.setVisible(true);
  window3.frame.setResizable(true);
} //_CODE_:button12:652619:

public void timer2_Action1(GTimer source) { //_CODE_:timer2:912773:
  //println("timer2 - GTimer >> an event occured @ " + millis());
  //TIMER PARA EL CRONÓMETRO
  if(flag.cronoTime > 0){
    flag.cronoFinish = false;
    flag.cronoTime -= 0.1;
  }
  if(flag.cronoTime <= 0){
    if(flag.cronoFinish == false){
      if(flag.audioON == true) audio03.play();
      flag.cronoFinish = true;
    }
  }
} //_CODE_:timer2:912773:

public void timer1_Action1(GTimer source) { //_CODE_:timer1:386592:
  //println("timer1 - GTimer >> an event occured @ " + millis());
  //TIMER PARA LA CUENTA ATRÁS
  flag.timerAnim = true;
} //_CODE_:timer1:386592:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:etiquetas:465472:
  appc.background(230);
  appc.frameRate(15);
} //_CODE_:etiquetas:465472:

synchronized public void win_draw3(PApplet appc, GWinData data) { //_CODE_:window3:964764:
  appc.background(255);
  appc.frameRate(10);
  displayArbol();
  scrollDisplay();
} //_CODE_:window3:964764:

public void win_close3(GWindow window) { //_CODE_:window3:324444:
  //println("window3 - window closed at " + millis());
  window3.setVisible(false);
} //_CODE_:window3:324444:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Proyector");
  control = GWindow.getWindow(this, "Panel de Control", 0, 0, 640, 480, JAVA2D);
  control.noLoop();
  control.setActionOnClose(G4P.EXIT_APP);
  control.addDrawHandler(this, "win_draw2");
  label1 = new GLabel(control, 10, 5, 620, 30);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("PANEL DE CONTROL DE TORNEO");
  label1.setTextBold();
  label1.setOpaque(false);
  panel3 = new GPanel(control, 10, 40, 620, 300, "Control de partida");
  panel3.setCollapsed(true);
  panel3.setDraggable(false);
  panel3.setText("Control de partida");
  panel3.setTextBold();
  panel3.setOpaque(true);
  panel3.addEventHandler(this, "panel3_Click1");
  label4 = new GLabel(control, 10, 30, 100, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Tiempo de ronda");
  label4.setOpaque(false);
  textfield1 = new GTextField(control, 117, 30, 40, 20, G4P.SCROLLBARS_NONE);
  textfield1.setText("60.0");
  textfield1.setPromptText("60.0");
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  button6 = new GButton(control, 168, 30, 60, 20);
  button6.setText("Aplicar");
  button6.addEventHandler(this, "button6_click1");
  button7 = new GButton(control, 30, 110, 160, 80);
  button7.setText("INICIAR");
  button7.setTextBold();
  button7.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button7.addEventHandler(this, "button7_click1");
  button8 = new GButton(control, 230, 110, 160, 80);
  button8.setText("PARAR");
  button8.setTextBold();
  button8.setLocalColorScheme(GCScheme.RED_SCHEME);
  button8.addEventHandler(this, "button8_click1");
  button9 = new GButton(control, 430, 112, 160, 80);
  button9.setText("REINICIAR");
  button9.setTextBold();
  button9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button9.addEventHandler(this, "button9_click1");
  checkbox1 = new GCheckbox(control, 210, 64, 120, 20);
  checkbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("Sonido activado");
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  checkbox1.setSelected(true);
  checkbox3 = new GCheckbox(control, 391, 64, 150, 20);
  checkbox3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox3.setText("Cuenta inicial activada");
  checkbox3.setOpaque(false);
  checkbox3.addEventHandler(this, "checkbox3_clicked1");
  checkbox3.setSelected(true);
  label6 = new GLabel(control, 12, 202, 80, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("Jugadores");
  label6.setOpaque(false);
  dropList2 = new GDropList(control, 12, 220, 260, 120, 5);
  dropList2.setItems(loadStrings("list_809396"), 0);
  dropList2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  dropList2.addEventHandler(this, "dropList2_click1");
  dropList3 = new GDropList(control, 345, 220, 260, 120, 5);
  dropList3.setItems(loadStrings("list_462502"), 0);
  dropList3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  dropList3.addEventHandler(this, "dropList3_click1");
  dropList4 = new GDropList(control, 12, 250, 260, 120, 5);
  dropList4.setItems(loadStrings("list_285209"), 0);
  dropList4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  dropList4.addEventHandler(this, "dropList4_click1");
  dropList5 = new GDropList(control, 345, 250, 260, 120, 5);
  dropList5.setItems(loadStrings("list_493006"), 0);
  dropList5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  dropList5.addEventHandler(this, "dropList5_click1");
  togGroup2 = new GToggleGroup();
  option3 = new GOption(control, 106, 200, 40, 20);
  option3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option3.setText("2");
  option3.setOpaque(false);
  option3.addEventHandler(this, "option3_clicked1");
  option4 = new GOption(control, 149, 200, 40, 20);
  option4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option4.setText("3");
  option4.setOpaque(false);
  option4.addEventHandler(this, "option4_clicked1");
  option5 = new GOption(control, 193, 200, 40, 20);
  option5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option5.setText("4");
  option5.setOpaque(false);
  option5.addEventHandler(this, "option5_clicked1");
  togGroup2.addControl(option3);
  option3.setSelected(true);
  panel3.addControl(option3);
  togGroup2.addControl(option4);
  panel3.addControl(option4);
  togGroup2.addControl(option5);
  panel3.addControl(option5);
  button1 = new GButton(control, 510, 203, 88, 15);
  button1.setText("Actualizar lista");
  button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  imgButton1 = new GImageButton(control, 560, 30, 30, 30, new String[] { "campana01.png", "campana02.png", "campana01.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  label19 = new GLabel(control, 420, 200, 80, 20);
  label19.setText("ID Partida:");
  label19.setOpaque(false);
  panel3.addControl(label4);
  panel3.addControl(textfield1);
  panel3.addControl(button6);
  panel3.addControl(button7);
  panel3.addControl(button8);
  panel3.addControl(button9);
  panel3.addControl(checkbox1);
  panel3.addControl(checkbox3);
  panel3.addControl(label6);
  panel3.addControl(dropList2);
  panel3.addControl(dropList3);
  panel3.addControl(dropList4);
  panel3.addControl(dropList5);
  panel3.addControl(button1);
  panel3.addControl(imgButton1);
  panel3.addControl(label19);
  panel4 = new GPanel(control, 10, 80, 620, 300, "Configurar Video");
  panel4.setCollapsed(true);
  panel4.setDraggable(false);
  panel4.setText("Configurar Video");
  panel4.setTextBold();
  panel4.setOpaque(true);
  panel4.addEventHandler(this, "panel4_Click1");
  dropList1 = new GDropList(control, 10, 50, 550, 220, 10);
  dropList1.setItems(loadStrings("list_809096"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
  button10 = new GButton(control, 10, 270, 80, 20);
  button10.setText("Actualizar");
  button10.addEventHandler(this, "button10_click1");
  label3 = new GLabel(control, 9, 28, 139, 20);
  label3.setText("Cámara seleccionada");
  label3.setOpaque(false);
  panel4.addControl(dropList1);
  panel4.addControl(button10);
  panel4.addControl(label3);
  togGroup1 = new GToggleGroup();
  option1 = new GOption(control, 120, 450, 120, 20);
  option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option1.setText("Modo PARTIDA");
  option1.setTextBold();
  option1.setOpaque(false);
  option1.addEventHandler(this, "option1_clicked1");
  option2 = new GOption(control, 21, 450, 100, 20);
  option2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option2.setText("Sólo LOGO");
  option2.setTextBold();
  option2.setOpaque(false);
  option2.addEventHandler(this, "option2_clicked1");
  option6 = new GOption(control, 240, 450, 120, 20);
  option6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option6.setText("Próximo juego");
  option6.setTextBold();
  option6.setOpaque(false);
  option6.addEventHandler(this, "option6_clicked1");
  togGroup1.addControl(option1);
  togGroup1.addControl(option2);
  option2.setSelected(true);
  togGroup1.addControl(option6);
  label2 = new GLabel(control, 20, 422, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Proyectar");
  label2.setOpaque(false);
  panel1 = new GPanel(control, 10, 120, 620, 240, "Próximo juego");
  panel1.setCollapsed(true);
  panel1.setDraggable(false);
  panel1.setText("Próximo juego");
  panel1.setTextBold();
  panel1.setOpaque(true);
  panel1.addEventHandler(this, "panel1_Click1");
  label7 = new GLabel(control, 12, 32, 80, 20);
  label7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label7.setText("Jugadores");
  label7.setOpaque(false);
  togGroup3 = new GToggleGroup();
  option7 = new GOption(control, 100, 32, 40, 20);
  option7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option7.setText("2");
  option7.setOpaque(false);
  option7.addEventHandler(this, "option7_clicked1");
  option8 = new GOption(control, 140, 32, 40, 20);
  option8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option8.setText("3");
  option8.setOpaque(false);
  option8.addEventHandler(this, "option8_clicked1");
  option9 = new GOption(control, 180, 32, 40, 20);
  option9.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option9.setText("4");
  option9.setOpaque(false);
  option9.addEventHandler(this, "option9_clicked1");
  togGroup3.addControl(option7);
  option7.setSelected(true);
  panel1.addControl(option7);
  togGroup3.addControl(option8);
  panel1.addControl(option8);
  togGroup3.addControl(option9);
  panel1.addControl(option9);
  dropList6 = new GDropList(control, 50, 70, 240, 120, 5);
  dropList6.setItems(loadStrings("list_281130"), 0);
  dropList6.addEventHandler(this, "dropList6_click1");
  dropList7 = new GDropList(control, 320, 70, 240, 120, 5);
  dropList7.setItems(loadStrings("list_513049"), 0);
  dropList7.addEventHandler(this, "dropList7_click1");
  dropList8 = new GDropList(control, 50, 120, 240, 120, 5);
  dropList8.setItems(loadStrings("list_434489"), 0);
  dropList8.addEventHandler(this, "dropList8_click1");
  dropList9 = new GDropList(control, 320, 120, 240, 120, 5);
  dropList9.setItems(loadStrings("list_219071"), 0);
  dropList9.addEventHandler(this, "dropList9_click1");
  button2 = new GButton(control, 320, 190, 280, 30);
  button2.setText("Aplicar a partida actual");
  button2.addEventHandler(this, "button2_click1");
  label14 = new GLabel(control, 500, 32, 100, 20);
  label14.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label14.setText("PARTIDA ID#");
  label14.setOpaque(false);
  label15 = new GLabel(control, 20, 70, 20, 20);
  label15.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label15.setText("J1");
  label15.setOpaque(false);
  label16 = new GLabel(control, 570, 70, 20, 20);
  label16.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label16.setText("J2");
  label16.setOpaque(false);
  label17 = new GLabel(control, 20, 120, 20, 20);
  label17.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label17.setText("J3");
  label17.setOpaque(false);
  label18 = new GLabel(control, 570, 120, 20, 20);
  label18.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label18.setText("J4");
  label18.setOpaque(false);
  panel1.addControl(label7);
  panel1.addControl(dropList6);
  panel1.addControl(dropList7);
  panel1.addControl(dropList8);
  panel1.addControl(dropList9);
  panel1.addControl(button2);
  panel1.addControl(label14);
  panel1.addControl(label15);
  panel1.addControl(label16);
  panel1.addControl(label17);
  panel1.addControl(label18);
  checkbox4 = new GCheckbox(control, 516, 450, 120, 20);
  checkbox4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox4.setText("Video activado");
  checkbox4.setOpaque(false);
  checkbox4.addEventHandler(this, "checkbox4_clicked1");
  panel2 = new GPanel(control, 10, 160, 620, 240, "Programar torneo");
  panel2.setCollapsed(true);
  panel2.setDraggable(false);
  panel2.setText("Programar torneo");
  panel2.setTextBold();
  panel2.setOpaque(true);
  panel2.addEventHandler(this, "panel2_Click1");
  dropList10 = new GDropList(control, 10, 30, 100, 180, 8);
  dropList10.setItems(loadStrings("list_239419"), 0);
  dropList10.addEventHandler(this, "dropList10_click1");
  dropList11 = new GDropList(control, 140, 65, 200, 120, 5);
  dropList11.setItems(loadStrings("list_328160"), 0);
  dropList11.addEventHandler(this, "dropList11_click1");
  dropList12 = new GDropList(control, 360, 65, 200, 120, 5);
  dropList12.setItems(loadStrings("list_314565"), 0);
  dropList12.addEventHandler(this, "dropList12_click1");
  dropList13 = new GDropList(control, 140, 100, 200, 120, 5);
  dropList13.setItems(loadStrings("list_993364"), 0);
  dropList13.addEventHandler(this, "dropList13_click1");
  dropList14 = new GDropList(control, 360, 100, 200, 120, 5);
  dropList14.setItems(loadStrings("list_218081"), 0);
  dropList14.addEventHandler(this, "dropList14_click1");
  dropList15 = new GDropList(control, 400, 30, 200, 120, 5);
  dropList15.setItems(loadStrings("list_927799"), 0);
  dropList15.addEventHandler(this, "dropList15_click1");
  label8 = new GLabel(control, 120, 30, 60, 20);
  label8.setText("ID Partida");
  label8.setOpaque(false);
  label9 = new GLabel(control, 310, 30, 80, 20);
  label9.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label9.setText("Ganador");
  label9.setTextBold();
  label9.setOpaque(false);
  label10 = new GLabel(control, 110, 65, 20, 20);
  label10.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label10.setText("J1");
  label10.setOpaque(false);
  label11 = new GLabel(control, 110, 100, 20, 20);
  label11.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label11.setText("J3");
  label11.setOpaque(false);
  label12 = new GLabel(control, 570, 65, 20, 20);
  label12.setText("J2");
  label12.setOpaque(false);
  label13 = new GLabel(control, 570, 100, 20, 20);
  label13.setText("J4");
  label13.setOpaque(false);
  button4 = new GButton(control, 470, 140, 80, 20);
  button4.setText("Guardar");
  button4.addEventHandler(this, "button4_click1");
  button5 = new GButton(control, 320, 140, 120, 30);
  button5.setText("Guardar y enviar a Próximo juego");
  button5.addEventHandler(this, "button5_click1");
  button11 = new GButton(control, 110, 140, 90, 20);
  button11.setText("Recargar datos");
  button11.addEventHandler(this, "button11_click1");
  button13 = new GButton(control, 10, 105, 80, 30);
  button13.setText("Partida siguiente");
  button13.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button13.addEventHandler(this, "button13_click1");
  button14 = new GButton(control, 10, 65, 80, 30);
  button14.setText("Partida anterior");
  button14.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button14.addEventHandler(this, "button14_click1");
  panel2.addControl(dropList10);
  panel2.addControl(dropList11);
  panel2.addControl(dropList12);
  panel2.addControl(dropList13);
  panel2.addControl(dropList14);
  panel2.addControl(dropList15);
  panel2.addControl(label8);
  panel2.addControl(label9);
  panel2.addControl(label10);
  panel2.addControl(label11);
  panel2.addControl(label12);
  panel2.addControl(label13);
  panel2.addControl(button4);
  panel2.addControl(button5);
  panel2.addControl(button11);
  panel2.addControl(button13);
  panel2.addControl(button14);
  panel5 = new GPanel(control, 10, 200, 620, 60, "Generar nuevo torneo");
  panel5.setCollapsed(true);
  panel5.setDraggable(false);
  panel5.setText("Generar nuevo torneo");
  panel5.setTextBold();
  panel5.setOpaque(true);
  panel5.addEventHandler(this, "panel5_Click1");
  button3 = new GButton(control, 400, 30, 200, 20);
  button3.setText("Generar emparejamientos aleatorios");
  button3.addEventHandler(this, "button3_click1");
  label5 = new GLabel(control, 80, 30, 300, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("¡¡Al generar datos nuevos se borrará el torneo actual!!");
  label5.setOpaque(false);
  panel5.addControl(button3);
  panel5.addControl(label5);
  button12 = new GButton(control, 390, 450, 100, 20);
  button12.setText("Ver diagrama");
  button12.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button12.addEventHandler(this, "button12_click1");
  timer2 = new GTimer(this, this, "timer2_Action1", 100);
  timer1 = new GTimer(this, this, "timer1_Action1", 85);
  timer1.setInitialDelay(1);
  etiquetas = GWindow.getWindow(this, "Procesando", 0, 0, 400, 45, JAVA2D);
  etiquetas.noLoop();
  etiquetas.addDrawHandler(this, "win_draw1");
  window3 = GWindow.getWindow(this, "Torneo", 0, 0, 800, 600, JAVA2D);
  window3.noLoop();
  window3.addDrawHandler(this, "win_draw3");
  window3.addOnCloseHandler(this, "win_close3");
  control.loop();
  etiquetas.loop();
  window3.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow control;
GLabel label1; 
GPanel panel3; 
GLabel label4; 
GTextField textfield1; 
GButton button6; 
GButton button7; 
GButton button8; 
GButton button9; 
GCheckbox checkbox1; 
GCheckbox checkbox3; 
GLabel label6; 
GDropList dropList2; 
GDropList dropList3; 
GDropList dropList4; 
GDropList dropList5; 
GToggleGroup togGroup2; 
GOption option3; 
GOption option4; 
GOption option5; 
GButton button1; 
GImageButton imgButton1; 
GLabel label19; 
GPanel panel4; 
GDropList dropList1; 
GButton button10; 
GLabel label3; 
GToggleGroup togGroup1; 
GOption option1; 
GOption option2; 
GOption option6; 
GLabel label2; 
GPanel panel1; 
GLabel label7; 
GToggleGroup togGroup3; 
GOption option7; 
GOption option8; 
GOption option9; 
GDropList dropList6; 
GDropList dropList7; 
GDropList dropList8; 
GDropList dropList9; 
GButton button2; 
GLabel label14; 
GLabel label15; 
GLabel label16; 
GLabel label17; 
GLabel label18; 
GCheckbox checkbox4; 
GPanel panel2; 
GDropList dropList10; 
GDropList dropList11; 
GDropList dropList12; 
GDropList dropList13; 
GDropList dropList14; 
GDropList dropList15; 
GLabel label8; 
GLabel label9; 
GLabel label10; 
GLabel label11; 
GLabel label12; 
GLabel label13; 
GButton button4; 
GButton button5; 
GButton button11; 
GButton button13; 
GButton button14; 
GPanel panel5; 
GButton button3; 
GLabel label5; 
GButton button12; 
GTimer timer2; 
GTimer timer1; 
GWindow etiquetas;
GWindow window3;