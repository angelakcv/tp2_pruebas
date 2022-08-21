class Burbuja
{
  FCircle burbuja;

  Burbuja(float _r)
  {
    burbuja = new FCircle(_r);
  }

  void inicializar(float _x, float _y)
  {

    burbuja.setPosition(_x, _y);
    burbuja.setDensity(5);
    
  }
}

//Burbuja
 /* FCircle burbuja = new FCircle (70);
  burbuja.setPosition(width/2+100,height/2+150);
  //burbuja.setDensity(5);
  mundo.add(burbuja);
  */
