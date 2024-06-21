//link al video: https://youtu.be/LE5z2kGCjuw
//DATOS DEL ALUMNO:
//NOMBRE: Uma Lara Feoli
//COMISION: Comision 3
//LEGAJO: 119020/6

//VARIABLES
PImage img;
int cantX = 3;
int cantY = 3;
int estado;

color TonoAzul;
color TonoOscuro;

void setup () {
  size (800, 400);
  img = loadImage ("F_50.jpeg");
  
  estado = 1;
}

void draw () {
  //aplica funcion con parametros que no retorna valor
  Fondo (125);
  image (img, 0, 0, 400, 400);
  
  //aplica funcion con parametros que si retorna valor
  ImprimirEstadoMouse(mousePressed);
  
  //asignar de valores
  TonoAzul = color (37, 40, 183);
  TonoOscuro = color (6, 13, 29);
  
  //ESTADO 1
  if (estado == 1) {
    EstadoUno();
  }
  
  //ESTADO 2
  else if (estado == 2) {
    EstadoDos();
  }
  
  //ESTADO 3
  else if (estado == 3) {
    EstadoTres();
  }
  
  //ESTADO 4
  else if (estado == 4) {
    EstadoCuatro();
  }
  
  //ESTADO 5
  else if (estado == 5) {
    EstadoCinco();
  }
  
  //ESTADO 6
  else if (estado == 6) {
    EstadoSeis();
  }
}

//EVENTO
void mousePressed () {
  estado = estado+1;
  
  if (estado == 7) {
   estado = 1; 
  }
}
