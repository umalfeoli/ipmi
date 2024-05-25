//DATOS DEL ALUMNO:
//NOMBRE: Uma Lara Feoli
//COMISION: Comision 3
//LEGAJO: 119020/6


//VARIABLES
int estado;
int contador;
float posX, posY, pos2Y;
float opacidad = 255;
String texto1, texto2, texto3, texto4;
PImage img1, img2, img3, img4;
PFont nuevoFont;
color relleno;

void setup () {
  size (640,480);
  
  estado = 1;
  contador = 0;
  posX = 20;
  posY = 50; 
  pos2Y = 360;
  
  texto1 = "Imagine Van Gogh";
  texto2 = "Esta obra fue creada y organizada por \nJulien Baron junto a Annabelle Mauger, \nambos oriundos de Francia";
  texto3 = "Se ubico en Argentina en el Pabellón Frers de\nLa Rural del 16 de febrero hasta el 17 de abril.\nActualmente esta obra no se encuentra\nmás en el país.";
  texto4 = "La obra ocupa unos 700 metros\ny reúne 200 obras del artista.\nTambien utiliza técnicas avanzadas de\nmultiproyección y audio envolvente,\nlo que permite al espectador sumergirse\nen el corazón de las obras del artista.";
  
  img1 = loadImage ("imagen 1.jpg");
  img2 = loadImage ("autores.jpg");
  img3 = loadImage ("larural.jpg");
  img4 = loadImage ("imagen 2.jpg");
  
  nuevoFont = loadFont ("DejaVuSerif.vlw");
}

void draw () {
  println ("estado =", estado + 1);
  textFont (nuevoFont);
  textAlign (LEFT,LEFT);
  relleno = color (random (255));
  
  //pantalla 1
  if (estado == 1) {
    image (img1, 0, 0, width, height);
    fill (map (opacidad, 0, 255, 255, 0));
    textSize (map(opacidad, 255, 0, 1, 35));
    text (texto1, posX, posY);
    
    opacidad -= 3;
    if (opacidad <= 0) {
      estado = 1;
      contador = 0;
      posX = 20;
      posY = 50;
      opacidad = 255;
    }
      //cambio estado 
      contador = contador + 1;
      if (contador >= 80) {
        estado = estado + 1;
        contador = 0;
        posX = 20;
        posY = 50;
      }
  }
  //transicion 1-2
  else if (estado == 2) {
     image (img1, 0, 0, width, height);
     fill (255);
     text (texto1, posX, posY);
     
     //cambio de estado 
     posX += 5;
     if (posX >= width) {
      estado = estado + 1;
      contador = 0;
      posX = 20;
      posY = 50;
     }
  }
  //pantalla 2, autores
  else if (estado == 3) {
    image (img2, 0, 0, width, height);
    fill (255);
    textSize (25);
    text (texto2, posX, posY);
    
    //cambio de estado 
    contador = contador + 1;
    if (contador >= 80) {
     estado = estado+1;
     contador = 0;
    }
  } 
  //transicion 2-3
  else if (estado == 4) {
     image (img2, 0, 0, width, height);
     fill (255);
     textSize (25);
     text (texto2, posX, posY);
     
     //cambio de estado 
     posY += 5;
     if (posY >= height) {
      estado = estado + 1;
      contador = 0;
      posX = 20;
      posY = 50;
     }
  }
  //pantalla 3, lugar
  else if (estado == 5) {
    image (img3, 0, 0, width, height);
    fill (255, 0, 0);
    textSize (25);
    text (texto3, posX, pos2Y);
    
    //cambio de estado 
    contador = contador + 1;
    if (contador >= 80) {
     estado = estado+1;
     contador = 0;
    }
  } 
  //transicion 3-4
  else if (estado == 6) {
     image (img3, 0, 0, width, height);
     fill (255, 0, 0);
     textSize (25);
     text (texto3, posX, pos2Y);
     
     //cambio de estado 
     pos2Y -= 5;
     if (pos2Y <= 0) {
      estado = estado + 1;
      contador = 0;
      posX = 20;
      pos2Y = 360;
     }
  }
  //pantalla 4, info (animacion)
  else if (estado == 7) {
    image (img4, 0, 0, width, height);
    fill (255);
    textSize (map(opacidad, 255, 0, 1, 25));
    text (texto4, posX, posY);
    
    opacidad -= 8;
    if (opacidad  <= 0) {
      estado = 8;
      contador = 0;
      posX = 20;
      posY = 50;
      opacidad = 255;
    }
    
    contador = contador + 1;
    if (contador >= 80) {
     estado = estado+1;
     contador = 0;
    }
  }
  //pantalla 5, info y boton de regreso al inicio
    else if (estado == 8) {
    image (img4, 0, 0, width, height);
    fill (255);
    textSize (25);
    text (texto4, posX, posY);
    
    fill (255);
    rect (265, 400, 150, 50);
    fill (0);
    textSize (15);
    text ("volver al inicio", 285, 430);
  }
}

void mousePressed () {
  if (estado == 8) {
   if (mouseX > 265 && mouseX < 265 + 150 && mouseY > 400 && mouseY < 400 + 50) {
     estado = 1;
   }
  }
}
