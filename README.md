# Hebocon Manager
Written in Processing 3 for managing the Valencia Hebocon Tournament 2017

La aplicación permite:
  * 25+ participantes.
  * Multipantalla, ventana separada para proyectar.
  * Proyectar cronómetro y nombres de los participantes.
  * Proyectar video de fondo usando webcam.
  * Logos personalizables.
  * Partidas hasta 4 jugadores.
  * Generar emparejamientos automáticamente.
  * Editar los emparejamientos durante el torneo.

***


### Cómo incluir los nombres de los participantes
En el archivo de texto `/data/Participantes.txt`

   Nota. Incluir un nombre por línea. Debe haber al menos 25 nombres *(aún tengo que arreglar esto)*

***


### Cómo cambiar los logos/imágenes de fondo
Editar las imágenes PNG en la carpeta `/data/backgrounds`


***


### Mini tutorial
#### Control de partida
Para modificar el tiempo de ronda, escribir el número, `Aplicar` y `Reiniciar`.

El icono de la campana sólo hace sonar la campana.

Se puede seleccionar los jugadores que se muestran en `Modo PARTIDA`


#### Configurar video
Se puede proyectar imagen desde webcam en lugar del logo. Pulsa `Actualizar` para detectar las cámaras y selecciona una. En la parte inferior aparecerá una casilla para activar/desactivar el video.


#### Próximo juego
Se puede seleccionar los jugadores que se muestran en `Modo Próximo Juego`

Pulsar `Aplicar a Partida Actual` para copiar los datos a la pestaña **Control de partida**


#### Programar torneo
Permite editar las partidas y guardarlas en la base de datos local.

Pulsar `Guardar y enviar a Próximo Juego` para copiar los datos a la pestaña **Próximo juego**


#### Generar nuevo torneo
Genera emparejamientos aleatorios, borrando el torneo actual.


***


#### Workflow, dinámica de uso en competición
Una vez generado el torneo,

**Programar torneo** --> `Partida siguiente` --> `Guardar y enviar a Próximo Juego`

**Próximo juego** --> `Enviar a partida Actual`

**Partida actual** --> Lanzar el cronómetro

**Programar torneo** --> Anotar ganador


***

##### Plugins Processing
Para poder ejecutar el hebocon manager se requiere de 3 pluggins de Processing:

**Sound by The Processing Foundation
**Video by The Processing Foundation
**G4P by Peter Lager

Instalar desde Sketch -> Importar Librería -> Añadir Librería


***

##### To do list
  * Eliminar el mínimo de 25 participantes
  * Guardar múltiples torneos
  * Notificar confirmación antes de reiniciar el torneo
  * Mejoras en el workflow del programa
  
  
***
  
  
2017 Héctor-G.

MakersUPV
