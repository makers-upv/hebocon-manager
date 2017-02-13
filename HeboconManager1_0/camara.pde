//Este archivo pertenece a Hebocon Manager 1_0

void datosCamaras(){
  
  /* Obtenemos una lista de las cámaras disponibles
     la lista de nombres está en flagcamaraTitulo 
     
     NOTA: si una cámara tiene varias resoluciones
           disponibles, se consideran varias cámaras
           distintas.
  */

  String name, resW, resH, fps;

  for(int i=0; i < cameras.length; i++){
    String[] datos = camaraInfo(i);
    flag.camaraTitulo[i] = datos[0] + "   " + datos[1] + "x" + datos[2] + "   " + datos[3] + "FPS" ;
  }

}



String[] camaraInfo (int index){
  
    /* De cada camara obtenemos varios datos:
        - nombre {name}
        - resolución (ancho y alto) {resW, resH}
        - FPS {fps}
    */
    
  //name=XXX,size=XXXxYYY,fps=XX  
  String[] items1 = split(cameras[index],',');
  String[] itemsName = split(items1[0],'=');
  String[] itemsRes1 = split(items1[1],'=');
  String[] itemsRes2 = split(itemsRes1[1],'x');
  String[] items_Fps = split(items1[2],'=');
  
  String name = itemsName[1];
  String resW = itemsRes2[0];
  String resH = itemsRes2[1];
  String fps  = items_Fps[1];
  
  String[] solucion = {name, resW, resH, fps};
  return solucion;
  
}