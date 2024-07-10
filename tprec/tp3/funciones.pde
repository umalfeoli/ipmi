//FUNCIONES QUE SI RETRONAN VALOR
color dameAzul () {
  return color (37, 40, 183);
}

color dameNegro () {
  return color (6, 13, 29);
  }


//FUNCIONES QUE NO RETORNAN VALOR
void fondo (float tonoGris) {
  background (tonoGris);
}

void imprimirEstadoMouse(boolean presionado) {
  if (presionado) {
    println("mouse presionado: " + presionado);
  }
}

//FUNCIONES (CICLOS FOR)
void estadosCicloFor () {
  //asignar valores
  float modX = 400/cantX;
  float modY = 400/cantY;
  
  for (int j=0; j<cantY; j++) {
    for (int i=0; i<cantX; i++) {
      
      
      //ESTADO 1 (aplica funciones que retornan valor)
      if (estado == 1) {
      //datos rect
      noStroke();
      
      if ((i+j)%2==0) {
        fill (dameAzul());
      } else {
       fill (dameNegro()); 
      }
      
    rect (400+i*modX, j*modY, 150, 150);
    
    //datos ellipse
    noStroke ();
    
    if ((i+j)%2==0) {
        fill (dameNegro());
      } else {
       fill (dameAzul()); 
      }
    
    ellipse (400+i*modX+modX/2, j*modY+modY/2, 133, 133);
      }
      
      
      //ESTADO 2 (aplica funciones que retornan valor)
      if (estado == 2) {
      //datos rect
      noStroke();
      
      if ((i+j)%2==0) {
        fill (dameNegro());
      } else {
       fill (dameAzul()); 
      }
      
    rect (400+i*modX, j*modY, 150, 150);
    
    //datos ellipse
    noStroke ();
    
    if ((i+j)%2==0) {
        fill (dameAzul());
      } else {
       fill (dameNegro()); 
      }
    
    ellipse (400+i*modX+modX/2, j*modY+modY/2, 133, 133);
      }
      
      
      //ESTADO 3
      if (estado == 3) {
      //datos rect
      noStroke();
      
      if ((i+j)%2==0) {
        fill (0, 0, map (i, cantX-1, 0, 255, 50));
      } else {
       fill (map(i, 0, cantX-1, 50, 255), 0, 0);
      }
      
    rect (400+i*modX, j*modY, 150, 150);
    
    //datos ellipse
    noStroke ();
    
    if ((i+j)%2==0) {
       fill (map(i, 0, cantX-1, 50, 255), 0, 0);
      } else {
       fill (0, 0, map (i, cantX-1, 0, 255, 50)); 
      }
    
    ellipse (400+i*modX+modX/2, j*modY+modY/2, 133, 133);
      }
      
      
      //ESTADO 4
      if (estado == 4) {
      //datos rect
      noStroke();
      
      if ((i+j)%2==0) {
       fill (map(i, 0, cantX-1, 50, 255), 0, 0);
      } else {
       fill (0, 0, map (i, cantX-1, 0, 255, 50));
      }
      
    rect (400+i*modX, j*modY, 150, 150);
    
    //datos ellipse
    noStroke ();
    
    if ((i+j)%2==0) {
       fill (0, 0, map (i, cantX-1, 0, 255, 50));
      } else {
       fill (map(i, 0, cantX-1, 50, 255), 0, 0); 
      }
    
    ellipse (400+i*modX+modX/2, j*modY+modY/2, 133, 133);
      }
    }
  }
}
