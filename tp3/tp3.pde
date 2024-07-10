//link al video: https://youtu.be/UpD9Z5-z4U4
//DATOS DEL ALUMNO:
//NOMBRE: Uma Lara Feoli
//COMISION: Comision 3
//LEGAJO: 119020/6

//VARIABLES
PImage img;
int cantX = 3;
int cantY = 3;
int estado;
        
void setup () {
  size (800, 400);
  img = loadImage ("F_50.jpeg");
  
  estado = 1;
}

void draw () {
  //aplica funciones que no retornan valor
  fondo (125);
  imprimirEstadoMouse(mousePressed);
  
  image (img, 0, 0, 400, 400);
  
  //aplica el ciclo for y sus estados
  estadosCicloFor();
}

//EVENTO
void mousePressed () {
  estado = estado+1;
  
  if (estado == 5) {
   estado = 1; 
  }
}
