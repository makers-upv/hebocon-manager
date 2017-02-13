//Este archivo pertenece a Hebocon Manager 1_0

public class flagContainer{
  //La mayoria de variables se guardan aquí
  int displayMode; //(1)-partida, (2)-logo, (3)-próxima
  
  boolean videoON;
  boolean audioON;
  boolean countdownON;
  
  boolean cronoInicio;
  boolean cronoStart;
  boolean cronoStop;
  boolean cronoReset;
  boolean cronoFinish;
  int cronoStatus; // 0 inicial, 1 en marcha, 2 pausado
  float cronoTime;
  float configTime;
  
  String camaraName;
  String camaraResW;
  String camaraResH;
  String camaraFps; 
  String[] camaraTitulo = Capture.list();
  boolean camaraHayCamara;
  
  boolean timerAnim;
  int contNum;
  int animFrames;
  
  int numPlayers;
  int numPlayersP;
  int currentID;
  int nextID;
  
  int offsetY;
  
  void reset(){ //Definir valores por defecto
    
    this.displayMode = 2;
    
    this.videoON = false;
    this.audioON = true;
    this.countdownON = true;
    
    this.cronoInicio = false;
    this.cronoStart = false;
    this.cronoStop = true;
    this.cronoReset = false;
    this.cronoFinish = false;
    this.cronoStatus = 0;
    this.cronoTime = DEFAULT_ROUND_TIME;
    
    this.configTime = DEFAULT_ROUND_TIME;
    
    this.camaraHayCamara = false;
    
    this.timerAnim = false;
    this.contNum = 3;
    this.animFrames = 0;
    
    this.numPlayers = DEFAULT_PLAYERS_PER_ROUND;
    this.numPlayersP = DEFAULT_PLAYERS_PER_ROUND;
    this.currentID = 0;
    this.nextID = 0;
    this.offsetY = 0;
  }
}