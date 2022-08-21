import fisica.*;
FWorld mundo;
PImage grilla;
FBody myBlob;

void setup() {
  size(1600, 900);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  //img_hamster = loadImage("hamster.png");

  grilla = loadImage( "grilla.jpg");

  //Personaje
  FCircle bolaBol = new FCircle (50);
   bolaBol.setPosition(80,96);
   bolaBol.setDensity(2);
   mundo.add(bolaBol);

  FBlob myBlob = new FBlob();
  myBlob.vertex(40, 10);
  myBlob.vertex(50, 20);
  myBlob.vertex(60, 30);
  myBlob.vertex(60, 40);
  myBlob.vertex(50, 50);
  myBlob.vertex(40, 60);
  myBlob.vertex(30, 70);
  myBlob.vertex(20, 60);
  myBlob.vertex(10, 50);
  myBlob.vertex(10, 40);
  myBlob.vertex(20, 30);
  myBlob.vertex(30, 20);
  myBlob.vertex(40, 10);
  myBlob.setPosition(80,96);
  myBlob.setDensity(5);
  mundo.add(myBlob);


  //-----------------------------------------------------------
  //Barra estática
  //Base 1 (1 - 11)
  Plataforma base1 = new Plataforma(150, 30);
  base1.inicializar (80, 145);
  mundo.add(base1/*.barra*/);

  //base 2 (1 - 31)
  Plataforma base2 = new Plataforma(150, 30);
  base2.inicializar (80, 465);
  mundo.add(base2/*.barra*/);

  //base 3 (10 - 310)
  /*Plataforma base3 = new Plataforma(150, 30);
  base3.inicializar (1507, 540);
  mundo.add(base3);*/

  //base 4 (6 7 - 46 47)
  Plataforma base4 = new Plataforma(150, 30);
  base4.inicializar (950, 560);
  mundo.add(base4/*.barra*/);

  //base 5 (4 5 - 44 45)
  Plataforma base5 = new Plataforma(150, 30);
  base5.inicializar (600, 560);
  mundo.add(base5/*.barra*/);

  //base 6 (9 - 39)
  Plataforma base6 = new Plataforma(150, 30);
  base6.inicializar (1350, 495);
  mundo.add(base6/*.barra*/);

   //base 7 (diagonal)
   Plataforma base7 = new Plataforma(150, 30);
   base7.inicializar (877, 97);
   base7.setRotation(10);
   mundo.add(base7);
   
   //base 8 (diagonal)
   Plataforma base8 = new Plataforma(150, 30);
   base8.inicializar (1120, 97);
   base8.setRotation(-10);
   mundo.add(base8);
   
  //-----------------------------------------------------------
  //Círculos estáticos
  //baseC 1 (6 - 46)
  Plat_Circular baseC1 = new Plat_Circular(30);
  baseC1.inicializar (730,320);
  mundo.add(baseC1/*.barra*/);

  //baseC 2 (6 - 46)
  Plat_Circular baseC2 = new Plat_Circular(60);
  baseC2.inicializar (510, 400);
  mundo.add(baseC2/*.barra*/);

  //baseC 3 (para catapulta)
  Plat_Circular baseC3 = new Plat_Circular(30);
  baseC3.inicializar (1180, 687);
  mundo.add(baseC3);

  //-----------------------------------------------------------
  //Barra que gira
  //Base 1 (3 - 23)
  PlatGira pgira1 = new PlatGira(200, 30);
  pgira1.inicializar(400, 275);
  mundo.add(pgira1.ancla);
  mundo.add(pgira1.movimiento);
  mundo.add(pgira1.revolute);

  //Base 2 (6- 26)
  PlatGira pgira2 = new PlatGira(150, 30);
  pgira2.inicializar(880, 240);
  mundo.add(pgira2.ancla);
  mundo.add(pgira2.movimiento);
  mundo.add(pgira2.revolute);

  //Base 3 (7 - 27)
  PlatGira pgira3 = new PlatGira(150, 30);
  pgira3.inicializar(1045, 240);
  mundo.add(pgira3.ancla);
  mundo.add(pgira3.movimiento);
  mundo.add(pgira3.revolute);

  //Base 4 (8 9 - 58 59)
  PlatGira pgira4 = new PlatGira(250, 30);
  pgira4.inicializar(1290, 655);
  mundo.add(pgira4.ancla);
  mundo.add(pgira4.movimiento);
  mundo.add(pgira4.revolute);

  //-----------------------------------------------------------
  //Bola demoledora / Wrecking ball
  BolaDemoler bolDem = new BolaDemoler(40, 40);
  bolDem.inicializar(880, 358);
  mundo.add(bolDem.eje);
  mundo.add(bolDem.bola);
  mundo.add(bolDem.cadena);

  /*//-----------------------------------------------------------
   //Barra que se mueve
   FBox barMov = new FBox (200, 40);
   //var px = 400 + 100 * Math.sin(counter);
   //barMov.setVelocity( px.position.x, 0);
   barMov.setVelocity(10, 5);
   barMov.adjustVelocity(20, 10);
   barMov.setPosition(width/2, height/2+100);
   barMov.setStatic(true);
   mundo.add(barMov);*/

  //-----------------------------------------------------------
  //Bola de boliche
  //bolBol 1 (1 - 31)
  BolaBol bolaBol1 = new BolaBol(70);
  bolaBol1.inicializar(80, 410);
  mundo.add(bolaBol1.bolaBol);

  //bolBol 2 (9 - 39)
  BolaBol bolaBol2 = new BolaBol(70);
  bolaBol2.inicializar(1350, 444);
  mundo.add(bolaBol2.bolaBol);

  //-----------------------------------------------------------
  //Plataforma rebote
  PlatRebo platRebo = new PlatRebo(160, 40);
  platRebo.inicializar(83, 747);
  mundo.add(platRebo.platRebo);

  PlatRebo platRebo1 = new PlatRebo(160, 40);
  platRebo1.inicializar(368, 747);
  mundo.add(platRebo1.platRebo);

  PlatRebo platRebo2 = new PlatRebo(160, 40);
  platRebo2.inicializar(655, 747);
  mundo.add(platRebo2.platRebo);

  PlatRebo platRebo3 = new PlatRebo(160, 40);
  platRebo3.inicializar(945, 747);
  mundo.add(platRebo3.platRebo);

  PlatRebo platRebo4 = new PlatRebo(160, 40);
  platRebo4.inicializar(1231, 747);
  mundo.add(platRebo4.platRebo);

  PlatRebo platRebo5 = new PlatRebo(160, 40);
  platRebo5.inicializar(1517, 747);
  mundo.add(platRebo5.platRebo);
  
  //-------------------------------
  //Burbuja
  FCircle burbuja = new FCircle (70);
  burbuja.setPosition(598,614);
  //burbuja.setGravity(0,0);
  //burbuja.setDensity(5);
  burbuja.setStatic(true);
  mundo.add(burbuja);
  
}

void draw() {
  background(255);
  /*image(grilla, 0, 0, 800, 800);
  image(grilla, width/2, 0, 800, 800);*/

  //botón
  noStroke();
  fill(117,166,234);
  rect(45, 710, 70, 30, 17);
  
  //Semilla
  noStroke();
  fill(234,221,117);
  ellipse(450, 225, 25, 50);
  ellipse(950, 510, 25, 50);
  ellipse(1350, 370, 25, 50);
  
  //Line
  stroke(10);
  line(0,height-100,width,height-100);
  
  //Contador
  stroke(1);
  fill(234,221,117);
  ellipse(50, height-50, 25, 50);
  ellipse(90, height-50, 25, 50);
  fill(255);
  ellipse(130, height-50, 25, 50);
  
  //Text
  /*textSize(70);
  text("Ventilador", 20, height-50);*/

  mundo.step();
  mundo.drawDebug();

  println(mouseX, mouseY);
}
