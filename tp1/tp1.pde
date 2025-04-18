PImage miImagen;

void setup(){
 size (800,400);
 miImagen = loadImage ("pintura.png");
}

void draw(){
 background (227,199,160); 
 fill (136,149,105,35);
 noStroke ();

// manchas verdes 1
beginShape();
curveVertex(520, 153); 
curveVertex(520, 153);
curveVertex(501, 108);
curveVertex(589, 54);
curveVertex(529, 15);
curveVertex(690, 0);
curveVertex(740, 69);
curveVertex(698, 123);
curveVertex(749, 172);
curveVertex(792, 81);
curveVertex(800, 172);
curveVertex(500, 176);
curveVertex(520, 153); 
curveVertex(520, 153); 
endShape();

// manchas verdes 2
beginShape();
curveVertex(476, 111); 
curveVertex(476, 111);
curveVertex(458, 76);
curveVertex(561, 84);
curveVertex(518, 20);
curveVertex(724, 32);
curveVertex(759, 91);
curveVertex(662, 127);
curveVertex(719, 200);
curveVertex(812, 102);
curveVertex(820, 216);
curveVertex(521, 141);
curveVertex(476, 111);
curveVertex(476, 111);
endShape();

//manchas verdes 3
beginShape();
curveVertex(509,158); 
curveVertex(493,104);
curveVertex(541,101);
curveVertex(558,53);
curveVertex(521,16);
curveVertex(552,15);
curveVertex(560,0);
curveVertex(630,0);
curveVertex(608,26);
curveVertex(640,67);
curveVertex(509,158); 
curveVertex(509,158);
endShape();

//textura pared
fill (218,219,206,90);
beginShape ();
vertex (400,109);
vertex (461,93);
vertex (400,67);
vertex (400,109);
vertex (400,109);
endShape();

fill (218,219,206,90);
beginShape ();
vertex (400,109-50);
vertex (461,93-50);
vertex (400,67-50);
vertex (400,109-50);
vertex (400,109-50);
endShape();

fill (218,219,206,200);
beginShape ();
vertex (800,109-55);
vertex (761,93-55);
vertex (800,67-55);
vertex (800,109-55);
vertex (800,109-55);
endShape();


// mesa
fill (100,88,72);
 rect (400,176,400,224);
  
  fill(170,135,80,200);
  rect (400,290,400,110);
 
  //triangulos marrones IZQ
 fill (150,90,80);
 beginShape();
  vertex (400,400);
  vertex (411,377);
  vertex (418,400);
   vertex (410,400);
  vertex (421,377);
  vertex (428,400);
   vertex (420,400);
  vertex (431,377);
  vertex (438,400);
  vertex (430,400);
  vertex (441,377);
  vertex (448,400);
  endShape();
  // triagulos marrones derecha 
 fill (170,120,80);
 beginShape();
  vertex (700,400);
  vertex (721,357);
  vertex (738,400);
   vertex (740,400);
  vertex (761,357);
  vertex (778,400);
   vertex (780,400);
  vertex (801,357);
 vertex (805,400);
  endShape();
 
 
 //sombras  plato y frutas
 fill (50);
 beginShape();
 vertex (400,292);
 vertex (444,297);
 vertex (584,197);
 vertex (400,200);
 vertex (400,312);
 vertex (400,312);
 endShape();

 beginShape();
 vertex (690,270);
 vertex (800,252);
 vertex (800,176);
 vertex (510,176);
 vertex (690,270);
 vertex (690,270);
 endShape();
 
 // mancha verde mesa
 fill (116,169,160,75);
 beginShape();
 vertex (400,337);
 vertex (626,345);
 vertex (800,288);
 vertex (800,189);
 vertex (470,209);
 endShape();
 
 //triangulo violeta
 fill (95,50,95,50);
 beginShape();
 vertex(500,321);
 vertex(513,340);
 vertex(539,328);
 vertex(582,368);
 vertex (651,322);
 vertex (688,343);
 vertex(697,315);
   vertex(620,306);
 vertex(500,321);
 vertex(500,321);
 endShape();
 
 fill (20,60,10,130);
 ellipse (682,328,25,32);
 
 //destello mesa
 fill (218,219,206,20);
 beginShape();
 vertex(400,400);
 vertex(440,330);
 vertex(535,399);
 vertex (400,400);
 vertex (400,400);
 endShape();
 
  fill (218,219,206,20);
   beginShape();
 vertex(495,329);
 vertex(593,325);
 vertex(705,400);
 vertex (572,399);
 vertex (495,329);
 vertex (495,329);
 endShape();
 
  fill (218,219,206,20);
   beginShape();
 vertex(704,300);
 vertex(763,400);
 vertex(800,387);
 vertex(704,300);
  vertex(704,300);
 endShape();

// las frutas verdes



//sombra
fill (119,142,84);
circle (457,181,100);

//base color
fill (150,202,73);
ellipse (450,179,83,80);

//brillo limon
fill (196,239,133,60);
circle (446,176,60);

//sombra
fill (119,142,84);
circle (433,213,100);

//base color
fill (150,202,73);
ellipse (430,202,80,78);

//brillo limon
fill (196,239,133,60);
circle (425,198,60);

//limon

//sombra
fill (170,130,60);
circle (420,250,90);
circle (460,243,30);

//color base
fill(250,190,0);
ellipse(416,255,75,76);
circle (420,247,80);
circle (461,241,24);

//brillo limon
fill (255,252,145,55);
circle (409,263,54);

fill (242);
  
 //  borde plato
 beginShape ();
 curveVertex (482,209);
 curveVertex (758,197);
  curveVertex (692,266);
  curveVertex (546,263);
  curveVertex (482,209);
  curveVertex (482,209);
 endShape (); 
// plato
ellipse (627,214,290,98);

//sombra de borde plato
fill(220);
beginShape ();
 curveVertex (522-400,248);
 curveVertex (989-400,258);
  curveVertex (1046-400,258);
  curveVertex (1081-400,256);
  curveVertex (1122-400,249);
  curveVertex (1082-400,269);
   curveVertex (1027-400,274);
 curveVertex (989-400,272);
  curveVertex (954-400,268);
  curveVertex (916-400,248);
   curveVertex (522,248);
    curveVertex (522,248);
 endShape (); 

//sombra plato
fill(200);
ellipse (610,226,170,55);
fill (190);
ellipse (610,226,170,37);


// manzanas

//sombra
fill(200,40,40);
circle(681,171,100);

//color base
fill(255,0,0);
circle(686,176,83);

//brillo manzana
fill (249,244,93,140);
circle (680,175,60);
 
//sombra
fill(200,40,40);
circle(561,179,100);
ellipse (558,140,63,35);

//color base
fill(255,0,0);
circle(560,181,80);
circle(558,160,55);

//brillo manzana
fill (249,244,93,140);
circle (552,181,60);

//sombra
fill(200,40,40);
circle(612,119,100);

//color base
fill(255,0,0);
circle(610,124,85);

//sombra
fill(200,40,40);
circle(593,200,100);



//color base
fill(255,0,0);
circle (590,198,89);

//sombra
fill (200,40,40);
circle (593,196,30);
circle(609,102,20);

//brillo manzana
fill (249,244,93,140);
circle (612,122,59);

//brillo manzana
fill (249,244,93,140);
circle (582,209,70);


// gajo de manzana
fill (250,190,110);
circle (520,225,30);
circle (535,230,30);

//brillo de gajo
fill (249,204,93);
ellipse (525,227,40,23);
circle (535,233,24);



// punto marron de manzanas

fill (100,88,72,190);
circle (605,103,20);
circle (597,195,23);

 beginShape ();
  curveVertex (558-10,137);
  curveVertex (569-10,144);
  curveVertex (571-10,142);
  curveVertex (580-10,132);
  curveVertex (569-10,129);
  curveVertex (558-10,137);
  curveVertex (558-10,137);
 endShape (); 








 
 
  
  
  image(miImagen,0,0,400,400);
  fill (20);
  textSize (30);
  text ((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
  
} 
