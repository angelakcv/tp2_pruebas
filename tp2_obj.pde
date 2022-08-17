import fisica.*;
FWorld mundo;
//FBox barra;
FRevoluteJoint revolute;
FPrismaticJoint prismatico;

void setup() {
  size(1000, 800);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  //img_hamster = loadImage("hamster.png");

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
  
}

void draw() {
  background(255);
  mundo.step();
  mundo.drawDebug();
}
