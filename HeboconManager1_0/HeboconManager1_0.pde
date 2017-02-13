/*==================================================
   HEBOCON MANAGER 1.0
   Aplicación para gestionar la competición
   2017 Héctor Guiñón
   Makers UPV
  ==================================================
*/
//**********  BIBLIOTECAS  *************************
// Usamos las bibliotecas audio y video estandar de Processing
import processing.video.*;
import processing.sound.*;
// G4P para la interfaz gráfica
import g4p_controls.*;


//**********  VARIABLES  ***************************

public final int MAX_PLAYERS = 100; //Por ahora el tope es 25
public final int TWEAKFPS = 30; //Bajarlo si la cuenta atrás va muy lenta
public final int DEFAULT_PLAYERS_PER_ROUND = 2;
public final float DEFAULT_ROUND_TIME = 60.0;
public int[] etapa = {0,12,6,3,1}; //Nº partidas por fase


public String listaP[]; //Lista de los participantes
public String texto1; //texto auxiliar
public String[] selecJugador = new String[MAX_PLAYERS];

public torneo[] partida = new torneo[23]; //Nº de partidas en la competición
public String[] ganador = {"Nadie","J1: Nadie","J2: Nadie","J3: Nadie","J4: Nadie"};
public String[] partidaIDs = new String[partida.length];


public Capture cam; //Objeto camara
public String[] cameras; //Lista de camaras disponibles

public PFont myfont; // Una fuente para el texto

public flagContainer flag; // Aqui están todos los flags del programa

//Cargo archivos de imagen
public PImage logo, marcador, proxima;
public PImage[] numerosN = new PImage[10];
public PImage[] numerosR = new PImage[10];
public PImage[] dot = new PImage[2];
public PImage[] countdown = new PImage[4];
public PImage[] nombres = new PImage[MAX_PLAYERS];
public PImage[] arbol = new PImage[2];
public PImage loading;

//Cargo archivos de audio
public SoundFile audio01;
public SoundFile audio02;
public SoundFile audio03;

//Imagenes auxiliares
public PGraphics arbolG[] = new PGraphics[2];
public PGraphics etiquetasNumeros[] = new PGraphics[partida.length];

//**********  SETUP PRINCIPAL  ***********************
public void setup(){
  
  size(640, 480, JAVA2D); //Poner resolución menor que la de la cámara (aun no se por qué, es un bug)
  //surface.setResizable(true); // Se puede maximizar/reescalar con el ratón :D
  loading = loadImage("/data/images/backgrounds/logoLoading.png");
  image(loading,0,0,width, height);
  
  flag = new flagContainer();
  flag.reset();  // resetea los flags
  
  audio01 = new SoundFile(this, "/audio/sound01.mp3");
  audio02 = new SoundFile(this, "/audio/sound02.mp3");
  audio03 = new SoundFile(this, "/audio/sound03.mp3");
  
  myfont = createFont("SansSerif.bold", 32);
  
  cargarImagenes(); //el nombre lo dice todo ;)
  surface.setResizable(true);
  delay(5000); //Perdón por el delay pero quería que se viese la pantalla de carga (ô_ô")

  listaP = loadStrings("Participantes.txt");//Cargar la lista con los participantes
  arbolG[0] = createGraphics(800 ,600, JAVA2D); //Diagrama del torneo parte1
  arbolG[1] = createGraphics(800 ,600, JAVA2D); //Diagrama del torneo parte2
  cargarLista();
  crearEtiquetas();
  crearEtiquetasNumeros();
  
  generarTorneo();
  cargarPartida();
  
  createGUI(); //crea la interfaz gráfica
  customGUI(); //por si queremos añadir cosicas personalizadas
  
}


//**********  DRAW VENTANA PROYECTOR  ********************
public void draw(){
  frameRate(15);

  marcador(); //dibuja el GUI con el marcador //<>//
}

// Use this method to add additional statements to customise the GUI controls
public void customGUI(){
  
  //Configurar los elementos de G4P
  dropList4.setVisible(false);
  dropList5.setVisible(false);
  dropList8.setVisible(false);
  dropList9.setVisible(false);
  label17.setVisible(false);
  label18.setVisible(false);
  etiquetas.setVisible(false);
  checkbox4.setVisible(false);
    window3.setVisible(false);
  button1.setVisible(false);
  
  dropList2.setItems(selecJugador,0);
  dropList3.setItems(selecJugador,0);
  dropList4.setItems(selecJugador,0);
  dropList5.setItems(selecJugador,0);
  
  dropList6.setItems(selecJugador,0);
  dropList7.setItems(selecJugador,0);
  dropList8.setItems(selecJugador,0);
  dropList9.setItems(selecJugador,0);

  dropList11.setItems(selecJugador,0);
  dropList12.setItems(selecJugador,0);
  dropList13.setItems(selecJugador,0);
  dropList14.setItems(selecJugador,0);
  
  dropList10.setItems(partidaIDs,0);
  dropList15.setItems(ganador,0);
}
