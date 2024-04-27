PImage imagen;

void setup(){
  size(800,400);
  imagen = loadImage ("data/taylor swift 3.png");
}

void draw(){
  background(255);
  image(imagen,0,0,400,400);
  
 //alumno: Uma Lara Feoli
 //legajo: 119020/6
  
//linea division foto-dibujo
  pushStyle();
  strokeWeight(3);
  line(400,0,400,400);
  popStyle();
  
//COLOR-FORMA pelo (parte de atras)
  pushStyle();
  noStroke();
  fill(210,151,106);
  rect(504,95,190,200);
  beginShape();
  vertex(504,95);
  vertex(570,52);
  vertex(628,52);
  vertex(694,95);
  endShape();
  popStyle();
  
  //sombra pelo 1
  pushStyle();
  noStroke();
  fill(201,129,75);
  rect(558,204,10,100);
  rect(633,204,10,100);
  popStyle();

//COLOR-FORMA cuerpo
  pushStyle();
  noStroke();
  fill(231,198,177);
  rect(563,211,73,62);
  rect(442,273,316,200);
  popStyle();
  
  //sombra piel
  pushStyle();
  noStroke();
  fill(223,180,151);
  rect(563,211,73,35);
  popStyle();
  
//cuerpo contorno
  pushStyle();
  strokeWeight(2);
  stroke(208,148,111);
  line(636,273,758,273);
  line(758,273,758,322);
  line(563,212,563,273);
  line(636,212,635,273);
  popStyle();
  
//remera
  pushStyle();
  beginShape();
  noStroke();
  fill(252,251,246);
  vertex(563,273);
  vertex(442,273);
  vertex(442,399);
  vertex(758,399);
  vertex(758,322);
  endShape();
  popStyle();
  
  pushStyle();
  strokeWeight(2);
  line(563,273,758,322);
  line(442,273,442,399);
  line(442,273,563,273);
  line(758,322,758,399);
  popStyle();
  
  //sombra remera
  pushStyle();
  noStroke();
  fill(241,237,216);
  rect(444,370,313,100);
  popStyle();

  //rayas remera
  pushStyle();
  beginShape();
  noStroke();
  fill(0);
  vertex(516,273);
  vertex(758,347);
  vertex(758,388);
  vertex(442,289);
  vertex(442,273);
  endShape();
  beginShape();
  vertex(442,344);
  vertex(590,400);
  vertex(480,400);
  vertex(442,386);
  endShape();
  popStyle();
  line(516,273,758,347);
  line(442,289,758,388);
  line(442,343,589,399);
  line(442,386,479,399);

  //detelles remera
  line(560,272,560,399);
  line(583,278,583,399);
  line(608,284,608,399);
  line(633,290,633,399);
  line(701,308,701,399);
  line(734,316,734,399);
  line(665,351,665,399);
  line(532,313,532,399);
  line(480,302,480,399);
  line(455,292,455,399);
  line(507,306,507,399);
  
//COLOR mechones
  pushStyle();
  noStroke();
  fill(210,151,106);
  rect(509,265,49,77);
  rect(643,265,49,120);
  popStyle();

  //sombra pelo 2
  pushStyle();
  noStroke();
  fill(201,129,75);
  rect(542,195,16,148);
  rect(642,195,16,188);
  popStyle();
  
  //brillo pèlo
  pushStyle();
  noStroke();
  fill(220,172,137);
  rect(504,95,5,177);
  rect(690,95,5,177);
  popStyle();
  
  pushStyle();
  stroke(220,172,137);
  strokeWeight(3);
  line(571,53,507,96);
  line(628,54,691,96);
  popStyle();

//orejas
  pushStyle();
  strokeWeight(2);
  stroke(208,148,111);
  fill(223,180,151);
  ellipse(544,165,30,35);
  ellipse(655,165,30,35);
  popStyle();
  
//aros
  pushStyle();
  strokeWeight(2);
  stroke(115,115,115);
  fill(176,176,176);
  ellipse(655,187,20,20);
  ellipse(655,243,12,12);
  ellipse(544,187,20,20);
  ellipse(544,243,12,12);
  popStyle();
   
  pushStyle();
  strokeWeight(3);
  stroke(115,115,115);
  line(544,197,544,236);
  line(655,197,655,236);
  popStyle();
  
  pushStyle();
  strokeWeight(2);
  stroke(115,115,115);
  line(533,204,555,204);
  line(535,212,553,212);
  line(537,220,551,220);
  line(539,228,549,228);
  line(646,204,666,204);
  line(647,212,664,212);
  line(649,220,662,220);
  line(650,228,660,228);
  
  line(544,249,544,256);
  line(540,249,537,254);
  line(548,249,552,254);
  line(655,249,655,256);
  line(650,249,647,254);
  line(660,248,664,254);
  
  popStyle();

//COLOR cabeza
  pushStyle();
  noStroke();
  fill(231,198,177);
  beginShape();
  vertex(600,88);
  vertex(585,128);
  vertex(539,143);
  vertex(545,196);
  vertex(580,226);
  vertex(620,226);
  vertex(654,196);
  vertex(661,143);
  vertex(615,128);
  vertex(600,88);
  endShape();
  popStyle();
  
  //detalle cabeza (mejillas)
  pushStyle();
  noStroke();
  fill(224,163,156);
  ellipse(555,165,20,10);
  ellipse(645,165,20,10);
  popStyle();
  
//cabeza contorno
  pushStyle();
  strokeWeight(2);
  stroke(208,148,111);
  line(538,142,545,196);
  line(545,196,580,227);
  line(580,227,619,227);
  line(661,142,654,196);
  line(654,195,619,227);
  popStyle();
  
//COLOR boca
  pushStyle();
  noStroke();
  fill(224,163,156);
  beginShape();
  vertex(581,197);
  vertex(591,208);
  vertex(611,208);
  vertex(620,197);
  vertex(609,191);
  vertex(600,195);
  vertex(592,191);
  endShape();
  popStyle();
  
//boca contorno
  pushStyle();
  strokeWeight(2);
  stroke(207,112,101);
  line(580,197,592,191);
  line(592,191,600,194);
  line(600,194,609,191);
  line(609,191,620,197);
  line(580,197,591,208);
  line(591,208,610,208);
  line(610,208,620,197);
  line(580,198,600,201);
  line(600,201,620,198);
  popStyle();
  
//flequillo contorno
  pushStyle();
  stroke(164,89,53);
  strokeWeight(2);
  line(600,85,584,128);
  line(584,128,538,142);
  line(600,85,615,128);
  line(615,128,661,142);
  
//pelo contortno
  line(570,52,628,52);
  line(628,52,694,95);
  line(694,95,694,273);
  line(570,52,504,95);
  line(504,95,504,273);
  
//mechones contorno
  line(509,272,509,342);
  line(509,342,557,342);
  line(557,342,557,273);
  line(642,273,642,383);
  line(642,383,690,383);
  line(690,383,690,273);
  popStyle();

//sombra de ojos
  pushStyle();
  noStroke();
  fill(112,112,112);
  ellipse(569,147,30,20);
  ellipse(628,147,30,20);
  popStyle();

//ojos
  pushStyle();
  fill(252,251,246);
  strokeWeight(2);
  ellipse(569,150,30,20);
  ellipse(628,150,30,20);
  popStyle();
  
  //pestañas
  line(569,160,569,165);
  line(562,160,559,163);
  line(576,160,579,163);
  line(628,160,628,165);
  line(620,160,617,163);
  line(637,158,641,163);
  
  //iris y pupila
  pushStyle();
  stroke(98,122,142);
  fill(123,146,164);
  ellipse(569,150,19,17);
  ellipse(628,150,19,17);
  popStyle();
  
  pushStyle();
  fill(0);
  ellipse(569,149,10,10);
  ellipse(628,149,10,10);
  popStyle();
  
  //brillo ojos
  pushStyle();
  noStroke();
  fill(252,251,246);
  ellipse(565,147,7,4);
  ellipse(624,147,7,4);
  popStyle();
  
//nariz
  pushStyle();
  strokeWeight(2);
  stroke(208,148,111);
  fill(224,184,156);
  ellipse(600,173,15,10);
  popStyle();

}
