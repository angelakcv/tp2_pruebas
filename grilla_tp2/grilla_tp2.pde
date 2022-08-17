import fisica.*;
FWorld mundo;
PImage grilla;

void setup() {
  size(1600, 900);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));



  //img_hamster = loadImage("hamster.png");

  grilla = loadImage( "grilla.jpg");

  //Barra estática
  Plataforma base = new Plataforma(200, 40);
  base.inicializar (width/2, height/2);
  mundo.add(base/*.barra*/);

  //Barra que gira
  PlatGira pgira = new PlatGira(200, 40);
  pgira.inicializar(width/2, height/2+200);
  mundo.add(pgira.ancla);
  mundo.add(pgira.movimiento);
  mundo.add(pgira.revolute);

  //Bola demoledora / Wrecking ball
  BolaDemoler bolDem = new BolaDemoler(40, 40);
  bolDem.inicializar(width/2, 50);
  mundo.add(bolDem.eje);
  mundo.add(bolDem.bola);
  mundo.add(bolDem.cadena);

  //Barra que se mueve
  FBox barMov = new FBox (200, 40);
  //var px = 400 + 100 * Math.sin(counter);
  //barMov.setVelocity( px.position.x, 0);
  barMov.setVelocity(10, 5);
  barMov.adjustVelocity(20, 10);
  barMov.setPosition(width/2, height/2+100);
  barMov.setStatic(true);
  mundo.add(barMov);

  //Bola de boliche
  BolaBol bolaBol = new BolaBol(70);
  bolaBol.inicializar(width/2+100, height/2+150);
  mundo.add(bolaBol.bolaBol);

  //Plataforma rebote
  PlatRebo platRebo = new PlatRebo(200, 40);
  platRebo.inicializar(width/2+300, height/2+100);
  mundo.add(platRebo.platRebo);
}

void draw() {
  background(255);
  mundo.step();
  mundo.drawDebug();

println(mouseX, mouseY);

   //colorMode(255,70);
   image(grilla,0,0,800,800);
   image(grilla,width/2,0,800,800);
   
}
