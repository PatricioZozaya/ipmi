PImage img;
int grilla = 152;
int inicioX, inicioY;
int cuadrado = 76;
float rotacionGlobal = 0;
int estadoAnimacion = 0;
float velocidadRotacion = 0.01;
color colorCuadrado = color(255, 255, 255);

//botón
boolean mostrarBoton = true;
int botonX = 340;
int botonY = 175;
int botonAncho = 120;
int botonAlto = 50;

void setup() {
  size(800, 400);
  img = loadImage("LeParc.png");
  inicioX = width / 2;
  inicioY = 0;
  imageMode(CORNER);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(0);
  image(img, 0, 0);

  rectMode(CORNER);
  for (int j = 0; j < 3; j++) {
    for (int i = 0; i < 3; i++) {
      int x = inicioX + i * grilla;
      int y = inicioY + j * grilla;
      dibujarMarco(x, y, grilla);
    }
  }

  pushMatrix();
  translate(628, 228); //centro de la espiral

  if (estadoAnimacion == 1) {
    rotacionGlobal += velocidadRotacion;
    rotate(rotacionGlobal);
  }

  for (int i = 0; i < 21; i++) {
    pushMatrix();

    float angulo = radians(i * 22.5);
    rotate(angulo);

    float d = i * 15;
    translate(-d * 0.718, d * 0.038);

    float alpha, tam;

    if (estadoAnimacion == 1) {
      alpha = map(sin(frameCount * 0.05 + i * 0.2), -1, 1, 90, 175);
      tam = cuadrado + sin(frameCount * 0.05 + i * 0.5) * 5;
    } else {
      alpha = 130;
      tam = cuadrado;
    }

    color c = color(red(colorCuadrado), green(colorCuadrado), blue(colorCuadrado), alpha);
    fill(c);
    stroke(c);
    strokeWeight(1);
    rect(0, 0, tam, tam);
    popMatrix();
  }
  popMatrix(); // Restaurar coordenadas

  // Dibuja el botón
  if (mostrarBoton) {
    dibujarBoton();
  }
}

void mousePressed() {
  if (mostrarBoton &&
      mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
    mostrarBoton = false;
  }
}

void keyPressed() {
  if (key == 'W' || key == 'w') {
    reiniciarValores();
  } else if (key == 'S' || key == 's') {
    colorCuadrado = generarColorAleatorio();
  } else if (key == 'D' || key == 'd') {
    estadoAnimacion = 1;
    velocidadRotacion += 0.01;
  } else if (key == 'A' || key == 'a') {
    estadoAnimacion = 1;
  }
}

void reiniciarValores() {
  grilla = 152;
  inicioX = width / 2;
  inicioY = 0;
  cuadrado = 76;
  rotacionGlobal = 0;
  estadoAnimacion = 0;
  velocidadRotacion = 0.01;
  colorCuadrado = color(255, 255, 255);

}

void dibujarMarco(int x, int y, int tam) {
  stroke(255, 70);
  fill(0);
  rect(x, y, tam, tam);
}

color generarColorAleatorio() {
  return color(random(255), random(255), random(255));
}

void dibujarBoton() {
  fill(255); 
  stroke(0);
  strokeWeight(2);
  rect(botonX, botonY, botonAncho, botonAlto, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("INICIAR", botonX + botonAncho / 2, botonY + botonAlto / 2);
}
