PImage imag0, imag1, imag2, imag3, imag4, imag5;
PFont fuente1, fuente2, fuente3;
int pantalla = 0;
int contador = 0;
float aparecer = 0;
float subir = 480, bajar = 0, avanzar = -140;
int tamPantallaX = 640, tamPantallaY = 480;
int tamBoton1 = 60, tamBoton2 = 30, tamBordeBoton = 3, puntas = 50;
int botonEnX1 = 290, botonEnY = 430;
int posTextoEnX1 = 320, posTextoEnY1 = 445;
int tamTexto = 54, tamTextoBoton = 12, tamTextoDiapo = 20;
color colorPantalla = color(0);
color colorBordeBoton = color(155);
color colorBoton = color(205);
color colorTextoBoton = color(155);
color colorTexto = color(255);
boolean mouseDentro = false;

void setup() {
   size (640, 480);
  imag0 = loadImage("imag0.png");
  imag1 = loadImage("imag1.png");
  imag2 = loadImage("imag2.png");
  imag3 = loadImage("imag3.png");
  imag4 = loadImage("imag4.png");
  imag5 = loadImage("imag5.png");
  fuente1 = createFont("SansSerif", 32);
  fuente2 = createFont("Serif", 32);
  fuente3 = createFont("Monospaced", 32);
  textFont(fuente1);
}

void draw() {
  background(colorPantalla);
  contador++;

  if (pantalla == 0) {
    image(imag0, 0, 0, width, height);
    textFont(fuente1);
    textSize(28);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(48);
    text("\n \n \n TRABAJO PRÁCTICO N°2\n \n El patito feo\n de Hans Christian Andersen", width/2, height/2 - 100);
    dibujarBoton("Iniciar");
    
  } else if (pantalla == 1) {
    if (contador > 0 && contador <= 150) {
      aparecer += 2.5;
    } else {
      aparecer -= 2.5;
    }
    textFont(fuente1);
    textSize(tamTexto);
    fill(colorTexto, aparecer);
    textAlign(CENTER, CENTER);
    text("El patito feo\n por Patricio Zozaya.", tamPantallaX/2, tamPantallaY/2);
    if (contador >= 300) {
      avanzarPantalla();
    }

  } else if (pantalla == 2) {
    image(imag1, 0, 0, width, height);
    textFont(fuente2);
    textSize(tamTextoDiapo);
    textAlign(CENTER, TOP);
    aparecer += 1.6;
    subir -= 0.9;
    if (subir <= 80) subir = 80;
    fill(0, aparecer);
    text("En una granja, nace un patito muy diferente a sus hermanos\ncon plumas grises y torpes movimientos que lo hacen objeto de burlas.", tamPantallaX/2, subir);
    if (contador >= 600) {
      avanzarPantalla();
    }

  } else if (pantalla == 3) {
    image(imag2, 0, 0, width, height);
    textFont(fuente3);
    textSize(tamTextoDiapo);
    textAlign(CENTER, BOTTOM);
    aparecer += 1.4;
    bajar += 0.9;
    if (bajar >= 400) bajar = 400;
    fill(0, aparecer);
    text("El invierno llega con dureza, y casi al borde \n  de la muerte,\n el patito es rescatado por un campesino\n que lo abriga en su hogar.", tamPantallaX/2, bajar);
    if (contador >= 700) {
      avanzarPantalla();
    }

  } else if (pantalla == 4) {
    image(imag3, 0, 0, width, height);
    textFont(fuente1);
    textSize(tamTextoDiapo + 5);
    textAlign(CENTER, CENTER);
    aparecer += 1.4;
    avanzar += 1.9;
    if (avanzar >= tamPantallaX/2) avanzar = tamPantallaX/2;
    fill(0, aparecer);
    text("El patito se ve solo en el lago,\nreflejado en el agua sin saber que ha cambiado.", avanzar, tamPantallaY/2);
    if (contador >= 1000) {
      avanzarPantalla();
    }

  } else if (pantalla == 5) {
    image(imag5, 0, 0, width, height);
    textFont(fuente2);
    textSize(tamTextoDiapo);
    textAlign(CENTER, CENTER);
    aparecer += 1.4;
    fill(0, aparecer);
    text("Finalmente se une a los cisnes,\ndescubriendo su verdadera belleza.", tamPantallaX/2, tamPantallaY);
    if (contador >= 1200) {
      avanzarPantalla();
    }

  } else if (pantalla == 6) {
    image(imag4, 0, 0, width, height);
    textFont(fuente1);
    textSize(24);
    fill(0);
    textAlign(CENTER, CENTER);
    text("FIN\nHaz clic para volver a comenzar", width/2, height - 60);
  }
}

void avanzarPantalla() {
  pantalla++;
  contador = 0;
  aparecer = 0;
  subir = tamPantallaY;
  bajar = 0;
  avanzar = -140;
}

void dibujarBoton(String texto) {
  stroke(colorBordeBoton);
  strokeWeight(tamBordeBoton);
  fill(colorBoton);
  rect(botonEnX1, botonEnY, tamBoton1, tamBoton2, puntas);
  fill(colorTextoBoton);
  textSize(tamTextoBoton);
  textAlign(CENTER, CENTER);
  text(texto, posTextoEnX1, posTextoEnY1);
}

void mousePressed() {
  if (mouseX > botonEnX1 && mouseX < botonEnX1 + tamBoton1 &&
      mouseY > botonEnY && mouseY < botonEnY + tamBoton2) {
    if (pantalla == 6) {
      pantalla = 0;
    } else {
      pantalla++;
    }
    contador = 0;
    aparecer = 0;
    subir = tamPantallaY;
    bajar = 0;
    avanzar = -140;
  }
}
