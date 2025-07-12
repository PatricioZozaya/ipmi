// link de video a youtube: https://youtu.be/0nINVzwKMuI
PImage img;
int grilla = 152;
int inicioX, inicioY;
int cuadrado = 76;
float rotacionGlobal = 0;
int estadoAnimacion = 0;
float velocidadRotacion = 0.01;
color colorCuadrado = color(0, 0, 0);  // Blanco en HSB con colorMode(HSB, 800,400,800,255)

void setup() {
  size(800, 400);
  img = loadImage("LeParc.png");
  inicioX = width / 2;
  inicioY = 0;
  imageMode(CORNER);
  rectMode(CENTER);
  noStroke();
  colorMode(HSB, 800, 400, 800, 255);
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
  
  // Verifico si el mouse está dentro de la mitad derecha
  boolean dentroDerecha = mouseX > 400 && mouseX < 800 && mouseY >= 0 && mouseY <= 400;

  if (dentroDerecha) {
    estadoAnimacion = 1;
    velocidadRotacion = map(mouseY, 0, 400, 0.03, 0.01);
  } else {
    reiniciarValores();
  }

  pushMatrix();
  translate(628, 228);

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

    color c = color(hue(colorCuadrado), saturation(colorCuadrado), brightness(colorCuadrado), alpha);
    fill(c);
    stroke(c);
    strokeWeight(1);
    rect(0, 0, tam, tam);
    popMatrix();
  }
  popMatrix();
}

void dibujarMarco(int x, int y, int tam) {
  strokeWeight(2);
  stroke(255, 120);
  fill(0);
  rect(x, y, tam, tam);
}

void mousePressed() {
  if (mouseX > 400 && mouseX < 800 && mouseY >= 0 && mouseY <= 400) {
    float h = mouseX;
    float s = mouseY;
    float b = mouseX;
    colorCuadrado = color(h, s, b);
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
  colorCuadrado = color(0, 0, 800);  // Blanco en HSB
}
